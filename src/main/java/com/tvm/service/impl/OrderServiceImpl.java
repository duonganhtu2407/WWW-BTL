package com.tvm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.tvm.dto.OrderDto;
import com.tvm.model.Order;
import com.tvm.model.ProductOrder;
import com.tvm.repository.OrderRepo;
import com.tvm.repository.ProductOrderRepo;
import com.tvm.service.OrderService;
import com.tvm.utils.Constant;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderRepo orderRepo;
    @Autowired
    ProductOrderRepo productOrderRepo;

    @Override
    public OrderDto saveOderService(OrderDto orderDto) {
        // TODO Auto-generated method stub
        Order order = orderDto.convertToEntities();
        order.setCreatedAt(new Date());
        order.setUpdatedAt(new Date());
        order = orderRepo.insert(order);
        orderDto = order.convertToDto();
        orderDto.setMessage("insert_success");
        return orderDto;
    }

    @Override
    public Object[] viewPageOrderService(int offset, int limit) {
        // TODO Auto-generated method stub
        List<OrderDto> orderDtos = new ArrayList<OrderDto>();
        Object[] objects = orderRepo.findByProperty(null, "updated_at", Constant.DESC, offset, limit, null);
        Long total = (Long) objects[0];
        List<Order> listEntity = (List<Order>) objects[1];
        for (Order order : listEntity) {
            orderDtos.add(order.convertToDto());
        }
        return new Object[]{total, orderDtos};
    }

    @Override
    public OrderDto findByIdOrderService(Integer idOrder) {
        // TODO Auto-generated method stub
        OrderDto orderDto = null;
        try {
            Order order = orderRepo.findById(idOrder);
            orderDto = order.convertToDto();
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println(e.getMessage());
        }
        return orderDto;
    }

    @Override
    public Object[] viewPageOrderServiceByStatus(int offset, int limit, Boolean status) {
        // TODO Auto-generated method stub
        List<OrderDto> orderDtos = new ArrayList<OrderDto>();
        Map<String, Object> property = new HashMap<String, Object>();
        property.put("status", status);
        Object[] objects = orderRepo.findByProperty(property, "updated_at", Constant.DESC, offset, limit, null);
        Long total = (Long) objects[0];
        List<Order> listEntity = (List<Order>) objects[1];
        for (Order order : listEntity) {
            orderDtos.add(order.convertToDto());
        }
        return new Object[]{total, orderDtos};
    }

    @Override
    public Boolean updateOrderByStatus(Boolean status, int idOrder) {
        // TODO Auto-generated method stub
        Order order = orderRepo.findById(idOrder);
        order.setStatus(status);
        if (order != null) {
            orderRepo.update(order);
            return true;
        }
        return false;

    }

    @Override
    public Boolean deleteOrderService(int idOrder) {
        // TODO Auto-generated method stub
        Map<String, Object> property = new HashMap<String, Object>();
        property.put("odder_id", idOrder);
        Object[] objects = productOrderRepo.findByProperty(property, null, null, null, null, null);
        for (ProductOrder productOrder : (List<ProductOrder>) objects[1]) {
            productOrderRepo.deleteProductOrder(productOrder);
        }
        return orderRepo.delete(idOrder);
    }

    @Override
    public List<String[]> thongKeBanHang(String tungay, String denngay) {
        // TODO Auto-generated method stub
        return orderRepo.thongKeBanHang(tungay, denngay);
    }


}

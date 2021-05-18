package com.tvm.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tvm.dto.ProductOrderDto;
import com.tvm.model.ProductOrder;
import com.tvm.repository.ProductOrderRepo;
import com.tvm.service.ProductOrderService;

@Service
public class ProductOrderServiceImpl implements ProductOrderService {
    @Autowired
    ProductOrderRepo productOrderRepo;

    @Override
    public void saveProductOderService(ProductOrderDto productOrderDto) {
        // TODO Auto-generated method stub
        ProductOrder productOrder = productOrderDto.convertToEntitiy();

        productOrderRepo.insert(productOrder);

    }

    @Override
    public List<ProductOrderDto> getListProductOrderDtoByOrder(Integer idOrder) {
        // TODO Auto-generated method stub
        List<ProductOrderDto> productOrderDtos = new ArrayList<ProductOrderDto>();

        Map<String, Object> property = new HashMap<String, Object>();
        property.put("odder_id", idOrder);

        List<ProductOrder> productOrders = (List<ProductOrder>) (productOrderRepo.findByProperty(property, null, null, null, null, null)[1]);
        for (ProductOrder entity : productOrders) {
            productOrderDtos.add(entity.convertToDto());
        }
        return productOrderDtos;
    }

}

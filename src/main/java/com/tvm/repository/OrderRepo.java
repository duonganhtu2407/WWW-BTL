package com.tvm.repository;

import java.util.List;

import com.tvm.model.Order;

public interface OrderRepo extends AbstractRepo<Integer, Order> {
    List<String[]> thongKeBanHang(String tuNgay, String denNgay);
}

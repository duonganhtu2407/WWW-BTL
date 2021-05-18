package com.tvm.service;

import java.util.List;

import com.tvm.dto.ProductOrderDto;

public interface ProductOrderService {
    void saveProductOderService(ProductOrderDto productOrderDto);

    List<ProductOrderDto> getListProductOrderDtoByOrder(Integer idOrder);
}

package com.tvm.repository;

import com.tvm.model.ProductOrder;

public interface ProductOrderRepo extends AbstractRepo<Integer, ProductOrder> {
    boolean deleteProductOrder(ProductOrder productOrder);
}

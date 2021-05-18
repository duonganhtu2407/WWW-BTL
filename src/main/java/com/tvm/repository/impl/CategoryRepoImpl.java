package com.tvm.repository.impl;

import org.springframework.stereotype.Repository;

import com.tvm.model.Category;
import com.tvm.repository.CategoryRepo;

@Repository
public class CategoryRepoImpl extends AbstractRepoImpl<Integer, Category> implements CategoryRepo {

}

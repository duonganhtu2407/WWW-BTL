package com.tvm.service;

import java.util.List;

import com.tvm.dto.CategoryDto;

public interface CategoryService {
    List<CategoryDto> viewAllService();

    CategoryDto saveCategoryService(CategoryDto categoryDto);

    String deleteCategoryService(Integer id);

    Object[] viewPageCategoryService(int offset, int limit);

    CategoryDto findByIdCategoryService(Integer id);

    Object[] findFilterCategoryService(String[] filter);
}

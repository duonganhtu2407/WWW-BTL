package com.tvm.service;

import java.util.List;

import com.tvm.dto.RoleDto;

public interface RoleService {
    List<RoleDto> getListRoleService();

    RoleDto getRoleById(int id);
}

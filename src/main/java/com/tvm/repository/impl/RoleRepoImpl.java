package com.tvm.repository.impl;

import org.springframework.stereotype.Repository;

import com.tvm.model.Role;
import com.tvm.repository.RoleRepo;

@Repository
public class RoleRepoImpl extends AbstractRepoImpl<Integer, Role> implements RoleRepo {

}

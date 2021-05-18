package com.tvm.repository.impl;

import org.springframework.stereotype.Repository;

import com.tvm.model.User;
import com.tvm.repository.UserRepo;

@Repository
public class UserRepoImpl extends AbstractRepoImpl<Integer, User> implements UserRepo {

}

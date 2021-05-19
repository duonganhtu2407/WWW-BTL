package com.tvm.dto;

import com.tvm.model.User;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.tvm.model.Role;

public class UserDto extends AbtractDto<UserDto> {

    @NotBlank(message = "Họ tên bắt buộc")
    private String fullName;

    @Pattern(regexp = "\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b",
            message = "Email không hợp lệ")
    private String email;

    @Pattern(regexp = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$",
            message = "Số điện thoại không hợp lệ! (Số điện thoại có 10 hoặc 11 chữ số)")
    private String phone;

    @NotBlank(message = "Tên tài khoản bắt buộc")
    private String account;

    @Size(min = 6, message = "Mật khẩu phải nhiều hơn 6 kí tự")
    private String password;

    private int roleId;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public User convertToEntities() {
        User entity = new User();
        entity.setId(getId());
        entity.setFullName(getFullName());
        entity.setEmail(getEmail());
        entity.setPhone(getPhone());
        entity.setAccount(getAccount());
        entity.setPassword(getPassword());
        Role role = new Role();
        role.setId(getRoleId());
        entity.setRole(role);
        return entity;
    }

}

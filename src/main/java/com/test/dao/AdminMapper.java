package com.test.dao;

import com.test.pojo.Admin;

import java.util.List;

/**
 * Created by Administrator on 2018/10/5.
 */
public interface AdminMapper {

//    User selectUser(long id);
//
//    List<User> selectAllUser();
//
//    User selectUserByEmail(String email);
//
//    User addUser(User user);
//
//    User removeUser(long id);
//
//    User modifyUser(User user);

    void save(Admin admin);
    boolean update(Admin admin);
    boolean delete(int id);
    Admin findById(int id);
    List<Admin> findAll();
    Admin login(Admin admin);
}


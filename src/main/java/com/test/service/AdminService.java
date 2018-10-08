package com.test.service;

import com.test.dao.AdminMapper;
import com.test.pojo.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2018/10/5.
 */
@Service("AdminService")

public class AdminService {
    @Resource
    private AdminMapper adminMapper;
    /**
     * 添加数据
     */
    public void save(Admin admin) {
        adminMapper.save(admin);
    }

    /**
     * 根据id修改
     * @param admin
     * @return
     */
    public boolean update(Admin admin) {
        return adminMapper.update(admin);
    }

    /**
     * 根据id删除
     * @param id
     * @return
     */
    public boolean delete(int id) {
        return adminMapper.delete(id);
    }

    /**
     * 根据id查询
     * @param id
     * @return
     */
    public Admin findById(int id) {
        Admin admin=adminMapper.findById(id);
        return admin;
    }

    /**
     * 查询所有
     * @return
     */
    public List<Admin> findAll() {
        List<Admin> findallList=adminMapper.findAll();
        return findallList;
    }

    /**
     * 登录账号
     */
    public Admin login(Admin admin){
        return adminMapper.login(admin);
    }
}

package com.movielike.app.dao;

import com.movielike.app.domain.MyListDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyListDao {
    @Autowired
    SqlSession session;

    String namespace="com.movielike.app.dao.myListMapper.";

    public List<MyListDto> myList(MyListDto myListDto) {
        return session.selectList(namespace + "selectMyList", myListDto);
    }
}

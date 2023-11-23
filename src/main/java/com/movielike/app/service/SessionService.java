package com.movielike.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class SessionService {
    @Autowired
    HttpSession httpSession;

    public int getLoginId() {
        /*
        로그인 후에 세션에 데이터를 저장
        loginId , login_name, login_nickname
         */
        // todo:: session값이 없으면 오류처리에 대한 로직이 필요해요
        return (int) httpSession.getAttribute("loginId");
    }
}

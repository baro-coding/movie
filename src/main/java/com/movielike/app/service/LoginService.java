package com.movielike.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public class LoginService {
    private static final String LOGIN_SESSION_ID = "loginId";

    @Autowired
    HttpSession httpSession;


    public int loginProc() {
        // db 로그인 id/pw 조회후에 성공이면
        // session 값을 저장
        httpSession.setAttribute(LOGIN_SESSION_ID, 1);

        // 실패면 로그인 실패 return
        return 0;
    }


}

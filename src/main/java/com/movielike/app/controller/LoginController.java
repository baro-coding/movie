package com.movielike.app.controller;

import com.movielike.app.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
    @Autowired
    LoginService loginService;

    @PostMapping("/loginProd")
    public String loginProc(){

        loginService.loginProc();
        return "index";
    }

}

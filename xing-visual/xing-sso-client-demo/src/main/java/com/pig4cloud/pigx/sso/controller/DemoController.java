package com.pig4cloud.pigx.sso.controller;

import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * demo controller
 *
 * @author weixing
 * @date 2018/12/21 15:31
 */
@RestController
public class DemoController {
    @GetMapping("/user")
    public Authentication user(Authentication authentication) {
        return authentication;
    }
}

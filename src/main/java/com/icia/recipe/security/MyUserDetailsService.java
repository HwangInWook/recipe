package com.icia.recipe.security;

import com.icia.recipe.home.dao.MemberDao;
import com.icia.recipe.home.dto.Member;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

@Component
@Slf4j
public class MyUserDetailsService implements UserDetailsService {
    @Autowired
    private MemberDao memberDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Member mb=memberDao.getMemberInfo(username);
        log.info("=======member:"+mb);
        if(mb==null){
            //로그인 실패시 예외를 로그인 실패 핸들러에 던짐
            throw new UsernameNotFoundException(username+" 사용자를 찾을 수 없습니다.");
        }
        //User클래스: UserDetails의 구현체
        //필수:아이디,비밀번호, 권한, 선택: disabled(t/f(로그인안됨)), accountLocked(t/f(로그인안됨)),accountExpired(t/f)
        return User.builder().username(mb.getM_id()).password(mb.getM_pw()).roles(mb.getRole()).build();
    }
}

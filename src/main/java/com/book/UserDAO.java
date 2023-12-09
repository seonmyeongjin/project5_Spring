package com.book;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
    @Autowired
    SqlSessionTemplate sqlSession;
    public UserVO getUser(UserVO vo) {
        //UserVO userVO = sqlSession.selectOne("member.getUser", vo);

        return sqlSession.selectOne("user.getUser", vo);
    }
}

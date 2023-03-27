package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class USERDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 회원가입
	public int insertUser(TB_USER joinUser) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("insertUser", joinUser);
			
			if (cnt > 0) {
				System.out.println("DAO에서는 회원가입 성공!");
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return cnt;
	}

	// 로그인
	public TB_USER selectUser(TB_USER login) {
		TB_USER loginUser = null;
		
		try {
			loginUser = sqlSession.selectOne("selectUser", login);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return loginUser;
	}
	
	
	// 로그아웃
	public int deleteUser(String id) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.delete("deleteUser", id);
			
			if (cnt > 0) {
				System.out.println("회원삭제성공");
				sqlSession.commit();
			} else {
				System.out.println("회원삭제싶래");
				sqlSession.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	
	
	// 회원정보수정
	public int updateUser(TB_USER update) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.update("updateUser", update);
			
			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return cnt;
	}
}

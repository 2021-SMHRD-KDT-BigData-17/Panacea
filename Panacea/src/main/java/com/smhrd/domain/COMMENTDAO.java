package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class COMMENTDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 댓글 작성
	public int insertComment(TB_COMMENT insert) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("insertComment", insert);
			
			if (cnt > 0) {
				System.out.println("Success write comment in DAO");
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
	
	// 댓글 수정
	public int updateComment(TB_COMMENT update) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.update("updateComment", update);
			
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
	
	
	// 댓글 삭제
	public int deleteComment(String id) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.delete("deleteComment", id);
			
			if (cnt > 0) {
				System.out.println("Success delete comment");
				sqlSession.commit();
			} else {
				System.out.println("Failed delete comment");
				sqlSession.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	
	
	// 좋아요
	
	
	// 싫어요
}

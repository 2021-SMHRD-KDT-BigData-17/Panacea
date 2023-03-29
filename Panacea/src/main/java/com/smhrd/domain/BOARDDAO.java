package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BOARDDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 게시글 작성
	public int insertBoard(TB_BOARD insert) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("insrtBoard", insert);
			
			if (cnt > 0) {
				System.out.println("DAO 게시글 작성 성공!");
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
	
	// 전체 게시글 조회
	public List<TB_BOARD> selectAllBoard(TB_BOARD selectAll) {
		
		List<TB_BOARD> boardList = null;
		
		try {
			boardList = sqlSession.selectList("selectAllBoard", selectAll);
		   } catch(Exception e) {
			   e.printStackTrace();
		   } finally {
			   sqlSession.close();
		   }
		   
		   return boardList;
	}
	
	// 한개의 게시글 조회
	public int selectOneBoard(TB_BOARD selectOne) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.selectOne("selectOneBoard", selectOne);
			
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
	
	// 게시글 수정
	public int updateBoard(TB_BOARD update) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.update("updateBoard", update);
			
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
	
	// 게시글 삭제
	public int deleteBoard(String id) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.delete("deleteBoard", id);
			
			if (cnt > 0) {
				System.out.println("게시글 삭제 성공");
				sqlSession.commit();
			} else {
				System.out.println("게시글 삭제 실패");
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

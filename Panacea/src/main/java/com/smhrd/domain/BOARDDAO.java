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
			cnt = sqlSession.insert("insertBoard", insert);
			
			if (cnt > 0) {
				System.out.println("Success write board in DAO");
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
	public int selectBoardById(TB_BOARD selectOne) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.selectOne("selectBoardById", selectOne);
			
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
				System.out.println("Success delete board");
				sqlSession.commit();
			} else {
				System.out.println("Failed delete board");
				sqlSession.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return cnt;
	}
	
	// 조회수
	public void updateView(String param) throws Exception {
	    sqlSession.update("updateView", param);
	}
}

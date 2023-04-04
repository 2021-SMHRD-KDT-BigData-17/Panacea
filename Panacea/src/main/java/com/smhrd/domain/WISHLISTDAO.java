package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class WISHLISTDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 찜 목록
	public int insertWish(String id, String seq) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("insertWish", id);
			
			if (cnt > 0) {
				System.out.println("Success wishList in DAO");
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
	
	// 찜 등록
	public List<TB_WISHLIST> selectAllWish(String id) {
		
		List<TB_WISHLIST> wishList = null;
		
		try {
			wishList = sqlSession.selectList("selectAllWish", id);
		   } catch(Exception e) {
			   e.printStackTrace();
		   } finally {
			   sqlSession.close();
		   }
		   
		   return wishList;
	}
	
	// 찜 삭제
	public int deleteWish(String id, String seq) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.delete("deleteWish", id);
			
			if (cnt > 0) {
				System.out.println("Success delete wishList");
				sqlSession.commit();
			} else {
				System.out.println("Failed delete wishList");
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

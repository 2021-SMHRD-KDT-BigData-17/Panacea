package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;


public class listdao {
	
	public List<TB_BOARD> Selectbo() {
	      List<TB_BOARD> cnt = null;
	      
	     SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	  	 SqlSession sqlSession = sqlSessionFactory.openSession();
	      
	      try {
	         cnt = sqlSession.selectList("com.smhrd.domain.TB_BOARD.selectAllBoard");
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         sqlSession.close();
	      }
	      return cnt;

	   }


	
}

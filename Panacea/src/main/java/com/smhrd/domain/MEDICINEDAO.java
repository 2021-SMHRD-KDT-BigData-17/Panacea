package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MEDICINEDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 약 정보 등록
	public int insertMedicine(TB_MEDICINE insert) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("insertMedicine", insert);
			
			if (cnt > 0) {
				System.out.println("Success write medicine in DAO");
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
	
	// 약 정보 수정
	public int updateMedicine(TB_MEDICINE update) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("updateMedicine", update);
			
			if (cnt > 0) {
				System.out.println("Success update medicine in DAO");
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
	
	// 약 정보 불어오기 (all)
	public List<TB_MEDICINE> selectAllMedicine() {
		
		List<TB_MEDICINE> medicineList = null;
		
		try {
			medicineList = sqlSession.selectList("selectAllMedicine");
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return medicineList;
	}
	
	// 약 정보 한개 불러오기
	public int selectMedicineById(BigDecimal seq) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.selectOne("selectMedicineById", seq);
			
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
	
	// 약 정보 삭제
	public int deleteMedicine(int seq) {
		int cnt = 0;
		
		try {
			cnt = sqlSession.delete("deleteMedicine", seq);
			
			if (cnt > 0) {
				System.out.println("Success delete medicine");
				sqlSession.commit();
			} else {
				System.out.println("Failed delete medicine");
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

package com.lg.t2.roaster;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class RoasterDAO {
	
	//roasterDTO의 정보를 전달하는 기능
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.iu.s3.board.roaster.roasterDAO.";
	
	@Autowired
	public int setHitUpdate(RoasterDTO roasterdDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"setHitUpdate", roasterdDTO);
	}

	public RoasterDTO getSelect(RoasterDTO roasterDTO) {
		// TODO Auto-generated method stub
		return null;
	}
}

package com.lg.t2.team.record;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamRecordDAO {
	
	@Autowired //객체 자동 주입
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.lg.t2.team.record.TeamRecordDAO.";
	 
	//TeamCareer 개인별 조회, 삽입, 삭제, 갱신
	//TeamPhoto 조회 삽입, 삭제 갱신
	
	//TeamPay 조회, 삽입, 삭제 갱신
	 
}

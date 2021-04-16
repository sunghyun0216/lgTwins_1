package com.lg.t2.roster;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class RosterDAO {
	
	//roasterDTO의 정보를 전달하는 기능
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.roster.RosterDAO.";
	
	
	public List<RosterPositionDTO> getALLPosiList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getALLPosiList");
	}
	/*
	 * <!-- 모든 포지션 이름 검색 --> <select id="getALLPosiList"
	 * parameterType="com.lg.t2.roater.RosterPositionDTO"
	 * resultType="com.lg.t2.roater.RosterPositionDTO"> select *from teamPosiName
	 * </select>
	 * 
	 * <!-- 모든 선수 포지션 별 분류하기 --> <select id="getPalPosiList"
	 * resultType="com.lg.t2.roater.RosterDTO"> Select * from rosterInfo WHERE tPosi
	 * = #{tPosi} </select>
	 * 
	 * <!-- 선수 포지션 추출 --> <select id="getPosiNameName"
	 * resultType="com.lg.t2.roater.RosterPositionDTO"> SELECT posiName FROM
	 * teamPosiName WHERE teamPosiName.posinum IN (SELECT rosterinfo.tposi FROM
	 * rosterInfo WHERE rosterinfo.tposi = #{tPosi}); </select>
	 */
	//position 모든 데이터 불러오기 
	//선수 포지션 별로 불러오기 
}

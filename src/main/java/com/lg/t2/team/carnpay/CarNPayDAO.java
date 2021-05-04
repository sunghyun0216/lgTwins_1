package com.lg.t2.team.carnpay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lg.t2.team.member.TeamMemberDTO;

@Repository
public class CarNPayDAO {
	//이력과 연봉을 조회하는 DAO
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.team.carnpay.CarNPayDAO.";

	//이력 조회 
	public List<TeamCareerDTO> getCarList (TeamMemberDTO teamMemberDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCarList", teamMemberDTO );
	}
	//이력 삽입
	public int addCareer (TeamCareerDTO teamCareerDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addCareer", teamCareerDTO);
	}
	//이력 삭제 
	public int deleteCareer (TeamCareerDTO teamCareerDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteCareer", teamCareerDTO);
	}
	
	//연봉 조회
	public List<PlayerPayDTO> getPayList (TeamMemberDTO teamMemberDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPayList",teamMemberDTO);
	}
	//연봉삽입
	public int addPay (PlayerPayDTO playerPayDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addPay", playerPayDTO);
	}
	//연봉 삭제 (팀 번호와 년도로 조회하여 삭제하기)
	public int deletePay (PlayerPayDTO playerPayDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"deletePay", playerPayDTO);
	}
}

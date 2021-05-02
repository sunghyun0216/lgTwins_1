package com.lg.t2.team.info;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamInfoDAO {
//팀원 관련 기록에 접근
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.team.info.TeamInfoDAO.";
	
	//이력CRUD
	public List<PlayerCareerDTO> getCareerList (PlayerCareerDTO playerCareerDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCareerList", playerCareerDTO);
	}
	public int setCareerInsert (PlayerCareerDTO playerCareerDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setCareerInsert", playerCareerDTO);
	}
	public int setCareerUpdate (PlayerCareerDTO playerCareerDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setCareerUpdate", playerCareerDTO); 
	}
	public int CareerDelete (PlayerCareerDTO playerCareerDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"CareerDelete", playerCareerDTO);
	}
	//연봉CRUD
	public List<PlayerPayDTO> getSalaryList (PlayerPayDTO playerPayDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSalaryList",playerPayDTO);
	}
	public void setSalaryInsert () throws Exception{	
		
	}
	public void setSalaryUpdate () throws Exception{
		
	}
	public void SalaryDelete () throws Exception{
		
	}
	//사진 CRUD
	public void getPhotoList () throws Exception{
		
	}
	public void setPhotoInsert () throws Exception{	
		
	}
	public void setPhotoUpdate () throws Exception{
		
	}
	public void PhotoDelete () throws Exception{
		
	}
	
}

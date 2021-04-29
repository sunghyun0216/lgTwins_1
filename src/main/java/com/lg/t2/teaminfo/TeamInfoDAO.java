package com.lg.t2.teaminfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamInfoDAO {
//DAO의 역할:MyBatis를 이용한 데이터 베이스로와 객체 이어준다 접근
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.teaminfo.TeamInfoDAO.";
	
	
	//성공 선수단 리스트 가져오기 결과 : teammemberinfoDTO
	public List<TeamMemberInfoDTO> getRosterInfoSelect() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRosterInfoSelect");
	}
	//성공 선수 포지션별로 가져오기 파라: 선수 int값 결과 값: teamMemberInfoDTO
	public List<TeamMemberInfoDTO> getRosterPerPosiSelect (TeamMemberInfoDTO teamMemberinfoDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRosterPerPosiSelect",teamMemberinfoDTO);
	}
	//성공, 선수 개별 정보 조회하기(단독 페이지) 
	public MemberBioDTO getPerInfoSelect(TeamMemberInfoDTO teamMemberinfoDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getPerInfoSelect",teamMemberinfoDTO);
	}
	//선수 정보 입력하기 step1 : team 정보 삽입하기 
	public int setTeamInfoInsert (MemberBioDTO memberBioDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setTeamInfoInsert", memberBioDTO);
	}
	//선수 정보 입력하기 step2
	public int setBioInfoInsert(MemberBioDTO memberBioDTO) throws Exception{
		 return sqlSession.insert(NAMESPACE+"setBioInfoInsert", memberBioDTO);
	}
	
	//선수 정보 갱신하기 파라: 선수 BIO DTO 결과 : BIO DTO
	public int setTeamInfoUpdate(MemberBioDTO memberBioDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setTeamInfoUpdate", memberBioDTO);
	}
	//선수 정보 삭제하기 파라미터   결과 :X
	public int setTeamInfoDelete(TeamMemberInfoDTO teamMemberInfoDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setTeamInfoDelete", teamMemberInfoDTO);
	}
}
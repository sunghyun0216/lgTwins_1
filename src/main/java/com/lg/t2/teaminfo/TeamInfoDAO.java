package com.lg.t2.teaminfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeamInfoDAO {
//DAO의 역할:MyBatis를 이용한 데이터 베이스 접근 객체
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.teaminfo.TeamInfoDAO.";
	
	
	//포지션 List 가져오기
	
	//성공 선수단 리스트 가져오기 결과 : teammemberinfoDTO
	public List<TeamMemberInfoDTO> getRosterInfoSelect() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRosterInfoSelect");
	}
	//성공 선수 포지션별로 가져오기 파라: 선수 int값 결과 값: teamMemberInfoDTO
	public List<TeamMemberInfoDTO> getRosterPerPosiSelect (int posi)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRosterPerPosiSelect", posi );
	}
	//성공 선수 개별 정보 조회하기(단독 페이지) 
	public MemberBioDTO getPerInfoSelect(TeamMemberInfoDTO teamMemberInfoDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getPerInfoSelect",teamMemberInfoDTO);
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

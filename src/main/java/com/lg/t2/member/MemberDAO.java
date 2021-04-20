package com.lg.t2.member;

 import org.apache.ibatis.session.SqlSession;
 import org.springframework.beans.factory.annotation.Autowired; 
 import org.springframework.stereotype.Repository;

import com.lg.t2.member.MemberDTO;
  
  @Repository
  public class MemberDAO {
  
  @Autowired
  private SqlSession sqlSession;
  private final String NAMESPACE="com.lg.t2.member.MemberDAO.";
  
  
  
  public MemberDTO memberIdCheck(MemberDTO memberDTO)throws Exception{
	  return sqlSession.selectOne(NAMESPACE+"memberIdcheck", memberDTO);
  }
  
  public int memberJoin(MemberDTO memberDTO)throws Exception{
	  return sqlSession.insert(NAMESPACE+"memberJoin", memberDTO);
  }
  
  public MemberDTO memberLoign(MemberDTO memberDTO)throws Exception{
	  return sqlSession.selectOne(NAMESPACE+"memberLogin", memberDTO);
  }
  
  public int memberUpdate(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"memberUpdate", memberDTO);
	}
  
  public int memberDelete(MemberDTO memberDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"memberDelete", memberDTO);
		
	}
  
  
  
  
  
  
  
  
  
  
  
  }
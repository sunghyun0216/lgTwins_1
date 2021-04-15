package com.lg.t2.ticket;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TicketDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.lg.t2.ticket.TicketDAO.";
	
	public List<TicketDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
}

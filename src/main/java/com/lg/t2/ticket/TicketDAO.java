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
	
	public List<TicketDTO> getList(TicketDTO ticketDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList",ticketDTO);
	}
	
	public TicketDTO getSelect(TicketDTO ticketDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"getSelect", ticketDTO);
	}
	
	public int setWrite(PurchaseTicketDTO purchaseTicketDTO)throws Exception{
		int result = sqlSession.insert(NAMESPACE+"setWrite",purchaseTicketDTO);
		return result;
	}
	
	public List<PurchaseTicketDTO> getCheck(PurchaseTicketDTO purchaseTicketDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getCheck",purchaseTicketDTO);
	}
	
	public List<PurchaseTicketDTO> getSitNum(PurchaseTicketDTO purchaseTicketDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSitNum",purchaseTicketDTO);
	}
	
}

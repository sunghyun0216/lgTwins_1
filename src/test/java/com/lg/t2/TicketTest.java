package com.lg.t2;

import static org.junit.Assert.*;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.ticket.PurchaseTicketDTO;
import com.lg.t2.ticket.TicketDAO;
import com.lg.t2.ticket.TicketDTO;



public class TicketTest extends MyAbstractTest{
	Date now = new Date();

	@Autowired
	private TicketDAO ticketDAO;
	
	//@Test
	public void getListTest(TicketDTO ticketDTO)throws Exception{
		List<TicketDTO> ar = ticketDAO.getList(ticketDTO);
		assertNotEquals(0, ar.size());
	}
	
	@Test
	public void getSelectTest()throws Exception{
		TicketDTO ticketDTO = new TicketDTO();
		TicketDTO ar = ticketDAO.getSelect(ticketDTO);
		assertNotEquals(0, ar);
	}
	
	//@Test
//	public void setWriteTest()throws Exception{
//		PurchaseTicketDTO purchaseTicketDTO = new PurchaseTicketDTO();
//		purchaseTicketDTO.setTeamName("kt");
//		purchaseTicketDTO.setTeamLogo("kt");
//		purchaseTicketDTO.setPlayDate(now);
//		purchaseTicketDTO.setSitNum("4022");
//		purchaseTicketDTO.setPrice(8000);
//		int result = ticketDAO.setWrite(purchaseTicketDTO);
//		assertNotEquals(0, result);
//	}
	
	
	
	

}

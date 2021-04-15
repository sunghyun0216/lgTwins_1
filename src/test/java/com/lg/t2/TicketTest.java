package com.lg.t2;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.lg.t2.ticket.TicketDAO;
import com.lg.t2.ticket.TicketDTO;



public class TicketTest extends MyAbstractTest{

	@Autowired
	private TicketDAO ticketDAO;
	
	@Test
	public void getListTest()throws Exception{
		List<TicketDTO> ar = ticketDAO.getList();
		assertNotEquals(0, ar.size());
	}

}

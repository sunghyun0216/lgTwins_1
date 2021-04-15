package com.lg.t2.ticket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicketService {
	@Autowired
	private TicketDAO ticketDAO;
	
	public List<TicketDTO> getList()throws Exception{
		return ticketDAO.getList();
	}
}

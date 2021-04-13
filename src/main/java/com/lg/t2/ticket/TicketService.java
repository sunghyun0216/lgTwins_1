package com.lg.t2.ticket;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TicketService {
	private TicketDAO ticketDAO;
	
	public List<TicketDTO> getList(TicketDTO ticketDTO)throws Exception{
		return ticketDAO.getList(ticketDTO);
	}
}

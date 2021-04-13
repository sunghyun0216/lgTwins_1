package com.lg.t2.ticket;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class TicketController {
	private TicketService ticketService;
	
	@RequestMapping("/ticket/bookTicket")
	public void getList()throws Exception{
		
	}
	
	@RequestMapping("/ticket/ticketInfo")
	public void List()throws Exception{
		
	}
}

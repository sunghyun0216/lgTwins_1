package com.lg.t2.ticket;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class TicketController {
	@Autowired
	private TicketService ticketService;
	
	@RequestMapping("/ticket/bookTicket")
	public void getList(TicketDTO ticketDTO,Model model)throws Exception{
		List<TicketDTO> ar = ticketService.getList();
		model.addAttribute("list", ar);
	}
	
	@RequestMapping("/ticket/purchaseTicket")
	public ModelAndView getSelect(TicketDTO ticketDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		ticketDTO = ticketService.getSelect(ticketDTO);
		mv.addObject("dto",ticketDTO);
		return mv;
	}
	

	
	@RequestMapping("/ticket/ticketInfo")
	public void List()throws Exception{
		
	}
}

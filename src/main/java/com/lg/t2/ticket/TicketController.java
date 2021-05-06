package com.lg.t2.ticket;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class TicketController {
	@Autowired
	private TicketService ticketService;
	
	@RequestMapping("/ticket/bookTicket")
	public void getList(TicketDTO ticketDTO,Model model)throws Exception{
		List<TicketDTO> ar = ticketService.getList(ticketDTO);
		model.addAttribute("list", ar);
	}
	
	@RequestMapping("/ticket/purchaseTicket")
	public ModelAndView getSelect(TicketDTO ticketDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		ticketDTO = ticketService.getSelect(ticketDTO);
		mv.addObject("dto",ticketDTO);
		return mv;
	}
	
	@RequestMapping("/ticket/checkTicket")
	public ModelAndView getCheck(PurchaseTicketDTO purchaseTicketDTO,ModelAndView mv)throws Exception{
		List<PurchaseTicketDTO> ar2 = ticketService.getCheck(purchaseTicketDTO);
		mv.addObject("list2", ar2);
		return mv;
	}
	
	@PostMapping("/ticket/writeTicket")
	@ResponseBody
	public void setWrite(PurchaseTicketDTO purchaseTicketDTO)throws Exception{
		int result = ticketService.setWrite(purchaseTicketDTO);
	}
	
	@RequestMapping("/ticket/ticketInfo")
	public void List()throws Exception{
		
	}
	
	@RequestMapping("/ticket/ticket")
	public ModelAndView getSitNum(PurchaseTicketDTO purchaseTicketDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PurchaseTicketDTO> ar= ticketService.getSitNum(purchaseTicketDTO);
		mv.addObject("ticket",ar);
		return mv;
	}
}

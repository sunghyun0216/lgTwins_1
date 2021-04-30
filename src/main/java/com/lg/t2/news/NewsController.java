package com.lg.t2.news;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.util.Pager;

@Controller
@RequestMapping("/news/**")
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	@RequestMapping("newsList") // List
	public ModelAndView getList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(pager.getCurPage());
		
		List<BoardDTO> ar = newsService.getList(pager);
		
		mv.addObject("list", ar);
		mv.setViewName("board/boardList");
		mv.addObject("board", "notice");
		mv.addObject("pager", pager);
		
		return mv;
	}
	
	
	
}

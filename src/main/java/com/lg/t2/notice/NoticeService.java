package com.lg.t2.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.board.BoardService;
import com.lg.t2.util.FileManager;
import com.lg.t2.util.Pager;

@Service
public class NoticeService implements BoardService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private HttpSession session;
	
	
	@Override //List
	public List<BoardDTO> getList(Pager pager) throws Exception {
		pager.makeRow();
		long totalCount = noticeDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		return noticeDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return noticeDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
	
		return 0;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
		
		return noticeDAO.setInsert(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return noticeDAO.setDelete(boardDTO);
	}

	
	
	
}

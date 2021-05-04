package com.lg.t2.news;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.board.BoardFileDTO;
import com.lg.t2.board.BoardService;
import com.lg.t2.util.FileManager;
import com.lg.t2.util.Pager;

@Service
public class NewsService implements BoardService{

	@Autowired
	private NewsDAO newsDAO;
	
	@Autowired
	private FileManager fileManager;
	
	@Autowired
	private HttpSession session;

	public boolean setSummerFileDelete(String fileName)throws Exception{
		boolean result =  fileManager.delete("news", fileName, session);
		return result;
	}
	
	public String setSummerFileUpload(MultipartFile file)throws Exception{
		String fileName = fileManager.save("news", file, session);
		return fileName;
	}
	
	public int setFileDelete(BoardFileDTO boardFileDTO)throws Exception{
		boardFileDTO = newsDAO.getFileSelect(boardFileDTO);
		int result = newsDAO.setFileDelete(boardFileDTO);
		if(result > 0) {
			fileManager.delete("news", boardFileDTO.getFileName(), session);
		}
		return result;
	}
	
	
	@Override
	public List<BoardDTO> getList(Pager pager)throws Exception{
		pager.makeRow();
		long totalCount = newsDAO.getTotalCount(pager);
		pager.makeNum(totalCount);
		return newsDAO.getList(pager);
	}
	

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		return newsDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
		long num = newsDAO.getNum();
		
		boardDTO.setNum(num);
		
		int result = newsDAO.setInsert(boardDTO);
		
		for(MultipartFile mf: files) {
			BoardFileDTO boardFileDTO = new BoardFileDTO();
			String fileName = fileManager.save("news", mf, session);
			
			boardFileDTO.setNum(num);;
			boardFileDTO.setFileName(fileName);
			boardFileDTO.setOrigineName(mf.getOriginalFilename());
			
			newsDAO.setFileInsert(boardFileDTO);
			
		}
		
		return result;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
			for(MultipartFile multipartFile:files) {
				BoardFileDTO boardFileDTO = new BoardFileDTO();
				
				String fileName = fileManager.save("news", multipartFile, session);
				boardFileDTO.setFileName(fileName);
				boardFileDTO.setOrigineName(fileName);
				boardFileDTO.setNum(boardDTO.getNum());
				
				newsDAO.setFileInsert(boardFileDTO);
			}
			
		
		return newsDAO.setUpdate(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		return newsDAO.setDelete(boardDTO);
	}
	

	
	
	
	
	
	
}

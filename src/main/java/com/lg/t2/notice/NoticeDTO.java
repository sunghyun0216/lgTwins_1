package com.lg.t2.notice;

import java.util.List;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.board.BoardFileDTO;

public class NoticeDTO extends BoardDTO{

	private List<BoardFileDTO> boardFiles;

	public List<BoardFileDTO> getBoardFiles() {
		return boardFiles;
	}

	public void setBoardFiles(List<BoardFileDTO> boardFiles) {
		this.boardFiles = boardFiles;
	}
	
}

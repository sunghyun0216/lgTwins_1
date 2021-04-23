package com.lg.t2.news;

import java.util.List;

import com.lg.t2.board.BoardDTO;

public class NewsDTO extends BoardDTO{

	private List<BoardDTO> boardFiles;

	public List<BoardDTO> getBoardFiles() {
		return boardFiles;
	}

	public void setBoardFiles(List<BoardDTO> boardFiles) {
		this.boardFiles = boardFiles;
	}
	
}

package com.lg.t2.story;

import java.util.List;

import com.lg.t2.board.BoardDTO;
import com.lg.t2.board.BoardFileDTO;

public class StoryDTO extends BoardDTO{

	private List<BoardFileDTO> boardFiles;

	public List<BoardFileDTO> getBoardFiles() {
		return boardFiles;
	}

	public void setBoardFiles(List<BoardFileDTO> boardFiles) {
		this.boardFiles = boardFiles;
	}
	
}

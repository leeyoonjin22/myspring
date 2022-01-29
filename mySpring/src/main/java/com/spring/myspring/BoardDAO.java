package com.spring.myspring;

import java.util.List;

public interface BoardDAO {
	public int insertBoard(BoardVO vo);
	public List<BoardVO> getBoardList();
	public int deleteBoard(int id);
	public int updateBoard(BoardVO vo);
	public BoardVO getBoard(int id);
}

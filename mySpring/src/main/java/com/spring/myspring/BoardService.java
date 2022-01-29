package com.spring.myspring;

import java.util.List;

import org.springframework.stereotype.Service;
@Service
public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int deleteBoard(int id);
	public int updateBoard(BoardVO vo);
	public BoardVO getBoard(int seq);
	public List<BoardVO> getBoardList();
}

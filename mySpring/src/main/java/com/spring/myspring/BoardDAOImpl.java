package com.spring.myspring;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertBoard(BoardVO vo) {
		System.out.println("insertBoard");
		return sqlSession.insert("BoardDAO.insertBoard", vo);
	}
	
	@Override
	public int updateBoard(BoardVO vo) {
		System.out.println("updateBoard");
		return sqlSession.update("BoardDAO.updateBoard", vo);
	}

	@Override
	public int deleteBoard(int id) {
		System.out.println("deleteBoard");
		return sqlSession.delete("BoardDAO.deleteBoard", id);
	}
	
	@Override
	public BoardVO getBoard(int id) {
		System.out.println("getBoard");
		return sqlSession.selectOne("BoardDAO.getBoard", id);

	}

	@Override
	public List<BoardVO> getBoardList() {
		System.out.println("getBoardList");
		List<BoardVO> list = sqlSession.selectList("BoardDAO.getBoardList");
		
		return list;
	}

}

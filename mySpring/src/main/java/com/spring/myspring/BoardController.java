package com.spring.myspring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list", boardService.getBoardList());
		return "posts";
	}
	
	@RequestMapping(value = "/board/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/board/addok", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		int i = boardService.insertBoard(vo);
		
		if(i == 0) System.out.println("Error! Create Failed");
		else System.out.println(vo.getWriter() + "님이 정보를 등록하였습니다.");
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/board/edit/{id}", method = RequestMethod.GET)
		public String editPost(@PathVariable("id") int id, BoardVO vo, Model model) {
		vo.setSeq(id);
		model.addAttribute("boardVO", boardService.getBoard(id));
		
		return "editform";
	}
	
	
	@RequestMapping(value = "/board/editok", method = RequestMethod.POST)
	public String editPostOK(BoardVO vo) {
		int i = boardService.updateBoard(vo);
		
		if(i == 0) System.out.println("Error! Update Failed");
		else System.out.println("정보 수정 완료.");
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/board/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		int i = boardService.deleteBoard(id);
		
		if(i == 0) System.out.println("Error! delete Failed");
		else System.out.println("정보 삭제 완료.");
		
		return "redirect:../list";
	}
}

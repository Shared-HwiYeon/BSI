package com.team4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.Service.BoardService;
import com.team4.vo.BoardVO;

@Controller
@RequestMapping(path = {"/board-khw"})
public class BoardController {

	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
	@GetMapping(path = {"/list"})
	public String list(Model model) {
		
		List<BoardVO> boards = boardService.findAll();
		
		model.addAttribute("boards", boards);
		
		return "board-khw/list";
	}
	
	@GetMapping(path = { "/write" })
	public String showWriteForm() {
		
		return "board-khw/write";
	}
	
	@PostMapping(path = {"/write"})
	public String write(BoardVO board) {
		
		boardService.writeBoard(board);
		
		return "redirect:list";
	}
	
	@GetMapping(path = { "/detail" })
	public String detail(int boardNo, Model model) {
		
		BoardVO board = boardService.findBoardByBoardNo(boardNo);
		
		if (board == null) {
			return "redirect:list";
		}
		
		boardService.increaseBoardReadCount(boardNo);
		board.setReadCount(board.getReadCount() + 1);
		
		model.addAttribute("board", board);
		
		return "board/detail";
	}
	
	@GetMapping(path = { "/delete" })
	public String delete(int boardNo) {
	
		boardService.deleteBoard(boardNo);
	
		return "redirect:list";
	}
	

	@GetMapping(path = { "/edit" })
	public String showEditForm(int boardNo, Model model) {

		BoardVO board = boardService.findBoardByBoardNo(boardNo);
		
		if (board == null) {
			return "redirect:list";
		}
	
		model.addAttribute("board", board);
	
		return "board/edit";
	}
	
	@PostMapping(path = { "/update" })
	public String update(BoardVO board) {
		
		boardService.updateBoard(board);
		
		return "redirect:detail?boardNo=" + board.getBoardNo();
	}


	
}

package com.greener.codegreen.dao;

import java.util.List;

import com.greener.codegreen.dto.BoardDTO;



public interface BoardDAO {
	

//----------------------------------------------------------------------------	
// 공지사항, FAQ 등록처리 
//----------------------------------------------------------------------------				
		//공지사항 등록 처리
		public int NoticeUpForm(BoardDTO boardDTO);
		
		//FAQ 등록 처리
		public int FaqUpForm(BoardDTO boardDTO);
		
//----------------------------------------------------------------------------	
// 공지사항, FAQ ,1:1 목록보기 
//----------------------------------------------------------------------------		
	//공지사항 전체목록 
	public List<BoardDTO> NoticeList(int n_bc_code) throws Exception;
	
	//FAQ 전체목록
	public List<BoardDTO> FaqList(int f_bc_code) throws Exception;
	
	//1:1 전체목록
	public List<BoardDTO> InquiryList(int i_bc_code) throws Exception;
	
//----------------------------------------------------------------------------	
// 공지사항, FAQ ,1:1 상세보기 (조회) 
//----------------------------------------------------------------------------
	
	//----------------------------------------------------------------------------	
	// flag 중복 처리 - 게시글 번호에 해당하는 게시글의 조회수를 증가시키기
	//----------------------------------------------------------------------------	
	public void nupdateCount(int n_no);
	public void fupdateCount(int f_no);

	
//----------------------------------------------------------------------------	
// 공지사항, FAQ ,1:1 게시글 번호에 해당하는 게시글 삭제하기 
//----------------------------------------------------------------------------		
	
	//----------------------------------------------------------------------------	
	// 게시물 번호에 해당하는 게시글 정보 가져오기 
	//----------------------------------------------------------------------------	
	//공지사항 게시물 조회(상세보기)
	public BoardDTO NoticeDetail(int n_no);
	//공지사항 게시물 조회(상세보기)
	public BoardDTO FaqDetail(int f_no);
	//공지사항 게시물 조회(상세보기)
	public BoardDTO InquiryDetail(int i_no);
	
	//-------------------------------------------------------------------------
	// 게시글 번호에 해당하는 게시글 삭제하기 
	//-------------------------------------------------------------------------
	public int NoticeDelete(int n_no);
	public int FaqDelete(int f_no);
	public int InquiryDelete(int i_no);

//----------------------------------------------------------------------------	
// 공지사항, FAQ ,1:1 게시글 번호에 해당하는 게시글 내용(넣어준 컬럼들) 수정
//----------------------------------------------------------------------------
	public int NoticeUpdate(BoardDTO boardDTO);
	public int FaqUpdate(BoardDTO boardDTO);
	public int InquiryUpdate(BoardDTO boardDTO);

	
}//public interface BoardDAO

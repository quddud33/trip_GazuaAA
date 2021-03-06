package dao;

import java.util.HashMap;
import java.util.List;

public interface IBoardDao {

	//글 쓰기
	public void insertBoard(HashMap<String, Object> params);
	
	//글 수정
	public void updateBoard(HashMap<String, Object> params);
	
	//글 삭제
	public void deleteBoard(int num);
	
	//글 하나 보기
	public HashMap<String, Object> selectOne(int num);
	
	//글 전체 보기
	public List<HashMap<String, Object>> selectAll(HashMap<String, Object> params);
	
	//조회수
	public void views(int num);
	
	//조회수
	public int viewsCount(int num);
	
	//글 개수
	public int count();
	
	//검색
	public List<HashMap<String, Object>> selectSearch(HashMap<String, Object> params);
	
	//검색 개수
	public int searchCount(HashMap<String, Object> params);
	
	//좋아요 개수 증가
	public int likeCountUp(int num);
	
	//좋아요 개수 차감
	public int likeCountDown(int num);
	
	//좋아요 개수 출력
	public int likeCount(int num);
	
	//마이페이지 작성 글 출력
	public List<HashMap<String, Object>> myPageSelect(String userID);
	
}

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
	public List<HashMap<String, Object>> selectAll(int start);
	
	//조회수
	public void views(int num);
	
	//글 개수
	public int count();
	
	
	
}

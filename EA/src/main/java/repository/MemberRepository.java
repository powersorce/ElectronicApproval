package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import model.MemberDTO;

@Repository
public class MemberRepository {
	@Autowired
	SqlSession sqlSession;
	
	String namespace = "mappers.memberMapper";
	String statement;
	
	public int autoNum() {
		statement = namespace + ".autoNum";
		return sqlSession.selectOne(statement);
	}
	public List<MemberDTO> memberList(MemberDTO dto) {
		statement = namespace +".memberList";
		return sqlSession.selectList(statement,dto);
	}
	public void registAct(MemberDTO memberDTO) {
		statement = namespace + ".registAct";
		sqlSession.insert(statement, memberDTO);
	}
}

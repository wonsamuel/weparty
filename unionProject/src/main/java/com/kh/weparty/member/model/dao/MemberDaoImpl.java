package com.kh.weparty.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.weparty.member.model.vo.Member;
import com.kh.weparty.member.model.vo.MemberImgs;
import com.kh.weparty.partyplanner.model.vo.PartyPlanner;
import com.kh.weparty.partyplanner.model.vo.PartyPlannerMember;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Override
	public Member selectMember(SqlSessionTemplate session, Map<String,Object> map) {
		return session.selectOne("member.login", map);
	}

	@Override
	public Member simpleLogin(SqlSessionTemplate session, Map<String, Object> map) {
		return session.selectOne("member.simpleLogin", map);
	}



	@Override
	public int kakaoInsert(SqlSessionTemplate session, Map<String, Object> map) {

		return session.insert("member.kakaoInsert", map);
	}

	@Override
	public int insertMember(SqlSessionTemplate session, Member m) {
		return session.insert("member.insertMember", m);
	}

	@Override
	public int insertMemberImgs(SqlSessionTemplate session, MemberImgs mi) {
		return session.insert("member.insertMemberImgs", mi);
	}

	@Override
	public Member mCheckId(SqlSessionTemplate session, String mUserId) {
		return session.selectOne("member.mCheckId", mUserId);
	}

	@Override
	public PartyPlanner pCheckId(SqlSessionTemplate session, String mUserId) {
		return session.selectOne("member.pCheckId", mUserId);
	}

	@Override
	public Member mCheckEmail(SqlSessionTemplate session, String mEmail) {
		return session.selectOne("member.mCheckEmail", mEmail);
	}

	@Override
	public PartyPlanner pCheckEmail(SqlSessionTemplate session, String mEmail) {
		return session.selectOne("member.pCheckEmail", mEmail);
	}

	@Override
	public int insertPartyPlanner(SqlSessionTemplate session, PartyPlanner pp) {
		return session.insert("member.insertPartyPlanner", pp);
	}

	@Override
	public int insertPartyPlannerMember(SqlSessionTemplate session, PartyPlannerMember ppm) {
		return session.insert("member.insertPartyPlannerMember", ppm);
	}
	
	
	
	
	
	
	
	
	

}

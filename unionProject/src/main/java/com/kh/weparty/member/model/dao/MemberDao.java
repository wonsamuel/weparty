package com.kh.weparty.member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.weparty.member.model.vo.Member;
import com.kh.weparty.member.model.vo.MemberImgs;
import com.kh.weparty.partyplanner.model.vo.PartyPlanner;
import com.kh.weparty.partyplanner.model.vo.PartyPlannerMember;

public interface MemberDao {
	
	Member selectMember(SqlSessionTemplate session, Map<String, Object> map);
	
	Member simpleLogin(SqlSessionTemplate session, Map<String, Object> map);
	
	int kakaoInsert(SqlSessionTemplate session, Map<String, Object> map);
	
	int insertMember(SqlSessionTemplate session, Member m);
	int insertMemberImgs(SqlSessionTemplate session, MemberImgs mi);
	
	Member mCheckId(SqlSessionTemplate session, String mUserId);
	PartyPlanner pCheckId(SqlSessionTemplate session, String mUserId);
	
	Member mCheckEmail(SqlSessionTemplate session, String mEmail);
	PartyPlanner pCheckEmail(SqlSessionTemplate session, String mEmail);
	
	
	int insertPartyPlanner(SqlSessionTemplate session, PartyPlanner pp);
	int insertPartyPlannerMember(SqlSessionTemplate session, PartyPlannerMember ppm);
	
}

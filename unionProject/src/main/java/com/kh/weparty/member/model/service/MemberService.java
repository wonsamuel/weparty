package com.kh.weparty.member.model.service;

import java.util.List;
import java.util.Map;

import com.kh.weparty.member.model.vo.Member;
import com.kh.weparty.member.model.vo.MemberImgs;
import com.kh.weparty.partyplanner.model.vo.PartyPlanner;
import com.kh.weparty.partyplanner.model.vo.PartyPlannerMember;

public interface MemberService {
	
	Member selectMember(Map<String,Object> map);
	
	Member simpleLogin(Map<String,Object> map);
	
	int kakaoInsert(Map<String, Object> map);
	
	int insertMember(Member m, List<MemberImgs> files);	
	
	Member mCheckId(String mUserId);
	PartyPlanner pCheckId(String mUserId);
	
	Member mCheckEmail(String mEmail);
	PartyPlanner pCheckEmail(String mEmail);
	
	int insertPartyPlanner(PartyPlanner pp, List<PartyPlannerMember> ppm);

}

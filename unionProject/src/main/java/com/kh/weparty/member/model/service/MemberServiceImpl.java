package com.kh.weparty.member.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.weparty.common.MyException;
import com.kh.weparty.member.model.dao.MemberDao;
import com.kh.weparty.member.model.vo.Member;
import com.kh.weparty.member.model.vo.MemberImgs;
import com.kh.weparty.partyplanner.model.vo.PartyPlanner;
import com.kh.weparty.partyplanner.model.vo.PartyPlannerMember;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private Logger logger;
	
	@Autowired
	private MemberDao dao;
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public Member selectMember(Map<String,Object> map) {
		return dao.selectMember(session, map);
	}

	@Override
	public Member simpleLogin(Map<String, Object> map) {
		return dao.simpleLogin(session, map);
	}



	@Override
	public int kakaoInsert(Map<String, Object> map) {
		return dao.kakaoInsert(session, map);
	}

	@Override
	@Transactional
	public int insertMember(Member m, List<MemberImgs> files) {
		
		int result = dao.insertMember(session, m);
		
		if(result==0) {
			throw new MyException("회원 가입 실패!");
		}
		
		if(!files.isEmpty()) {
			for(MemberImgs mi : files) {
				mi.setMCode(m.getMCode());
				result = dao.insertMemberImgs(session, mi);
				if(result==0) {
					throw new MyException("회원 가입 실패!");
				}
			}
		}
		
		return result;
	}

	@Override
	public Member mCheckId(String mUserId) {
		return dao.mCheckId(session, mUserId);
	}

	@Override
	public PartyPlanner pCheckId(String mUserId) {
		return dao.pCheckId(session, mUserId);
	}

	@Override
	public Member mCheckEmail(String mEmail) {
		return dao.mCheckEmail(session, mEmail);
	}

	@Override
	public PartyPlanner pCheckEmail(String mEmail) {
		return dao.pCheckEmail(session, mEmail);
	}

	@Override
	@Transactional
	public int insertPartyPlanner(PartyPlanner pp, List<PartyPlannerMember> ppm) {

		int result = dao.insertPartyPlanner(session, pp);
		
		if(result==0) {
			throw new MyException("회원 가입 실패!");
		}
		
		if(!ppm.isEmpty()) {
			for(PartyPlannerMember ppMember : ppm) {
				ppMember.setPpCode(pp.getPpCode());
				result = dao.insertPartyPlannerMember(session, ppMember);
				if(result==0) {
					throw new MyException("회원 가입 실패!");
				}
			}
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	

}

package com.kh.weparty.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.weparty.member.model.service.MemberService;
import com.kh.weparty.member.model.vo.Member;
import com.kh.weparty.member.model.vo.MemberImgs;
import com.kh.weparty.partyplanner.model.vo.PartyPlanner;
import com.kh.weparty.partyplanner.model.vo.PartyPlannerMember;

@Controller
@SessionAttributes("loginMember")
public class MemberController {
	
	@Autowired
	private Logger logger;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Autowired
	private MemberService service;
	
	@RequestMapping("/moveToMain.do")
	public String moveToMain() {
		
		return "/common/mainPage";
	}

	@RequestMapping("/member/memberLogin.do")
	public String memberLogin(String mUserId, String mPw, @RequestParam int customRadioInline1,  Model m, HttpSession session) {
		
//		System.out.println(customRadioInline1);
		
		Map<String, Object> map = new HashMap();
		
		map.put("mUserId", mUserId);
		map.put("mPw", mPw);
//		map.put("userEmail", userEmail);
		map.put("type", customRadioInline1);
		Member login = service.selectMember(map);
		
		if(login!=null && login.getMPw().equals(mPw)) {
			m.addAttribute("msg","회원 로그인 성공");
			m.addAttribute("loginMember",login);
			m.addAttribute("loc","/moveToMain.do");
			if(customRadioInline1==1) {
				logger.info("===== 일반회원 로그인 =====");
				
			}else {
				logger.info("===== 파티플래너 로그인 =====");
			}
		} 
		else {
			m.addAttribute("msg","로그인 실패");
			m.addAttribute("loc","/");
		}
		
		
		return "/common/msg";
	}
	
	@RequestMapping("/member/simpleLogin.do")
	public String simpleLogin(Member mem, String mEmail, 
								@RequestParam int customRadioInline1, String profileImg, 
								String mUserId, String nickname, Model m) {
		
		Map<String, Object> map = new HashMap();
		
		map.put("mUserId", mUserId);
//		map.put("password", password);
		map.put("mEmail", mEmail);
		map.put("type", customRadioInline1);
		System.out.println(map);
		Member login = service.simpleLogin(map);
		
		if(login!=null && login.getMEmail().equals(mEmail)) {
			m.addAttribute("msg","회원 로그인 성공");
			m.addAttribute("loginMember",login);
			m.addAttribute("loc","/moveToMain.do");
			if(customRadioInline1==1) {
				logger.info("===== 일반회원 로그인 =====");
				
			}else {
				logger.info("===== 파티플래너 로그인 =====");
			}
		} 
		else {
			m.addAttribute("msg","등록된 회원 정보가 없습니다. 회원 가입을 진행해주시기 바랍니다.");
			m.addAttribute("loc","/member/memberEnroll.do");
			if(customRadioInline1==1) {
				mem.setMEmail(mEmail);
				mem.setMProImgOri(profileImg);
				mem.setMUserId(mUserId);
				mem.setMName(nickname);
				
				m.addAttribute("m",mem);
				System.out.println(mem);
				System.out.println(m);
			}else {
				mem.setMEmail(mEmail);
				mem.setMUserId(mUserId);
				m.addAttribute("m",mem);
				System.out.println(mem);
				System.out.println(m);
			}
		}
		
		return "/common/msg";
	}
	
	
	
	@RequestMapping("/member/logout.do")
	public String logout(SessionStatus status, HttpSession session) {
		
		if(!status.isComplete()) {
			//isComplete means session이 끊어졌다
			status.setComplete();
			logger.info("===== 로그아웃 =====");
		}
//		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping("/member/searchIdPwd.do")
	public String searchIdPwd() {
		

		
		return "member/searchIdPwd";
	}
	
	@RequestMapping("/member/searchPwd.do")
	public String changePwd() {
		
		return "/member/changePwd";
	}
	
	@RequestMapping("/member/memberEnroll.do")
	public String memberEnroll() {
		
		return "/member/memberEnroll";
	}
	
	@RequestMapping("/member/memberEnrollEnd.do")
	public ModelAndView memberEnrollEnd(ModelAndView mv, Member m, MultipartFile[] upFile, HttpSession session) {
		
		logger.debug("파일0 : "+upFile[0].getOriginalFilename());
		logger.debug("파일크기0 : "+upFile[0].getSize());
		logger.debug("파일1 : "+upFile[1].getOriginalFilename());
		logger.debug("파일크기1 : "+upFile[1].getSize());
		
		String path = session.getServletContext().getRealPath("/resources/upload/member");
		
		List<MemberImgs> files = new ArrayList();
		
		File f = new File(path);
		
		if(!f.exists()) f.mkdirs();
		
		int index = 0;
		for(MultipartFile mf : upFile) {
			System.out.println(m.getMMusic());
			if(!mf.isEmpty()) {
				String ori = mf.getOriginalFilename();
				String ext = ori.substring(ori.lastIndexOf("."));
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
				int rnd = (int)(Math.random()*1000);
				String renamed = sdf.format(System.currentTimeMillis())+"_"+rnd+ext;
				
				try {
					logger.debug(path+"/"+renamed);
					mf.transferTo(new File(path+"/"+renamed));
				}catch(IOException e) {
					e.printStackTrace();
				}
				
				MemberImgs mi = new MemberImgs();
				if(index==0) {
					m.setMProImgOri(ori);
					m.setMProImgRenamed(renamed);
					System.out.println(m.getMProImgOri());
					System.out.println(m.getMProImgRenamed());
				}else {
					mi.setMImgOri(ori);
					mi.setMImgRenamed(renamed);
					files.add(mi);
					System.out.println(mi.getMImgRenamed());
					System.out.println(mi.getMImgOri());
					
				}
			}
			index++;
		}
		
		int result = 0;
		try {
			result = service.insertMember(m, files);
			
		}catch(RuntimeException e ) {
			for(MemberImgs mi : files ) {
				File delF = new File(path+"/"+mi.getMImgRenamed());
				if(delF.exists()) {
					delF.delete();
				}
			}
		}
		
		if(result==0) {
			mv.addObject("msg", "회원가입 실패");
			mv.addObject("loc", "/member/memberEnroll.do");
			mv.setViewName("/common/msg");
		}else {
			mv.addObject("msg", "회원가입 성공");
			mv.addObject("loc", "/");
			mv.setViewName("/common/msg");
			
		}	
		
		
		return mv;
	}
	
	@RequestMapping("/member/checkId")
	@ResponseBody
	public boolean checkId(String mUserId, int customRadioInline1) {
		
		if(customRadioInline1==1) {
			Member m = service.mCheckId(mUserId);
			boolean flag = m != null?false:true;
			return flag;
		}else {
			PartyPlanner pp = service .pCheckId(mUserId);
			boolean flag = pp != null?false:true;
			return flag;
		}
		
	}
	
	@RequestMapping("/member/checkEmail")
	@ResponseBody
	public boolean checkEmail(String mEmail, int customRadioInline1) {
		
		if(customRadioInline1==1) {
			Member m = service.mCheckEmail(mEmail);
			boolean flag = m != null?false:true;
			return flag;
		}else {
			PartyPlanner pp = service .pCheckEmail(mEmail);
			boolean flag = pp != null?false:true;
			return flag;
		}
		
	}
	
	@RequestMapping("/member/partyPlannerEnrollEnd.do")
	public ModelAndView partylPlannerEnrollEnd(ModelAndView mv, 
			PartyPlanner pp,String[] ppMName,String[] ppMJob, String[] ppMInstagram, MultipartFile[] upFile,
			HttpSession session, HttpServletRequest req) {
		
		System.out.println(pp);
		
		String path = session.getServletContext().getRealPath("/resources/upload/partyPlanner");
		
		List<PartyPlannerMember> ppMembers = new ArrayList();
		
		System.out.println(Arrays.toString(ppMName));
		System.out.println(Arrays.toString(ppMJob));
		System.out.println(Arrays.toString(ppMInstagram));
		
		File f = new File(path);
		
		if(!f.exists()) f.mkdirs();
		
		
		int index = 0;
		for(MultipartFile mf : upFile) {
			if(!mf.isEmpty()) {
				String ori = mf.getOriginalFilename();
				String ext = ori.substring(ori.lastIndexOf("."));
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS");
				int rnd = (int)(Math.random()*1000);
				String renamed = sdf.format(System.currentTimeMillis())+"_"+rnd+ext;
				
				try {
					mf.transferTo(new File(path+"/"+renamed));
				}catch(IOException e) {
					e.printStackTrace();
				}
				

				if(index==0) {
					pp.setPpLogoOri(ori);
					pp.setPpLogoRenamed(renamed);
					System.out.println(pp.getPpLogoOri());
					System.out.println(pp.getPpLogoRenamed());
				}else {
					
					PartyPlannerMember ppm = new PartyPlannerMember();
					
					ppm.setPpMImgOri(ori);
					ppm.setPpMImgRenamed(renamed);
					System.out.println(ppm);
					ppMembers.add(ppm);
					System.out.println(ppm.getPpMImgRenamed());
					System.out.println(ppm.getPpMImgOri());
					
				}
			}
			index++;
		}
		
		logger.debug(ppMembers.toString());
		
		for(int i = 0; i<ppMName.length; i++) {
			ppMembers.get(i).setPpMName(ppMName[i]);
			ppMembers.get(i).setPpMJob(ppMJob[i]);
			ppMembers.get(i).setPpMInstagram(ppMInstagram[i]);
		}

		System.out.println(ppMembers);
		
		int result = 0;
		try {
			result = service.insertPartyPlanner(pp, ppMembers);
			
		}catch(RuntimeException e ) {
			for(PartyPlannerMember ppm1 : ppMembers ) {
				File delF = new File(path+"/"+ppm1.getPpMImgRenamed());
				if(delF.exists()) {
					delF.delete();
				}
			}
		}
		
		if(result==0) {
			mv.addObject("msg", "회원가입 실패");
			mv.addObject("loc", "/member/memberEnroll.do");
			mv.setViewName("/common/msg");
		}else {
			mv.addObject("msg", "회원가입 성공");
			mv.addObject("loc", "/");
			mv.setViewName("/common/msg");
			
		}	
		
		
		return mv;
		
	}
	
	
}

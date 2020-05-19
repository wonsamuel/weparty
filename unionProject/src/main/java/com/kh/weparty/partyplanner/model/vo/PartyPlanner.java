package com.kh.weparty.partyplanner.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PartyPlanner {
	
	private int ppCode;
	private String ppName;
	private String ppMainMember;
	private String ppUserId;
	private String ppPw;
	private String ppPhone;
	private String ppEmail;
	private String ppStartDate;
	private int ppMCount;
	private String ppLogoOri;
	private String ppLogoRenamed;
	private String ppFacebook;
	private String ppInstagram;
	private String ppTwitter;
	private String[] ppMusic;
	private String ppIntro;
	private Date ppEnrollDate;
	private String ppAproval;
	private int ppWarning;
	private int ppReadCount;
	private String ppStatus;
	private String memLevel;

}

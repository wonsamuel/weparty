package com.kh.weparty.member.model.vo;


import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	private int mCode;
	private String mName;
	private String mUserId;
	private String mPw;
	private String mGender;
	private int mAge;
	private String mBDay;
	private String mPhone;
	private String mEmail;
	private String mIntro;
	private String mProImgOri;
	private String mProImgRenamed;
	private String mStatus;
	private String[] mMusic;
	private Date enrollDate;
	private int mWarning;
	private String memLevel;
	

}

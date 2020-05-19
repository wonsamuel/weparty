package com.kh.weparty.partyplanner.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PartyPlannerMember {
	
	private int ppMCode;
	private String ppMName;
	private String ppMJob;
	private String ppMImgOri;
	private String ppMImgRenamed;
	private String ppMInstagram;
	private int ppCode;

}

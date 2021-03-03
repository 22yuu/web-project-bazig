package com.bazig.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ColumnDefault;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//@Data
//@NoArgsConstructor
//@AllArgsConstructor
//@Builder
//
//@Entity
public class test_zzim {
	
//	@Id // primary key
//	@GeneratedValue(strategy = GenerationType.IDENTITY) //프로젝트에서연결된 db의 넘버링 전략을 따라감.
//	private int id; // 시퀀스
//
//	@ColumnDefault("0")
//	private int zzim_check;
	
//	@ManyToOne //한명의 유저가 여러개의 아이템을 찜할 수 있음??
//	@JoinColumn(name="userId")
//	private User user;
}

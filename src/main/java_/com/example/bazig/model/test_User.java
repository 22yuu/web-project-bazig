package com.bazig.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder //빌더패턴

@Entity
public class test_User {
	
	@Id // primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //프로젝트에서연결된 db의 넘버링 전략을 따라감.
	private int id; // 시퀀스
	
	@Column(nullable=false, length=16)
	private String username;
	
	@Column(nullable = false, length=100)
	private String password;
	
	@Column(nullable = false, length=100)
	private String email;
}

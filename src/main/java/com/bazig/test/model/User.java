package com.bazig.test.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder //빌더패턴

@Entity // User 테이블 생성
public class User {
	
	@Id // primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //프로젝트에서연결된 db의 넘버링 전략을 따라감.
	private int id; // 시퀀스
	
	@Column(nullable = false, length=30)
	private String memberId;
	
	@Column(nullable = false, length = 100)
	private String password;
	
	@Column(nullable = false, length = 100)
	private String confirm_password;
	
	@Column(length = 100)
	private String questions;
	
	@Column(nullable = false, length = 100)
	private String answer;
	
	@Column(nullable = false, length = 30)
	private String username;
	
	@Column(nullable = false, length = 4)
	private String gender;
	
	@Column
	private String tel;
	
	@Column(nullable = false, length = 100)
	private String mobile;
	
	@Column(nullable = false, length = 50)
	private String email;
	
	@Column(nullable = false, length = 100)
	private String address;
	
	@Column(nullable = false, length = 100)
	private String birthdate;
	
	@ColumnDefault("'user'")
	private String role; // Enum을 쓰는게 좋음, // admin, user, manager
	
	@CreationTimestamp
	private Timestamp createDate;
}

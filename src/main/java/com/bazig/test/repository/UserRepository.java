package com.bazig.test.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bazig.test.model.User;

//DAO
//자동으로 bean등록이 된다.
//따라서 @Repository 생략이 가능하다.
public interface UserRepository extends JpaRepository<User, Integer>{
	//User findByMemberIdAndPassword(String username, String password);
	
	Optional<User> findByMemberId(String memberId);
}

//JPA Naming 쿼리 전략
// findByUsernameAndPassword 실제로 없는 함수지만 
// SELECT * FROM users WHERE username=? AND password=?; 이런 쿼리가 동작한다.


// findByUsernameAndPassword와 똑같은 방식의 다른 방법
//@Query(value = "SELECT * FROM users WHERE username=?1 AND password=?2", nativeQuery = true)
//User login(String username, String password);
package com.greenacademy.websidepj.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.greenacademy.websidepj.entity.Feedback;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
	
	@Query("select f from Feedback f where f.customerName like %:customerName% ")
	public List<Feedback> searchByCustomer(@Param("customerName")String customerName);
}

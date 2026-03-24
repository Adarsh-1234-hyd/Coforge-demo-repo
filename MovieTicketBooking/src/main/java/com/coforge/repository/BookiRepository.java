package com.coforge.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.coforge.entity.Booking;

public interface BookiRepository extends JpaRepository<Booking, Long>{
       public List<Booking> findByShowTime(@Param("showTime") String showTime);
	    
       
       @Query(name = "select * from booking where customer_name = :cname",nativeQuery = true)
       public List<Booking> getAllBookingsByCustomerName(@Param("cname") String cname);
	   
        
       
}

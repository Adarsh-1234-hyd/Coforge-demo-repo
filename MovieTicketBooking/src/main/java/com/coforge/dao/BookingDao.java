package com.coforge.dao;

import com.coforge.repository.BookiRepository;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coforge.entity.Booking;
@Repository
public class BookingDao {
   
	
	@Autowired
     BookiRepository bookiRepository;


	public List<Booking> getallBookings(){
		 return bookiRepository.findAll();
	 } 
	 
	 public Booking addBooking(Booking booking) {
		 return bookiRepository.save(booking);
	 }
	 
	 public Optional<Booking> getBookingById(long bookingid){
		 return bookiRepository.findById(bookingid);
	 }
	 public List<Booking> getAllBookingsByCustomerName(String cname){
		 return bookiRepository.getAllBookingsByCustomerName(cname);
	 }
}

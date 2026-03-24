package com.coforge.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coforge.dao.BookingDao;
import com.coforge.entity.Booking;
@Service
public class BookingServices {
	@Autowired
	
   BookingDao bookingDao;
   
   public List<Booking> getallBookings(){
		 return bookingDao.getallBookings();
	 } 
	 
	 public Booking addBooking(Booking booking) {
		 return bookingDao.addBooking(booking);
	 }
	 
	 public Booking getBookingById(long bookingid){
		 return bookingDao.getBookingById(bookingid).orElseThrow(()-> new RuntimeException());
	 }
	 public List<Booking> getAllBookingsByCustomerName(String cname){
		 return bookingDao.getAllBookingsByCustomerName(cname);
	 }
}

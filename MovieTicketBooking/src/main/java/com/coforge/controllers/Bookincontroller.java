package com.coforge.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.coforge.entity.Booking;
import com.coforge.services.BookingServices;
@RestController
public class Bookincontroller {
   
	@Autowired
	BookingServices bookingServices;
	@GetMapping("/booking")
	public ResponseEntity<List<Booking>> getAllBooking(){
		return new ResponseEntity<>(bookingServices.getallBookings(),HttpStatus.OK);
	}
	@PostMapping("/booking/postit")
	public ResponseEntity<Booking>addBooking(@RequestBody Booking booking){
		return new ResponseEntity<>(bookingServices.addBooking(booking),HttpStatus.OK);
	}
	@GetMapping("/booking/{Bookingid}")
	public ResponseEntity<Booking >getMoviesById(@PathVariable("Bookingid") long Bookingid) {
		return new ResponseEntity<>(bookingServices.getBookingById(Bookingid),HttpStatus.OK);
	} 
	@GetMapping("/customername/{customername}")
	public ResponseEntity<List<Booking>> getAllBookingsByCustomerName(@PathVariable("customerName") String cname){
		 return new ResponseEntity<>(bookingServices.getAllBookingsByCustomerName(cname),HttpStatus.OK);
	 }
}
	

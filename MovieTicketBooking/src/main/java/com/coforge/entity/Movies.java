package com.coforge.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Data
public class Movies {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
      private long movieId;
      private String title;
      private String language;
      private double price;
      @OneToMany(mappedBy = "movie" , cascade = CascadeType.ALL)
      private List<Booking> bookingList;
	  public Movies(String title, String language, double price, List<Booking> bookingList) {
		super();
		this.title = title;
		this.language = language;
		this.price = price;
		this.bookingList = bookingList;
	  }
	  
      
      
}

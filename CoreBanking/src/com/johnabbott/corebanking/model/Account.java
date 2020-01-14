package com.johnabbott.corebanking.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name = "account")
public class Account {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "accNo", nullable = false, unique = true)
	private String accountNo;
	
	@Column(name = "balance")
	private String balance;
	
	@Column(name = "name")
	private int name;
	
	@Column(name = "status")
	private int status;
	
	/*
	 * @OneToOne(cascade = CascadeType.ALL)
	 * 
	 * @JoinColumn(name = "address_id") private AddressEntity address;
	 * 
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "teacher_id") private Teacher teacher;
	 */

}

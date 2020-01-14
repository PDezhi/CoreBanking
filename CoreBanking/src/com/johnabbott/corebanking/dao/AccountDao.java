package com.johnabbott.corebanking.dao;

import java.util.List;

import com.johnabbott.corebanking.model.Account;

public interface AccountDao {

	//insert
	public int insertAccount(Account account); 
	
	//Read
	public List<Account> getAccounts(); 
	public Account getAccountByNo(String accountNo); 
		
	//DELETE
	public boolean deleteAccount(String accountNo); 
	
	// UPDATE
	public boolean updateAccount(Account account); 

	
}

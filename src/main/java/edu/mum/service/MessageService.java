/**
 * 
 */
package edu.mum.service;

import java.util.List;

import edu.mum.domain.Messages;
import edu.mum.domain.User;

/**
 * @author Diana Yamaletdinova
 * May 21, 2017
 */
public interface MessageService {
	
	public void save(Messages msg);
	public User findByUserId(String id);
	public List<Messages> findAll();
	
}

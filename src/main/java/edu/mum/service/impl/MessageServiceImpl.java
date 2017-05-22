/**
 * 
 */
package edu.mum.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.dao.MessageDao;
import edu.mum.domain.Messages;
import edu.mum.domain.User;

/**
 * @author Diana Yamaletdinova
 * May 22, 2017
 */
@Service
@Transactional 
public class MessageServiceImpl implements edu.mum.service.MessageService{

	@Autowired 
	MessageDao messageDao;
	
	@Override
	public void save(Messages msg) {
		messageDao.save(msg);		
	}

	@Override
	public User findByUserId(String id) {
		return null;
	}

}

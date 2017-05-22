/**
 * 
 */
package edu.mum.dao.impl;

import org.springframework.stereotype.Repository;

import edu.mum.dao.MessageDao;
import edu.mum.dao.UserCredentialsDao;
import edu.mum.domain.Messages;
import edu.mum.domain.UserCredentials;

/**
 * @author Diana Yamaletdinova
 * May 21, 2017
 */
@SuppressWarnings("unchecked")
@Repository
public class MessageDaoImpl extends GenericDaoImpl<Messages> implements MessageDao {

	/* (non-Javadoc)
	 * @see edu.mum.dao.MessageDao#findByUserId(java.lang.String)
	 */
	@Override
	public Messages findByUserId(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}

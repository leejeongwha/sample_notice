package com.sample.user.dao;

import com.sample.user.model.User;

public interface UserDAO {
	boolean addUser(User user);

	User getUser(String id);
}

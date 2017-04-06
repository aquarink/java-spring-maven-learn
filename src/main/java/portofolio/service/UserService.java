package portofolio.service;

import java.util.List;

import portofolio.model.User;

public interface UserService {
	
	public List<User> listAllUser();
	
	public void addUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(int id);
	
	public User findUserById(int id);
}

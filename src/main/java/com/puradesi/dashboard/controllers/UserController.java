package com.puradesi.dashboard.controllers;

import com.puradesi.dashboard.dto.Result;
import com.puradesi.dashboard.integration.WmsRestClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class UserController {

	@Autowired
    WmsRestClient wmsRestClient;
	@Autowired
	RestTemplate restTemplate;

	@RequestMapping("/showUsers")
	public String showUsers(ModelMap modelMap) {
		String users = wmsRestClient.showUsersJSON();
		modelMap.addAttribute("users", users);
		return "showUserPage";

	}

	@RequestMapping("/showCreateUser")
	public String showCreateUser() {
		return "createUserPage";

	}

//	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
//	public String createUser(@ModelAttribute("user") User user, ModelMap modelMap) {
//		User userCeated = wmsRestClient.createUser(user);
//		String userName = userCeated.getUserName();
//		if (!userName.equalsIgnoreCase("User already exists")) {
//			modelMap.addAttribute("userCeated", userCeated);
//			modelMap.addAttribute("msg", "User created");
//			return "createUserPage";
//		}
//		modelMap.addAttribute("msg", "User already exists");
//		return "createUserPage";
//
//	}

	@RequestMapping("/showDeleteUser")
	public String showDeleteUser() {
		return "deleteUserPage";

	}

//	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
//	public String deleteUser(@ModelAttribute("user") User user, ModelMap modelMap) {
//		Result<User> deleteUser = wmsRestClient.deleteUser(user);
//		String message = deleteUser.getMessage();
//		deleteUser.getResponse();
//		modelMap.addAttribute("msg", message);
//		return "deleteUserPage";
//
//	}

//	@RequestMapping(value = "/editUser", method = RequestMethod.GET)
//	public String editUser(@RequestParam(value = "id", required = false) String id, ModelMap modelMap) {
//		User userToEdit = wmsRestClient.getUser(id);
//		modelMap.addAttribute("userToEdit", userToEdit);
//		return "editUserPage";
//	}
//
//	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
//	public String updateUser(@ModelAttribute("user") User user, ModelMap modelMap) {
//		User userToEdit = wmsRestClient.updateUser(user);
//		if (userToEdit != null) {
//			modelMap.addAttribute("userToEdit", userToEdit);
//			modelMap.addAttribute("msg", "User updated successfully");
//			return "editUserPage";
//		} else {
//			modelMap.addAttribute("msg", "Some Error Occurred ");
//			return "editUserPage";
//		}
//	}
//
//	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
//	public String deleteUser(@RequestParam("id") Long id, ModelMap modelMap) {
//		String deletedUser = wmsRestClient.deleteUser(id);
//		if (deletedUser != null) {
//			modelMap.addAttribute("msg", deletedUser);
//			return "editUserPage";
//		} else {
//			modelMap.addAttribute("msg", "Some Error Occurred ");
//			return "editUserPage";
//		}
//	}

}

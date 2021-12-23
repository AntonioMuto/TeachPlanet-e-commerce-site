package techPlanet.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import techPlanet.Database;

@Controller
//MVC
public class UpdateProfile {
	

	@PostMapping("/update")
	public String faiLogin(HttpServletRequest req, HttpServletResponse resp, String name, String surname, String phonenumber, String addressline1, String addressline2, String postcode, String country, String stateregion ) throws IOException {
		
		if(Database.getInstance().getUpdateProfile().faiLogin(req, resp, name, surname, phonenumber, addressline1, addressline2, postcode, country, stateregion))
			return null;
		return "editProfile.html";
	}
	

}

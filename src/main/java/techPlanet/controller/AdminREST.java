package techPlanet.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import techPlanet.Database;
import techPlanet.model.Report;
import techPlanet.model.ReturnRequest;

@RestController
public class AdminREST {

	@PostMapping("/eliminaReport")
	public void eliminaReport(@RequestParam String id) {
		
		Report report = Database.getInstance().getReport().findById(Long.parseLong(id));
		
		Database.getInstance().getReport().delete(report);
	}
	
	
	
	@PostMapping("/updateRequest")
	public void updateRequest(@RequestBody ReturnRequest returnRequest) {
		Database.getInstance().getReturnRequest().update(returnRequest);
	}
	
}
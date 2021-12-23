package techPlanet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import techPlanet.controller.SignUp;
import techPlanet.controller.UpdateProfile;
import techPlanet.persistenza.Login;
import techPlanet.persistenza.dao.CurriculumDao;
import techPlanet.persistenza.dao.JobDao;
import techPlanet.persistenza.dao.ProductDao;
import techPlanet.persistenza.dao.ReportDao;
import techPlanet.persistenza.dao.jdbc.CurriculumDaoJDBC;
import techPlanet.persistenza.dao.jdbc.JobDaoJDBC;
import techPlanet.persistenza.dao.jdbc.ProductDaoJDBC;
import techPlanet.persistenza.dao.jdbc.ReportDaoJDBC;

public class Database {
	
	private static Database instance = null;
	private Connection conn;
	
	public static Database getInstance() {
		if (instance == null) {
			instance = new Database();
		}
		return instance;
	}
	
	private Database() {
		try {
			conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", 
											"postgres", "postgres");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ProductDao getProductsDao() {
		return new ProductDaoJDBC(conn);
	}

	public JobDao getJobDao() {
		return new JobDaoJDBC(conn);
	}
	
	public Login getLogin() {
		return new Login(conn);
	}

	public SignUp getSignUp() {
		return new SignUp(conn);
	}
	
	public UpdateProfile getUpdateProfile() {
		return new UpdateProfile(conn);
	}
	
	public CurriculumDao getCurriculum() {
		return new CurriculumDaoJDBC(conn);
	}
	
	public ReportDao getReport() {
		return new ReportDaoJDBC(conn);
	}
	
}

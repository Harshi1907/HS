package com.job.in.JobService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.job.in.JobDAO.JobDAO;
import com.job.in.RegisterDTO.AdminDTO;
import com.job.in.RegisterDTO.CompanyDTO;
import com.job.in.RegisterDTO.RegisterDTO;

@Component
public class CommonService {

	@Autowired
	JobDAO d1;
	public boolean RegisterService(RegisterDTO rd) {

		return d1.RegisterDAO(rd);	}
	
	
	public RegisterDTO  LoginService(RegisterDTO rd) {
		return d1.LoginDAO(rd);
	}


	public boolean CriteriaService(RegisterDTO rd) {
		return d1.CriteriaDAO(rd);
	}


	public boolean CompanyService(CompanyDTO cd) {
		
		return d1.ComapnyDAO(cd);
	}


	public boolean AdminService(AdminDTO ad) {
		
		return d1.AdminDAO(ad);
	}


	public List getCompanyDetails() {
		return d1.getCompanyDetails();
	}


	public CompanyDTO ApplyDetails(int cid) {
		return d1.ApplyDetails(cid);
	}


	public AdminDTO AdminLoginService(AdminDTO ad) {
		return d1.AdminLoginDAO(ad);
	}

}

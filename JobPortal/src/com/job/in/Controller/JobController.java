package com.job.in.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.job.in.JobService.CommonService;
import com.job.in.RegisterDTO.AdminDTO;
import com.job.in.RegisterDTO.CompanyDTO;
import com.job.in.RegisterDTO.RegisterDTO;

@Component
@RequestMapping("/")
public class JobController {
	
	@Autowired
	CommonService s1;
	
	@RequestMapping("/JobRegister")
	public String m1(){
		System.out.println("index page register is called");
		return "JobRegister";
	}
	
	@RequestMapping("/RegisterServlet")
	public ModelAndView mv(@ModelAttribute RegisterDTO rd){
		
		System.out.println("controller");
		try {
			boolean b1=s1.RegisterService(rd);
			return new ModelAndView("Criteria","k1",rd);
			
		} catch (Exception e) {
			return new ModelAndView("JobRegister","k1", "registration"
					+ " failed please try again");
		}
		
		
	}
	//Login
	@RequestMapping("/JobLogin")
	public String m2(){
		System.out.println("index page login is called");
		return "JobLogin";
	}
	
	@RequestMapping("/LoginServlet")
	public ModelAndView mv1(@ModelAttribute RegisterDTO rd){
		
		System.out.println("controller");
		try {
			boolean b2=s1.LoginService(rd);
			return new ModelAndView("Criteria","l1",rd);
			
		} catch (Exception e) {
			return new ModelAndView("JobLogin","l1", "login"
					+ " failed please try again");
		}
		
		
	}
//Criteria
	
	@RequestMapping("/Criteria")
	public String m3(){
		System.out.println("criteria page is called");
		return "criteria";
	}
	
	@RequestMapping("/CriteriaServlet")
	public ModelAndView mv2(@ModelAttribute RegisterDTO rd){
		
		System.out.println("controller criteria");
		try {
			boolean b3=s1.CriteriaService(rd);
			return new ModelAndView("CompanyEligible","c1",rd);
			
		} catch (Exception e) {
			return new ModelAndView("criteria","c1", "you are not eligible to apply for job");
		}
		
		
	}
	
//Company Details
	
	@RequestMapping("/CompanyDetails")
	public String m4(){
		System.out.println(" page  is called");
		return "CompanyDetails";
	}
	
	@RequestMapping("/CompanyServlet")
	public ModelAndView mv3(@ModelAttribute CompanyDTO cd){
		
		System.out.println("controller company");
		
			boolean b4=s1.CompanyService(cd);
			return new ModelAndView("CompanyDetails","c1","Your company is registered");
			
		
		
		
	}
	
	
	//Admin Details

	@RequestMapping("/JobAdmin")
	public String m5(){
		System.out.println("admin index page  is called");
		return "JobAdmin";
	}
	
	@RequestMapping("/AdminServlet")
	public ModelAndView mv4(@ModelAttribute AdminDTO ad){
		
		System.out.println("controller admin");
		
			boolean b5=s1.AdminService(ad);
			return new ModelAndView("CompanyDetails","a1",ad);
			}
	//Company Elegible
	
	@RequestMapping("/CompanyEligible")
	public ModelAndView m6(){
	List l1= s1.getCompanyDetails();
		return new ModelAndView("CompanyEligible","m6",l1);
	}
	
@RequestMapping("/ApplyLink")
	
	public String apply(@RequestParam int cid){
		
		CompanyDTO cd2=s1.ApplyDetails(cid);
		
		return  "redirect:/CompanyEligible";
		
	}

}

package com.job.in.JobDAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.job.in.RegisterDTO.AdminDTO;
import com.job.in.RegisterDTO.CompanyDTO;
import com.job.in.RegisterDTO.RegisterDTO;

@Component
public class JobDAO {

	@Autowired
	SessionFactory sf;
	public boolean RegisterDAO(RegisterDTO rd) {
		Session s=sf.openSession();
		s.save(rd);
		Transaction t=s.beginTransaction();
		t.commit();
		return true;
	}
	public RegisterDTO LoginDAO(RegisterDTO rd) {
		Session s=sf.openSession();
		Criteria c=s.createCriteria(RegisterDTO.class);
		c.add(Restrictions.eq("email", rd.getEmail()));
		c.add(Restrictions.eq("password", rd.getPassword()));
		RegisterDTO rd1= (RegisterDTO) c.uniqueResult();
		System.out.println("rd1=========" + rd1);
		return rd1;
	}
	public boolean CriteriaDAO(RegisterDTO rd) {
		Session s= sf.openSession();
		Criteria c=s.createCriteria(RegisterDTO.class);
		c.add(Restrictions.ge("percentage", 70));
		return true;
		
			
		}
	public boolean ComapnyDAO(CompanyDTO cd) {
		Session s=sf.openSession();
		s.save(cd);
		Transaction t=s.beginTransaction();
		t.commit();
		return true;
	}
	public boolean AdminDAO(AdminDTO ad) {
		Session s=sf.openSession();
		s.save(ad);
		Transaction t=s.beginTransaction();
		t.commit();
		return true;
	}
	public List getCompanyDetails() {
		Session s=sf.openSession();
		Criteria c=s.createCriteria(CompanyDTO.class);
		List l1=c.list();
		return l1;
	}
	public CompanyDTO ApplyDetails(int cid) {
		Session s= sf.openSession();
		Criteria c=s.createCriteria(CompanyDTO.class);
		c.add(Restrictions.eq("cid", cid));
		CompanyDTO cdt=(CompanyDTO) c.uniqueResult();
		
		return cdt;
	}
	public AdminDTO AdminLoginDAO(AdminDTO ad) {
		Session s=sf.openSession();
		Criteria c=s.createCriteria(AdminDTO.class);
		c.add(Restrictions.eq("adminname", ad.getAdminname()));
		c.add(Restrictions.eq("adminpass", ad.getAdminpass()));
		AdminDTO ad1= (AdminDTO) c.uniqueResult();
		System.out.println("rd1=========" + ad1);
		return ad1;
	}
	}
	



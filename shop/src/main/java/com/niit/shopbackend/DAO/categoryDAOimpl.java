package com.niit.shopbackend.DAO;


import java.util.ArrayList;
import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shop.model.category;

@Repository("categoryDAO")
public  class categoryDAOimpl implements categoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	public categoryDAOimpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<category> list() {
		@SuppressWarnings("unchecked")
		List<category> listCategory = (List<category>) sessionFactory.getCurrentSession()
				.createCriteria(category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;
	}

	@Transactional
	public void saveOrUpdate(category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	@Transactional
	public void delete(String id) {
		category CategoryToDelete = new category();
		CategoryToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(CategoryToDelete);
	}

	@Transactional
	public category get(String id) {
		String hql = "from Category where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		category c=null;
		
		@SuppressWarnings("unchecked")
		List<category> listCategory = (List<category>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) 
			c=listCategory.get(0);
		
		
		return c;
	}


}
	

		
		
	
		
	
	
	
	
		
			
			
		
		

	
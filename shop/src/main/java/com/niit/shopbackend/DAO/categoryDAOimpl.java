package com.niit.shopbackend.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopbackend.model.category;

@Repository("categoryDAO")
public class categoryDAOimpl implements categoryDAO {
	

	@Autowired
	private SessionFactory sessionFactory;
    public categoryDAOimpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<category> list() {
		@SuppressWarnings("unchecked")
		List<category> listCategory = (List<category>) sessionFactory.openSession()
				.createCriteria(categoryDAO.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
return listCategory;
	}

	@Transactional
	public void saveOrUpdate(categoryDAOimpl category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	@Transactional
	public categoryDAO get(String id) {
		String hql = "from Category where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<categoryDAOimpl> listCategory = (List<categoryDAOimpl>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		
		return null;
	}

	public void saveOrUpdate(categoryDAO category) {
		// TODO Auto-generated method stub
		
	}
}

	
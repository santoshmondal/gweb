package in.async.spring.hibernate;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SpringHibernateBean extends HibernateDaoSupport {

	public void insert(Student student) {
		getHibernateTemplate().save(student);
	}

	public void addStudent(Student student) {
		getHibernateTemplate().save(student);
	}
}

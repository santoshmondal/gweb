package in.async.spring.hibernate;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PSMain {

	public static void main(String args[]) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-bean.xml");
		SpringHibernateBean hsbean = (SpringHibernateBean) ctx.getBean("hsbean");

		Student std = new Student();
		std.setName("sholay");

		hsbean.insert(std);

		// Applying transcationManager here
		hsbean = (SpringHibernateBean) ctx.getBean("hsbean");
		hsbean.addStudent(std);

	}

}

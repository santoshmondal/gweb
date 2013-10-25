package in.async.spring.intro;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PSVm {

	public static void main(String args[]) {

		ApplicationContext context = new ClassPathXmlApplicationContext("spring-bean.xml");

		// DEMO::1
		Hello hello = (Hello) context.getBean("hello");
		String data = hello.sayHello();
		System.out.println(data);

		// DEMO::2
		Hello hc = (Hello) context.getBean("hc");
		String data1 = hc.sayHC();
		System.out.println(data1);

		// DEMO::3
		Hello hcint = (Hello) context.getBean("hcInt");
		String shcInt = hcint.sayHCInt();
		System.out.println(shcInt);

		// DEMO::4
		Hello hcGSOBJ = (Hello) context.getBean("hcgs");
		String hcgsdata = hcGSOBJ.sayGSHi();
		System.out.println(hcgsdata);

		Hello ref = (Hello) context.getBean("refbean");
		Student st = ref.getHIStudent();
		System.out.println(st.getName());
	}

}

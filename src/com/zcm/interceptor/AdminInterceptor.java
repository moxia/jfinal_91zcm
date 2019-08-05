package com.zcm.interceptor;


import com.jfinal.aop.Invocation;
import com.zcm.vo.AdminVO;
import com.jfinal.aop.Interceptor;
import com.jfinal.core.Controller;

/**
 * 权限拦截器
 * 
 * @author john
 * @date 2013-03-27
 */
public class AdminInterceptor implements Interceptor {
	
	public void intercept(Invocation ai) {
		Controller controller = ai.getController();
		AdminVO admin = controller.getSessionAttr("sysadmin");
		if (admin != null) {
			ai.invoke();
		} else {
			controller.redirect("/sysadmin/login.jsp");
		}
	}
}

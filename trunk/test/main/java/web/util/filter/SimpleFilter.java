package web.util.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import common.util.CommonUtil;

/**
 * Servlet Filter implementation class SimpleFilter
 */
@WebFilter("/SimpleFilterServlet")
public class SimpleFilter implements Filter {

	private static final Logger LOG = Logger.getLogger(SimpleFilter.class);
	private FilterConfig config;

	/**
	 * @see Filter#destroy()
	 */
	@Override
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
			ServletException {

		long stime = System.currentTimeMillis();
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		SimpleResponseWrapper responseWrapper = new SimpleResponseWrapper(httpResponse);
		chain.doFilter(request, responseWrapper);

		String contentType = response.getContentType();
		String reqdata1 = (String) request.getAttribute("REQUEST_DATA1");
		String oResponse = responseWrapper.toString();
		LOG.info("Original Response " + oResponse);

		/*
		 * response.setContentType(ResponseType.TEXT_HTML);
		 * response.getWriter().println("Hello Filter Output!!" + reqdata1);
		 */

		long etime = System.currentTimeMillis();
		LOG.info("Response processing::" + contentType + "," + reqdata1 + "," + CommonUtil.getTimeDifference(stime, etime));
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		config = fConfig;
	}

}

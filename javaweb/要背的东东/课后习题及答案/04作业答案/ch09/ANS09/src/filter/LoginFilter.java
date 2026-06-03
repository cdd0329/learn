package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {
	public void init(FilterConfig config) throws ServletException {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding("gb2312");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		String account = (String) session.getAttribute("account");
		String password = (String) session.getAttribute("password");
		if (account != null && password != null) {
			chain.doFilter(request, response);
		} else {
			req.getRequestDispatcher("/ans05.jsp").forward(request, response);
		}
	}
}

package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginFilter_2 implements Filter {
	public void init(FilterConfig config) throws ServletException {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding("gb2312");
		HttpServletRequest req = (HttpServletRequest) request;
		Cookie[] cookies = req.getCookies();
		String account = "";
		String password = "";
		if (cookies != null && cookies.length != 0) {
			for (int i = 0; i < cookies.length; i++) {
				System.out.println(cookies[i].getName() + "--"
						+ cookies[i].getValue());
				if (cookies[i] != null) {
					if (cookies[i].getName().equals("account")) {
						account = cookies[i].getValue();
					}
				}
				if (cookies[i] != null) {
					if (cookies[i].getName().equals("password")) {
						password = cookies[i].getValue();
					}
				}
			}
		}

		if (!account.equals("") && !(password.equals(""))
				&& account.equals(password)) {
			req.getRequestDispatcher("/index.jsp").forward(request, response);
		} else {
			req.getRequestDispatcher("/ans06.jsp").forward(request, response);
		}
	}
}

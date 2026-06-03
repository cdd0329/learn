package ah.com.ajaxservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class JsonAjaxServlet
 */
@WebServlet("/JsonAjaxServlet")
public class JsonAjaxServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonAjaxServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String  json="";
        StringBuffer strbuff=new StringBuffer("{");
        strbuff.append("\"xm\":"+"\"zhang\""+",");
        strbuff.append("\"xb\":"+"\"女\""+",");
        strbuff.append("\"x\":"+"\"高中\"");
        strbuff.append("}");
        json=strbuff.toString();
        response.getWriter().print(json); // 将数据返回到前端

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

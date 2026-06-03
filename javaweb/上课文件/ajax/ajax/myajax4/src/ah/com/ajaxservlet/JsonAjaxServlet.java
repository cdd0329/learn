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
public class JsonAjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonAjaxServlet() {
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

        JSONObject json = new JSONObject();
        JSONArray obj = new JSONArray();
         // 模拟读取数据库
            try {
                if(name.equals("test")) {
                    obj.add(0, "ok");
                }else {
                    obj.add(0, "bad");
                }
                json.put("message", obj); // 将数据写到要返回的对象中
            } catch (JSONException e) {
                e.printStackTrace();
            }
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

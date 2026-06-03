package ans14.actions;

import java.util.ArrayList;

import ans14.dao.StudentDao;

public class SearchAction {
	private String sutname;
	ArrayList stuList = new ArrayList();

	public String getSutname() {
		return sutname;
	}
	public void setSutname(String sutname) {
		this.sutname = sutname;
	}
	public ArrayList getStuList() {
		return stuList;
	}
	public void setStuList(ArrayList stuList) {
		this.stuList = stuList;
	}
	
	public String execute() throws Exception {
		StudentDao studentDao = new StudentDao();
		stuList = studentDao.queryStudentsByName(sutname);
		return "success";
	}
}

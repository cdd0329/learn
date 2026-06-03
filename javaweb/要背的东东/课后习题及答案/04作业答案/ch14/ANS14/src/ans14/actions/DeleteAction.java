package ans14.actions;

import ans14.dao.StudentDao;

public class DeleteAction {
	private String stuno;

	public String getStuno() {
		return stuno;
	}
	public void setStuno(String stuno) {
		this.stuno = stuno;
	}
	
	public String execute() throws Exception {
		StudentDao studentDao = new StudentDao();
		studentDao.deleteStudentByNo(stuno);
		return "success";
	}
}

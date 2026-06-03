package beans;

public class Customer {
      private String account;
      private String password;
      private String cname;
      private boolean member;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public boolean isMember() {
		return member;
	}
	public void setMember(boolean member) {
		this.member = member;
	}
}

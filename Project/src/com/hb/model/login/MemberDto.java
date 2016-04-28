package com.hb.model.login;

public class MemberDto {
	private String id;
	private String pw;
	private String name;
	private String gender;
	private String tel;
	private String tel2;
	private String tel3;
	private String phone;
	private String phone2;
	private String phone3;
	private String email;
	private String email2;
	private String emailagree;
	private String postnum;
	private String addrresult1;
	private String addrresult2;
	private int authno;
	private int memno;
	private int level;
	private String memname;
	private String memgender;
	private String memphone;
	private Object memtel;
	private String memaddress;
	private String mememail;
	private String joinday;
	
	
	public MemberDto(String id, String pw, String name, String gender,
			String tel, String tel2, String tel3, String phone,
			String phone2, String phone3, String email, String email2,
			String emailagree, String postnum, String addrresult1,
			String addrresult2, int authno) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.tel = tel;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.phone = phone;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.email = email;
		this.email2 = email2;
		this.emailagree = emailagree;
		this.postnum = postnum;
		this.addrresult1 = addrresult1;
		this.addrresult2 = addrresult2;
	}
	public MemberDto(int memno, int level, String memname, String memgender, String memphone,
			String memtel, String memaddress, String mememail, String emailagree,
			String joinday) {
		this.memno = memno;
		this.level = level;
		this.memname = memname;
		this.memgender = memgender;
		this.memphone = memphone;
		this.memtel = memtel;
		this.memaddress = memaddress;
		this.mememail = mememail;
		this.emailagree = emailagree;
		this.joinday = joinday;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getName() {
		return name;
	}
	public String getGender() {
		return gender;
	}
	public String getTel() {
		return tel;
	}
	public String getTel2() {
		return tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public String getPhone() {
		return phone;
	}
	public String getPhone2() {
		return phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public String getEmail() {
		return email;
	}
	public String getEmail2() {
		return email2;
	}
	public String getEmailagree() {
		return emailagree;
	}
	public String getPostnum() {
		return postnum;
	}
	public String getAddrresult1() {
		return addrresult1;
	}
	public String getAddrresult2() {
		return addrresult2;
	}
	public int getAuthno() {
		return authno;
	}
	public int getMemno() {
		return memno;
	}
	public String getMemname() {
		return memname;
	}
	public String getMemgender() {
		return memgender;
	}
	public String getMemphone() {
		return memphone;
	}
	public Object getMemtel() {
		return memtel;
	}
	public String getMemaddress() {
		return memaddress;
	}
	public String getMememail() {
		return mememail;
	}
	public String getJoinday() {
		return joinday;
	}
	public int getLevel() {
		return level;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public void setEmailagree(String emailagree) {
		this.emailagree = emailagree;
	}
	public void setPostnum(String postnum) {
		this.postnum = postnum;
	}
	public void setAddrresult1(String addrresult1) {
		this.addrresult1 = addrresult1;
	}
	public void setAddrresult2(String addrresult2) {
		this.addrresult2 = addrresult2;
	}
	public void setAuthno(int authno) {
		this.authno = authno;
	}
	public void setMemno(int memno) {
		this.memno = memno;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public void setMemgender(String memgender) {
		this.memgender = memgender;
	}
	public void setMemphone(String memphone) {
		this.memphone = memphone;
	}
	public void setMemtel(Object memtel) {
		this.memtel = memtel;
	}
	public void setMemaddress(String memaddress) {
		this.memaddress = memaddress;
	}
	public void setMememail(String mememail) {
		this.mememail = mememail;
	}
	public void setJoinday(String joinday) {
		this.joinday = joinday;
	}
	public void setLevel(int level) {
		this.level = level;
	}
}

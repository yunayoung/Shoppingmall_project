<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" 
    import="java.sql.*"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> ChangeProfile_hobby </title>
</head>
<body>
 
    <h1> TYPE 변경 </h1>
    <br /> <form action="CHANGEPROFILE_TYPE_CHECK.jsp" method="post" onsubmit="return input_check_func()">
    <br /> 
    <br /> 지금 type :
    <%
    String strUserName = "dkelab";
	  String strPassword = "dkelab522";
	 String strConnectString = "jdbc:mysql://155.230.36.58:3306/test";
	 String DBMS_DRIVER_CLASS_NAME = "com.mysql.cj.jdbc.Driver";
	 Connection conn = null;
		
		try {
			// Load a JDBC driver for Oracle DBMS
			Class.forName(DBMS_DRIVER_CLASS_NAME);
			// Get a Connection object 
			System.out.println("Success!");
		}catch(ClassNotFoundException e) {
			System.err.println("error = " + e.getMessage());
			System.exit(1);
		}
		
		      try{

		       conn = DriverManager.getConnection(strConnectString,strUserName, strPassword);
		
		      }catch (SQLException ex) {
		    	  System.err.println("Cannot get a connection: " + ex.getMessage());
					System.exit(1);
		      }
		    try{
 
            // sql 구사
            // USERTABLE 안에있는 USER_ID= 현재 로그인한 ID 필드로 가서
            // USER_HOBBY 값을 들고와라
            Statement st = conn.createStatement();
            String sql = "SELECT Type FROM CUSTOMER WHERE Customer_id='" + session.getAttribute("id") +"'";
           // st.executeUpdate(sql);
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next()) {
                // rs 안에 들어있는 놈이 있다면 값 출력
                out.println(rs.getString(1));
            }
 
        } catch (Exception e) {
            out.println("DB 연동 실패");
        }
    %>
    <br /> 
    <br /> 바꿀 type: 
                  <input type="radio" id="change_sex" name="change_type" value="R" >R 도매
                        <input type="radio"id="change_sex" name="change_type" value="W" >W 소매
    <br /> 					 <input type="radio"id="change_sex" name="change_type" value="E" >E 기타
    <br /> <button>변경</button>
    <br /> </form>
    
    <script>
        // input_check_func는 취미변경에 필요한 문항을 채워 넣었는지 check 해준다
        // 이는 form onsubmit에 의해 발동되며 return 값이 false 일 경우 페이지의 데이터가 action= 좌표로 넘어가지 않게된다
        function input_check_func() {
            var change_sex = document.getElementById('change_type').value;
 
            if (change_sex == null || change_sex == "") {
                alert("공백은 허용치 않는다");
                return false;
            } else {
                // input이 공백인지 유무가 통과되면 action=좌표 로 이동한다
                return true;
            }
        }
    </script>
  <br /> <button onClick="location.href='main.jsp'"> 메인으로 돌아가기 </button>
</body>
</html>
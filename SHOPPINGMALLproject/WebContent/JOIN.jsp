<%@ page language="java" 
    contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title> Join </title>
</head>
<body>
 
    <h1> ȸ������ ȭ�� </h1>
    <style>
        #wrap{
            width:530px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            border:3px solid skyblue
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
    <form action="JOIN_CHECK.jsp" method="post" onsubmit="return checkValue()">
    <table border="1">
        <tr>
            <th> ���̵� </th> <td> <input type ="text" id="JOIN_id" name="JOIN_id">
                 <input type="button" value="�ߺ�Ȯ��" onclick ="openIdChk()" >
                    <input type="hidden" value="JOIN_iddup" onclick ="openIdChk()" >      
                    </td>
        </tr>
        <tr>
            <th> ��й�ȣ </th> <td> <input type="password" id="JOIN_pw" name="JOIN_pw"> </td>
        </tr>
        <tr>
        	      <td id="title">��й�ȣ Ȯ��</td>
                    <td>
                        <input type="password" name="passwordcheck" maxlength="15">
                    </td>
                </tr>

        <tr>
            <th> �ּ� </th> <td> <input id="JOIN_address" name="JOIN_address"> </td>
        </tr>
        <tr>
            <th> �޴�����ȣ </th> <td> <input id="JOIN_phonenumber" name="JOIN_phonenumber"> </td>
        </tr>
        <tr>
            <th> SEX </th> <td> <input id="JOIN_sex" name="JOIN_sex"> </td>
             <td>
             			
                        <input type="radio" name="gender" value="m" >m
                        <input type="radio" name="gender" value="f" >f
                     
                    </td>
        </tr>
        <tr>
            <th> JOB </th> <td> <input id="JOIN_job" name="JOIN_job"> </td>
        </tr>
         <tr>
            <th> TYPE </th>
             <td>
             			
                        <input type="radio" name="type" value="R" >R
                        <input type="radio" name="type" value="W" >W
                     	  <input type="radio" name="type" value="E" >E
                    </td>
        </tr>
         <tr>
            <th> �̸� </th> <td> <input id="JOIN_name" name="JOIN_name"> </td>
        </tr>
    </table>
    <button> �����ϱ� </button>
      </form>
         <br /> <button onClick="location.href='login.jsp'"> ��� </button>
  
    
    <script>
    // input_check_func�� ȸ�����Կ� �ʿ��� 3���� ������ ���δ� ä�� �־����� check ���ش�
    // �̴� form onsubmit�� ���� �ߵ��Ǹ� return ���� false �� ��� �������� �����Ͱ� action= ��ǥ�� �Ѿ�� �ʰԵȴ�
    function check_func() {
				var form = document.userInfo;
				if(!form.JOIN_id.value){
					alert("���̵� �Է��ϼ���");
					return false;
				}
				if(!form.JOIN_iddup.value != "idcheck"){
					alert("���̵� �ߺ��� üũ ���ּ���");
					return false;
				}
				if(!form.JOIN_pw.value){
					alert("��й�ȣ�� �Է��ϼ���");
					return false;
				}
				if(form.JOIN_pw.value != from.passwordcheck.value){
					alert("��й�ȣ�� ���� �ϰ� �Է��ϼ���.");
					return false;
				}
        
    }    
    </script>
 
</body>
</html>
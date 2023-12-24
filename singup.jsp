<%@ page import="java.sql.*" %>
<%
String name,uname,npass,cpass,phno,email,type;
name=request.getParameter("fn");
uname=request.getParameter("ln");
npass=request.getParameter("npass");
cpass=request.getParameter("cpass");
phno=request.getParameter("mo");
email=request.getParameter("em");
type=request.getParameter("type");
if(npass.equals(cpass)){
Connection conn;
Statement stmt;
try{
     Class.forName("com.mysql.cj.jdbc.Driver");
       conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
             stmt=conn.createStatement();
             int k=stmt.executeUpdate("insert into villagers values('"+name+"','"+uname+"','"+email+"','"+phno+"','"+npass+"','"+type+"')");
            int r=stmt.executeUpdate("insert into login values('"+uname+"','"+cpass+"','"+type+"')");
            conn.close();
 %>
<script>
    alert(" sign up succesfully");
    </script>
    <jsp:forward page="login.html"/>
<%

}
catch(Exception e)
{out.println(e);}
}
else{
%>
 <script>
  alert("enter the both password field with same passward")
  </script>
 
<%
}
   

%>
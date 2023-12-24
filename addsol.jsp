<%@ page import="java.sql.*" %>

<%
String s1,s2,s3,s4;
s2=request.getParameter("as2");
s1=request.getParameter("as1");
s3=request.getParameter("as3");
s4=request.getParameter("as4");


try{
     Connection con;
     Statement stm;
     Class.forName("com.mysql.cj.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rural","root","");
       stm=con.createStatement();
             int k=stm.executeUpdate("insert into solution values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
            con.close();
%>
  <script>
    alert("solution added succesfully")
  </script>

  <jsp:forward page="admin.jsp" />
<%
     
}
catch(Exception e){}
      
%>
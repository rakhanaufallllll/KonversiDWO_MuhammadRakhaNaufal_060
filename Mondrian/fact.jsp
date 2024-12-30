<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/public?user=root&password" 
    catalogUri="/WEB-INF/queries/fact.xml">

select {[Measures].[TotalAmount]} ON COLUMNS,
  {([Customer], [Film], [Payment], [RentalDate], [Staff], [Store])} ON ROWS

from [Fact]


</jp:mondrianQuery>



<c:set var="title01" scope="session">Query SALES using Mondrian OLAP</c:set>
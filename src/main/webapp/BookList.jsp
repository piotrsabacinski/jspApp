<%@ page import="libraryBooks.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="RandomPackageGenerator.BookGenerator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2017-10-02
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--Komentarz JSP - nie widzoczny w wygenerowanej stronie--%>
<!-- Komentarz HTML - widoczny na stronie -->

<%! int requestCount = 0; %>
<%--<%! Book book = BookGenerator.createBook("Java Podstawy", "Cay", "Horstmann"); %>--%>

<div><p>Tytuł strony</p></div>
<div style="float:left; width:30%"><p>Elementy strony</p></div>
<div style="float:right; width:70%">

    <p>Content strony</p>

    <%--    <%
            List<Book> list = BookGenerator.listGenerator(4);
    /*        list.add(BookGenerator.createBook("Java Podstawy", "Cay", "Horstmann"));
            list.add(BookGenerator.createBook("Inferno", "Dan", "Brown"));
            list.add(BookGenerator.createBook("Pan Tadeusz", "Adam", "Mickiewicz"));*/

        out.println("<table>");
            for (Book book: list){
                out.println("<tr>");
                out.println(String.format("<td>%s</td><td>%s</td><td>%d</td>",
                        book.getTitle(), book.getAuthor().toString(), book.getPageCount()));
                out.println("</tr>");

            }

        out.println("</table>");


        %>--%>

    <table>


        <c:forEach items="${list}" var="book">
            <tr>
                <td>${book.getTitle()}</td>
                <td>${book.getAuthor()}</td>
                <td>${book.getPageCount()}</td>
            </tr>
        </c:forEach>


    </table>

    <p> Ilość wywołań strony: <%= ++requestCount%>
    </p>

    <p> Ilość wywołań strony: $(requestCount%></p>


</div>


<div style="clear:both"></div>

</body>
</html>

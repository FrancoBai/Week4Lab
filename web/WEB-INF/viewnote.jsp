<%-- 
    Document   : viewnote
    Created on : Oct 2, 2020, 8:02:14 PM
    Author     : 829942
--%>

<%@page import="models.Note"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Note Keeper</title>
    </head>
    <body>
        <%
            String path = getServletContext().getRealPath("/WEB-INF/note.txt");
            Note note = new Note();
            note.ReadFile(path);
        %>
        <h1>Simple Note Keeper</h1>
        <h2>View Note</h2>
        <div><span style="font-weight: bold;">Title:</span><%=note.getTitle()%></div>
        <div>
            <div style="font-weight: bold;">Contents:</div>
            <div><%=note.getContent()%></div>   
        </div>
        <div><a href="note?edit=WEB-INF/editnote.jsp">Edit</a></div>
    </body>
</html>

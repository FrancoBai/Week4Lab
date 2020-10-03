<%-- 
    Document   : editnote
    Created on : Oct 2, 2020, 8:02:30 PM
    Author     : 829942
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Note Keeper</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>Edit Note</h2>
        <form method="post" action="./note">
            <div>
                Title:
                <input type="text" name="title" value="<%=request.getAttribute("editTitle")%>"/>
            </div>
            <div>
                Contents:
                <textarea rows="4" name="contents"><%=request.getAttribute("editContent")%></textarea>
            </div>
            <div>
    <!--            <button type="submit" name="save">Save</button>-->
                <input type="submit" name="save" value="Save"/>
            </div>
        </form>
    </body>
</html>

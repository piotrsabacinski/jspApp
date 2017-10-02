<%@ page import="java.time.LocalDate" %>
<%@ page import="RandomPackageGenerator.NumberGenerator" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.stream.Stream" %>
<html>
<head>
</head>
<body>
  <h1> HELLO world  <%= LocalDate.now() %> </h1>
  <p>Zawartosc zadania:</p>
 Host: <%= request.getHeader("Host") %>

Dzisiejsze numery totka to: <%= NumberGenerator.drawLottoNumber()%> </br>

Dzisiejsze typy dla Jackpot:
<%
    Random random = new Random();
    StringBuilder piecZ45 = new StringBuilder();
    StringBuilder dwaZ10 = new StringBuilder();

    for (int i = 0; i <5 ; i++) {
        if( i!=0){
            piecZ45.append(", ");
            dwaZ10.append(", ");
        }
        if ( i<2) {
            dwaZ10.append(random.nextInt(10) +1);
        }
        piecZ45.append(random.nextInt(45) +1);
    }
    out.println(piecZ45.toString());
    out.println("<br/> oraz dwie z 10");
    out.println(dwaZ10.toString());

    String userParams = request.getQueryString();
    if (userParams == null){
        response.sendRedirect("http://www.google.pl");
    } else {
        String[] params = userParams.split("&");
        String idParam = null;

        for (String param: params) {
            if (param.contains("id")) ;
            idParam = param;
            break;
        }
        if(idParam == null) {
            response.sendError(404);
        }else{
            out.println("Wartosc paremetru id: " +idParam);
    }

    }

%>


</body>
</html>
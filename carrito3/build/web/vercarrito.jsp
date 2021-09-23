<%@page import="java.util.ArrayList"%>
<%@page import="datos.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion=request.getSession();
    ArrayList<producto> listadeproductos;
    listadeproductos = (ArrayList<producto>) sesion.getAttribute("listadeproductos");
    int cantidadcarrito,total=0;
    if (listadeproductos == null) 
    {
    cantidadcarrito = 0;
    }
    else
    {
        cantidadcarrito = listadeproductos.size();
    }
    for(producto tmpproducto : listadeproductos)
    {
        total += tmpproducto.getPrecio()*tmpproducto.getCantidad();
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
    </head>
    <body>
        <h1>Carrito</h1>
        <table border="1">
            <thead>
                <tr>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>ID producto</td>
                     <td>Cantidad</td>
                      <td>Precio</td>
                </tr>
           
        <% for(producto tmpproducto : listadeproductos){%>
            <tr>
                    <td><%=tmpproducto.getIdProducto()%></td>
                    <td><%=tmpproducto.getPrecio()%></td>
                     <td><%=tmpproducto.getCantidad()%></td>
                      
                </tr>
        <%}%>
        <tr>
            <td colspan="2">Total $ <%=total%> </td>
            <td><<form action="servletcompra" method="POST">
                    <input type="submit" value="comprar" />
                </form> </td>
        </tr>
        </tbody>
        </table>
        <a href="index.jsp">Seguir comprando</a>
    </body>
</html>

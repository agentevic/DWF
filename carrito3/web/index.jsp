<%@page import="java.util.ArrayList"%>
<%@page import="datos.producto"%>
<%
    HttpSession sesion=request.getSession();
    ArrayList<producto> listadeproductos;
    listadeproductos = (ArrayList<producto>) sesion.getAttribute("listadeproductos");
    int cantidadcarrito;
    if (listadeproductos == null) 
    {
    cantidadcarrito = 0;
    }
    else
    {
        cantidadcarrito = listadeproductos.size();
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
    </head>
    <body>
        <h1>PC master race shop</h1>
        <table border="1">
            <thead>
                <tr>
                    <th></th>
                    <th><%
                        if (cantidadcarrito > 0)
                        { %>
                        <a  href = "vercarrito.jsp" > Ver carrito (<%=cantidadcarrito%>)
                        <%}
                        %></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <img src="img/airhawk.jpg" width="226" height="226" alt="airhawk"/>
                    Case AirHawk Duos ARGB $80.00
                    <form action="Servletagregar" method="POST">
                        <input type="hidden" name="idproducto" value="1" />
                        <input type="hidden" name="precio" value="80" />
                        <select name="Cantidad">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        <input type="submit" value="Agregar" />
                    </form>
                    </td>
                    <td>
                        <img src="img/fanpwm.jpg" width="226" height="226" alt="airhawk"/>
                    Fans Artic PWM $15.00
                     <form action="Servletagregar" method="POST">
                        <input type="hidden" name="idproducto" value="2" />
                        <input type="hidden" name="precio" value="15" />
                        <select name="Cantidad">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        <input type="submit" value="Agregar" />
                    </form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="img/kraken.jpg" width="226" height="226" alt="airhawk"/>
                    Razer Kraken X $50.00
                     <form action="Servletagregar" method="POST">
                        <input type="hidden" name="idproducto" value="3" />
                        <input type="hidden" name="precio" value="50" />
                        <select name="Cantidad">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        <input type="submit" value="Agregar" />
                    </form>
                    </td>
                    <td>
                        <img src="img/b450.jpg" width="226" height="226" alt="airhawk"/>
                    B450M PRO4-F $90.00
                     <form action="Servletagregar" method="POST">
                        <input type="hidden" name="idproducto" value="4" />
                        <input type="hidden" name="precio" value="90" />
                        <select name="Cantidad">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        <input type="submit" value="Agregar" />
                    </form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="img/g502.jpg" width="226" height="226" alt="airhawk"/>
                    Logitech G502 $50.00
                     <form action="Servletagregar" method="POST">
                        <input type="hidden" name="idproducto" value="5" />
                        <input type="hidden" name="precio" value="50" />
                        <select name="Cantidad">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        <input type="submit" value="Agregar" />
                    </form>
                    </td>
                    <td>
                        <img src="img/ryzen.jpg" width="226" height="226" alt="airhawk"/>
                    Ryzen 3600 $225.00
                     <form action="Servletagregar" method="POST">
                        <input type="hidden" name="idproducto" value="6" />
                        <input type="hidden" name="precio" value="225" />
                        <select name="Cantidad">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                        <input type="submit" value="Agregar" />
                    </form>
                    </td>
                </tr>
            </tbody>
        </table>

        
    </body>
</html>

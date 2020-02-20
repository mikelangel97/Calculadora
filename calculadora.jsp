<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="calculathor.calculadora" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculator</title>
        <link rel="stylesheet" href="calculadora.css">
    </head>
    <%
    String boton=request.getParameter("boton");
    if(boton==null)boton="";
    String acomulado=request.getParameter("acomulado");
    if(acomulado==null)acomulado="";
    acomulado=acomulado+boton;
    calculadora c = new calculadora();
    
    int num1, num2, resultado;

    num1 = Integer.parseInt(request.getParameter("n1"));
    num2 = Integer.parseInt(request.getParameter("n2"));
    String opcion = request.getParameter("acomulado");

    if (opcion.equals("Suma")) {
                resultado = num1 + num2;
            } else if (opcion.equals("Resta")) {
                resultado = num1 - num2;
            } else if (opcion.equals("Multi")) {
                resultado = num1 * num2;
            } else if (opcion.equals("Divi")) {
                resultado = num1 / num2;
            }
    %>
    <body>
        <div id='calc-contain'>
  
          <form name="calculator" action="index.jsp">
              <p>Calculadora</p>

            <input type="textfield" name="resultado" value="<%out.print(acomulado); %>" >
            <input type="hidden" value="<%out.print(acomulado); %>"  name="acomulado" >
            
            <br>
            
            <input type="submit" value=" 1 " name="boton">
            <input type="submit" value=" 2 "  name="boton">
            <input type="submit" value=" 3 "  name="boton">
            <input type="submit" value=" + " name="boton" >
            <br/>
            
            <input type="submit" value=" 4 "  name="boton">
            <input type="submit" value=" 5 "  name="boton">
            <input type="submit" value=" 6 " name="boton">
            <input type="submit" value=" - " name="boton">
            </br>
          
            <input type="submit" value=" 7 "  name="boton">
            <input type="submit" value=" 8 "  name="boton">
            <input type="submit" value=" 9 "  name="boton">
            <input type="submit" value=" x "  name="boton">
            </br>
        
            <input type="submit" value=" c " name="boton">
            <input type="submit" value=" 0 "  name="boton">
            <input type="submit" value=" = "  name="boton" value="enviar">
            <input type="submit" value=" / " name="boton">
            </br>
          </form>
          <div id="agh">
            <p>Miguel Angel Riera Llodrá</p>
          </div>
        </div>
    </body>
</html>

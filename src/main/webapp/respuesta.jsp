<%-- 
    Document   : respuesta
    Created on : 26/09/2020, 05:25:56 PM
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backEnd.Calculadora" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <%--aplicamos el mismo estilo que el index.jsp--%>
        <style>
            <%@include file="estilo.css" %>
        </style>
    </head>
    <body>
        <!verificamos si los valores ingresados son numeros aceptables>
        <%
            try{
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));            
        %>
         <!verificamos si el radio de suma fue seleccionado>
        <% if(request.getParameter("suma") != null){ %>
        <h1>Suma: </h1>
        <p><%= Calculadora.sumar(num1,num2) %></p> <!llamamos al metodo de sumar y lo agregamos en un parrafo>
        <% } %>   
        
        <!verificamos si el radio de la multiplicacion fue seleccionado>
        <% if(request.getParameter("mult") != null){ %>
        <h1>Multiplicacion: </h1>
        <p><%= Calculadora.multiplicar(num1,num2) %></p> <!llamamos al metodo de multiplicar y lo agregamos en un parrafo>
        <% } %> 
        
        <!verificamos si el radio del mayor fue seleccionado>
        <% if(request.getParameter("mayor") != null){ %>
        <h1>El numero mayor es: </h1>
        <p><%= Calculadora.mayor(num1,num2) %></p> <!llamamos al metodo de mayor y lo agregamos en un parrafo>
        <% } %> 
        
         <!verificamos si el radio de la potencia fue seleccionado>
        <% if(request.getParameter("potencia") != null){ %>
        <h1>Potencia: </h1>
        <p><%= Calculadora.potencia(num1,num2) %></p> <!llamaos al metodo de potencia y lo agregamos en un parrafo>
        <% } %>  
        
         <!verificamos si el radio del binario fue seleccionado>
        <% if(request.getParameter("bin") != null){ %>
        <h1>Binario: </h1>
        <!llamaos dos veces al metodo de binario para transformar a los dos nuemros y lo agregamos en un parrafo>
        <p> numero 1: <%= Calculadora.binario(num1) %></p>        
        <p> numero 2: <%= Calculadora.binario(num2) %></p>  
        <% } %>             
            
        <%   
            }catch(Exception e){
        %>    
        <!colocamos al usuario que ha colocado mal algun dato>
        <h1>Se ingresaron valores incorrectamente</h1>
        <br/>
        <h2> Vuelva a la pagina anterior y vuelvalo a intentar</h2>        
        <%
            }
        %>
              
        
    </body>
</html>

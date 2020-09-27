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
        <!aplicamos el mismo estilo que el index.jsp >
        <style>
            <%@include file="estilo.css" %>
        </style>
    </head>
    <body>
        <%
            try{
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));            
        %>
         
        <% if(request.getParameter("suma") != null){ %>
        <h1>Suma: </h1>
        <p><%= Calculadora.sumar(num1,num2) %></p>        
        <% } %>   
        
        <% if(request.getParameter("mult") != null){ %>
        <h1>Multiplicacion: </h1>
        <p><%= Calculadora.multiplicar(num1,num2) %></p>        
        <% } %> 
        
        <% if(request.getParameter("potencia") != null){ %>
        <h1>Potencia: </h1>
        <p><%= Calculadora.potencia(num1,num2) %></p>        
        <% } %>  
        
        <% if(request.getParameter("bin") != null){ %>
        <h1>Binario: </h1>
        <p> numero 1: <%= Calculadora.binario(num1) %></p>        
        <p> numero 2: <%= Calculadora.binario(num2) %></p>  
        <% } %>             
            
        <%   
            }catch(Exception e){
        %>    
        <h1>Se ingresaron valores incorrectamente</h1>
        <br/>
        <h2> Vuelva a la pagina anterior y vuelvalo a intentar</h2>        
        <%
            }
        %>
      
        
        
    </body>
</html>

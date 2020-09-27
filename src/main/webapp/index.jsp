<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <%--Aplicamos un poco de estilo a la pagina --%>
        <style>
            <%@include file="estilo.css" %>
        </style>
    </head>    
    <body>
        <h1>Calculadora</h1>
        <h2>Ingrese los numeros</h2>        
        <form method="GET" action="respuesta.jsp">
            <br/>
            <label>Ingrese el primer numero:  </label>
            <input type="text" name='num1' />
            <br/>
            <br/>
            <label>Ingrese el Segundo numero: </label>
            <input type="text" name='num2' />   
            <br/>   
            <br/>
            <br/>
             <div>
                <label>
                    <input type="radio" name="suma" value="1" />Sumar
                    <br />
                </label>
                <br />
                 <label>
                     <input type="radio" name="mult" value="1" />Multiplicar                  
                 </label>
                 <br />
                 <br />
                 <label>
                     <input type="radio" name="potencia" value="1" />Potencia (numero 1) ^ (numero 2)
                 </label>
                    <br />
                    <br />
                    <label>
                        <input type="radio" name="bin" value="1" />Valor binario
                    </label>                
                    <br /> 
                    <br />                
                </div>
            <input type="submit" value="Calcular" />
        </form> 
    </body>
</html>

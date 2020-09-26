<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backEnd.Calculadora" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
        <!Aplicamos un poco de estilo a la pagina >
        <style>
            h1{
                color: white;
                font-size: 48px;
                text-align: center;
            }
            body{
                background-color: lightblue;
            }
            h2{
                font-family: Comic-san;
                font-size: 25px;
            }
            input[type=submit]{
                background-color: #734F96;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 100px;
                cursor: pointer;
                border-radius: 26px;
            }
            input[type=submit]:hover{
                color: #1883ba;
                background-color: #ffffff;                
            }
            input[type=text]{
                text-align: center;
                font-weight: 600;
                
            }
            
        </style>
    </head>    
    <body>
        <h1>Calculadora</h1>
        <h2>Ingrese los numeros</h2>
        <label>Ingrese el primer numero:   </label>
        <form method="GET" action="">
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

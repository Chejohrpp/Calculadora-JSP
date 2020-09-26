/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backEnd;


/**
 *
 * @author sergi
 */
public class Calculadora  {
    
    public static String hola(){
        return "hola desde java";
    }
    public static int sumar(int num1, int num2){
        return num1+num2;
    }
    public static int multiplicar(int num1, int num2){        
        return num1*num2;
    }
    public static int potencia(int num1, int num2){        
        return (int)Math.pow(num1, num2);
    }    
    public static String binario(int num1){
        if (num1 <= 0) {
            return "0";
        }
        StringBuilder cadena = new StringBuilder();        
        while(num1 > 0){
            int residuo = num1%2;
            num1 = num1 /2;
            cadena.insert(0, String.valueOf(residuo));
        }
        return String.valueOf(cadena);
    }
    
    
}

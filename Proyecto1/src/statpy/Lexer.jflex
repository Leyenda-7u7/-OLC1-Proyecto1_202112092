// ------------  Paquete e importaciones ------------
package statpy; 

import java_cup.runtime.*;

import java.util.ArrayList;

import tokens.token;

import errores.error;


%%	
//-------> Directivas (NO TOCAR)

%public 
%class Lexer
%cup
%char
%column
%line
%unicode
%ignorecase


%{ 
    public  static ArrayList<token> lista_tokens = new ArrayList<token>();

    public  static ArrayList<error> lista_errores = new ArrayList<error>();

%} 


// ------> Expresiones Regulares 



LLAVE_IZQ = "{"
LLAVE_DER = "}" 

FLECHA = "->"
PUNTOYCOMA = ";"
PUNTO = "."
PAREN_IZQ = "("
PAREN_DER = ")"
DISYUNCION = "|"
DOSPUNTOS = ":"
GUION = "-"
GUIONÑ = "~"
CONJ = "CONJ"
COMA = ","
ASTERISCO = "*"
MAS = "+"
INTER = "?"
DIVISION = "/"
DOBLE = "\""
BAJO = "_"
AMPERSAND = "&"
ADMIN = "!"

LETRA   = [a-zA-ZÑñ]
ENTERO = [0-9]+
DECIMAL = [0-9]+("."[  |0-9]+)?
ID = [A-Za-z][A-Za-z0-9]*
COMENTMULTILINEA = (\<)(\!)[^\"]*(\>)(\!)
COMENTARIO =(\/)(\/)[^\n]*\n


%%
// ------------  Reglas Lexicas -------------------



{COMENTARIO} {System.out.println("Se reconocio token comentario " + " Lexema: " + yytext());}

{COMENTMULTILINEA} {System.out.println("Se reconocio token comentario " + " Lexema: " + yytext());}

{LLAVE_IZQ} {String lexema = yytext(); System.out.println("Se reconoció token llave izquierda. Lexema: " + lexema); lista_tokens.add(new token(lexema, "LLAVE_IZQ", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.LLAVE_IZQ, yyline, yycolumn, lexema);}

{LLAVE_DER} {String lexema = yytext(); System.out.println("Se reconoció token llave derecha. Lexema: " + lexema); lista_tokens.add(new token(lexema, "LLAVE_DER", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.LLAVE_DER, yyline, yycolumn, lexema);}

{ENTERO} {String lexema = yytext(); System.out.println("Se reconoció token entero. Lexema: " + lexema); lista_tokens.add(new token(lexema, "NUMERO", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.NUMERO, yyline, yycolumn, lexema);}

{DECIMAL} {String lexema = yytext(); System.out.println("Se reconoció token decimal. Lexema: " + lexema); lista_tokens.add(new token(lexema, "DECIMAL", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.DECIMAL, yyline, yycolumn, lexema);}

{FLECHA} {String lexema = yytext(); System.out.println("Se reconoció token flecha. Lexema: " + lexema); lista_tokens.add(new token(lexema, "FLECHA", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.FLECHA, yyline, yycolumn, lexema);}

{PUNTOYCOMA} {String lexema = yytext(); System.out.println("Se reconoció token punto y coma. Lexema: " + lexema); lista_tokens.add(new token(lexema, "PUNTOYCOMA", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.PUNTOYCOMA, yyline, yycolumn, lexema);}

{DOSPUNTOS} {String lexema = yytext(); System.out.println("Se reconoció token dos puntos. Lexema: " + lexema); lista_tokens.add(new token(lexema, "DOSPUNTOS", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.DOSPUNTOS, yyline, yycolumn, lexema);}

{DISYUNCION} {String lexema = yytext(); System.out.println("Se reconoció token disyuncion. Lexema: " + lexema); lista_tokens.add(new token(lexema, "DISYUNCION", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.DISYUNCION, yyline, yycolumn, lexema);}

//{PAREN_IZQ} {String lexema = yytext(); System.out.println("Se reconoció token parentesis izquierdo. Lexema: " + lexema); lista_tokens.add(new token(lexema, "PAREN_IZQ", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.PAREN_IZQ, yyline, yycolumn, lexema);}

//{PAREN_DER} {String lexema = yytext(); System.out.println("Se reconoció token parentesis derecho. Lexema: " + lexema); lista_tokens.add(new token(lexema, "PAREN_DER", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.PAREN_DER, yyline, yycolumn, lexema);}

{GUION} {String lexema = yytext(); System.out.println("Se reconoció token guion. Lexema: " + lexema); lista_tokens.add(new token(lexema, "GUION", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.GUION, yyline, yycolumn, lexema);}

{GUIONÑ} {String lexema = yytext(); System.out.println("Se reconoció token guion ñ. Lexema: " + lexema); lista_tokens.add(new token(lexema, "GUIONÑ", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.GUIONÑ, yyline, yycolumn, lexema);}

{PUNTO} {String lexema = yytext(); System.out.println("Se reconoció token punto. Lexema: " + lexema); lista_tokens.add(new token(lexema, "PUNTO", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.PUNTO, yyline, yycolumn, lexema);}

{LETRA} {String lexema = yytext(); System.out.println("Se reconoció token letra. Lexema: " + lexema); lista_tokens.add(new token(lexema, "CADENA", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.CADENA, yyline, yycolumn, lexema);}

{CONJ} {String lexema = yytext(); System.out.println("Se reconoció token conjunto. Lexema: " + lexema); lista_tokens.add(new token(lexema, "CONJ", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.CONJ, yyline, yycolumn, lexema);}

{ID} {String lexema = yytext(); System.out.println("Se reconoció token identificador. Lexema: " + lexema); lista_tokens.add(new token(lexema, "ID", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.ID, yyline, yycolumn, lexema);}

{COMA} {String lexema = yytext(); System.out.println("Se reconoció token coma. Lexema: " + lexema); lista_tokens.add(new token(lexema, "COMA", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.COMA, yyline, yycolumn, lexema);}

{ASTERISCO} {String lexema = yytext(); System.out.println("Se reconoció token dos asterico. Lexema: " + lexema); lista_tokens.add(new token(lexema, "ASTERISCO", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.ASTERISCO, yyline, yycolumn, lexema);}

{MAS} {String lexema = yytext(); System.out.println("Se reconoció token signo mas. Lexema: " + lexema); lista_tokens.add(new token(lexema, "MAS", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.MAS, yyline, yycolumn, lexema);}

{INTER} {String lexema = yytext(); System.out.println("Se reconoció token signo de interrogacion. Lexema: " + lexema); lista_tokens.add(new token(lexema, "INTER", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.INTER, yyline, yycolumn, lexema);}

{DIVISION} {String lexema = yytext(); System.out.println("Se reconoció token division. Lexema: " + lexema); lista_tokens.add(new token(lexema, "DIVISION", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.DIVISION, yyline, yycolumn, lexema);}

{DOBLE} {String lexema = yytext(); System.out.println("Se reconoció token doble comilla. Lexema: " + lexema); lista_tokens.add(new token(lexema, "DOBLE", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.DOBLE, yyline, yycolumn, lexema);}

{BAJO} {String lexema = yytext(); System.out.println("Se reconoció token guion bajo. Lexema: " + lexema); lista_tokens.add(new token(lexema, "BAJO", Integer.toString(yyline), Integer.toString(yycolumn + 1))); return new Symbol(sym.BAJO, yyline, yycolumn, lexema);}



//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}


//------> Errores Léxicos 
.           	{ 
System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); 
lista_errores.add(new error("Léxico", "El caracter: ' " + yytext() + " ' no pertenece al lenguaje", Integer.toString(yyline), Integer.toString(yycolumn + 1)));

}




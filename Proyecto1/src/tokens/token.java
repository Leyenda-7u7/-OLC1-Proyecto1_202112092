
package tokens;


public class token {
    private String lexema;
    private String descripcion;
    private String linea;
    private String columna;
    
    public token(String lexema, String descripcion, String linea, String columna){
        this.lexema = lexema;
        this.descripcion = descripcion;
        this.linea = linea;
        this.columna = columna;
    }
    
    public String getLexema() {
        return lexema;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getLinea() {
        return linea;
    }

    public String getColumna() {
        return columna;
    }
    
}

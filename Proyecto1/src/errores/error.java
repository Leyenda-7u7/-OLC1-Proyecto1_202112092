package errores;



public class error {
    private String tipo;
    private String descripcion;
    private String linea;
    private String columna;

    public error (String tipo, String descripcion, String linea, String columna){
        this.tipo = tipo;
        this.descripcion = descripcion;
        this.linea = linea;
        this.columna = columna;

    }

    public String getTipo() {
        return tipo;
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



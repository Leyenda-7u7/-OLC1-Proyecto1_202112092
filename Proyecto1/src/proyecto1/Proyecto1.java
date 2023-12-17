
package proyecto1;


public class Proyecto1 {

    public static void main(String[] args) {
        
        From ventana = new From();
        
        ventana.show();
        analizador("src/statpy/", "Lexer.jflex", "Parser.cup");
    }
    public static void analizador(String ruta, String jflexFile, String cupFile){
        try {
            String opcionesJflex[] =  {ruta+jflexFile,"-d",ruta};
            jflex.Main.generate(opcionesJflex);

            String opcionesCup[] =  {"-destdir", ruta,"-parser","Parser",ruta+cupFile};
            java_cup.Main.main(opcionesCup);
            
        } catch (Exception e) {
            System.out.println("No se ha podido generar los analizadores");
            System.out.println(e);
        }
    }
    
    
    
    
    
    
    
    
    
}


class Bibliografia
    include Comparable
    attr_reader :autor , :titulo, :fecha
        attr_accessor :autor , :titulo, :fecha
    
    def initialize(autor , titulo,fecha)
            @autor = autor;
            @titulo =titulo;
            @fecha =fecha;
    end
    
    def to_s 
        "#{@autor} #{@titulo} #{@fecha}"
    end
    
    def get_autor
        return @autor
    end
    
    def get_titulo
        return @titulo
    end
    
    def get_fecha
        return @fecha
    end
    
    def ==(another) 
    
        @titulo == another.titulo
        
    end
    
    def <=>(another)
      autor.size <=> another.autor.size
    end
   
end 


class ArticuloRevista < Bibliografia
          attr_reader :nEditorial , :nombreRevista , :seccion
          def initialize(autor,titulo,fecha,nEditorial,nombreRevista,seccion)
              @autor=autor
              @titulo=titulo
              @fecha=fecha
              @nEditorial=nEditorial
              @nombreRevista=nombreRevista
              @seccion=seccion
          end
          
          def to_s
                "#{@autor} #{@titulo} #{@fecha} #{@nEditorial} #{@nombreRevista} #{@seccion}"
          end
      
         def get_nEditorial
             return @nEditorial
         end
         
         def get_nombreRevista
            return @nombreRevista 
         end
        
         def get_seccion
             return @seccion 
         end
end


class Libro < Bibliografia
          attr_reader :nEditorial ,  :serie , :editorial
          def initialize(autor,titulo,fecha,editorial,nEditorial,serie)
              @autor=autor
              @titulo=titulo
              @fecha=fecha
              @nEditorial=nEditorial
              @serie=serie
              @editorial=editorial
          end
          
          def to_s
                "#{@autor} #{@titulo} #{@fecha} #{@editorial} #{@nEditorial} #{@nombreRevista} #{@serie}"
          end
      
        def get_editorial
            return @editorial
        end
        
         def get_nEditorial
             return @nEditorial
         end
         
         def get_nombreRevista
            return @nombreRevista 
         end
        
         def get_serie
             return @serie 
         end
         
         def get_isbn
            return @isbn  
        end
end


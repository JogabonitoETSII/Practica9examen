
Nodo = Struct.new( :value ,:next, :prev)

class Lista 
    include Enumerable 
    attr_accessor :first , :last;
      
    def initialize() 
        @first = Nodo.new(nil,nil,@last)
        @last = Nodo.new(nil,@first,nil)
    end
    
    def popFirst
       aux=@first;
       @first=@first.next;
       return aux.value;
       
    end
    
    def each
        aux =@first
        while aux.next != nil do
            yield (aux.value)
            aux = aux.next
        end
    end
    
    def insert(value)
        aux=@first;
        
        if(@first==nil) then
            @firts.value=value
            @firts.next=@last;
            @first.prev=@last;
        else    
            while(aux.next!= nil)
                aux=aux.next;
            end
            aux.next=Nodo.new(value,nil,aux)
            
            @last=aux.next
        end
        return aux.next.value;
    end
    def insertVarios (value1,value2,value3)
         aux=@first;
        
        while(aux.next !=nil)
            aux=aux.next;
        end
        aux.next=Nodo.new(value1,nil,aux)
        aux=aux.next;
        aux.next=Nodo.new(value2,nil,aux)
        aux=aux.next;
        aux.next=Nodo.new(value3,nil,aux)
        @last=aux.next
        return aux.next.value;
    end
end
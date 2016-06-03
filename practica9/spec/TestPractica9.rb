require "spec_helper"


describe Bibliografia do

    before :each do
            @libro=Libro.new("asdasdasd","asdasd","asdas","jajaja","jojojojo","jijijijiji") 
            @libro1=Libro.new("a","b","c","d","f","h")
            @libro2=Libro.new("aa","bb","cc","dd","ff","hh")
    end
    
    it " probamos la comparacion  <" do 
       expect(@libro < @libro1).to eq(false) 
    end
    
    it "probamos la comparacion >"do 
        expect(@libro > @libro1).to eq(true)
    end
    it "probamos la comparacion ==" do
       expect(@libro2 == @libro2).to eq(true) 
    end

end



describe Lista do 
   
   before :each do
    @libro=Libro.new("asdasdasd","asdasd","asdas","jajaja","jojojojo","jijijijiji") 
    @libro1=Libro.new("a","b","c","d","f","h")
    @libro2=Libro.new("aa","bb","cc","dd","ff","hh")    
    @lista=Lista.new()
    @lista.insertVarios(@libro,@libro1,@libro2)
   end

   it "probando el modulo enumerable count" do 
    expect(@lista.count).to eq(3)    
   end
    
end
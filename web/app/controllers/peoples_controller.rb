class PeoplesController < ApplicationController
    
    def index
        Person.all()
        
    end
    
    def show
        
        @person = Person.find_by(id: params[:id])
        
    end
end

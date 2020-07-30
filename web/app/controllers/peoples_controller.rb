class PeoplesController < ApplicationController
    
    def index
        Person.all()
        
    end
    
    def show
        @people = Person.all.order("created_at DESC")
        
    end
end

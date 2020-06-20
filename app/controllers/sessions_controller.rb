class SessionsController < ApplicationController
    


    def new
    end

    def show
        @document = Document.find(params[:id])
      end
     
      def index
      end
     
      def create
        @document = Document.create(id: name)
      end

      def create
        return redirect_to(controller: 'sessions',
                           action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
      end
    
      def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'hello'
      end

      def update
      end
     
      

end

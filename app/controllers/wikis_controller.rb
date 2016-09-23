class WikisController < ApplicationController
    def index
        @wikis = Wiki.all
    end
    
    def show
    end
    
    def new
        @wiki = Wiki.new
    end
    
    def create
        @wiki = Wiki.create(wiki_params)
        
        if @wiki.save
            flash[:notice] = "Wiki was saved."
            redirect_to @wiki
        else
            flash.now[:alert] = "There was an error saving the wiki. Please try again."
            render :new
        end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def wiki_params
        params.require(:wiki).permit(:title, :body, :private)
    end
end

class CollaboratorsController < ApplicationController
    def index
        @collaborators = Wiki.find(params[:wiki_id]).collaborate_users.all
    end
    
    def new
        @wiki = Wiki.find(params[:wiki_id])
        @collaborator = Collaborator.new
    end
    
    def create
        wiki = Wiki.find(params[:wiki_id])
        collab_ids = params[:wiki][:collaborators]
        collab_ids.each do |c|
            c = User.find(params[c])
            c.collaborators.build(wiki: wiki)
        end
        
        if collaborator.save
            flash[:notice] = "Collaborator added."
        else
            flash[:alert] = "Failed to add collaborator."
        end
        redirect_to wiki_collaborators_path(wiki)
    end
    
    def destroy
        wiki = Wiki.find(params[:wiki_id])
        collaborator = current_user.collaborators.find(params[:id])
        
        if collaborator.destroy
            flash[:notice] = "Collaborator removed."
        else
            flash[:alert] = "Failed to remove collaborator."
        end
        redirect_to wiki
    end
end
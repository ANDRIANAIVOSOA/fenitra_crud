class GossipsController < ApplicationController
    def index
        @gossips = Gossip.all
    end

    def new

    end

    def create
        if params["valider"] == "create"
            gossip = Gossip.create(anonymous_author: params["author"], content: params["content"])
            redirect_to gossip_path(gossip.id)
        end
        if  params["valider"] == "comment"
            comment = Comment.create(anonymous_commentor: params["commentateur"], body: params["commentaire"], gossip_id: params["id_gossip"].to_i)
            redirect_to gossip_path(params["id_gossip"].to_i)
        end
    end
    
    def show
        @gossip = Gossip.find(params[:id])
        @comments = @gossip.comments
    end

    def edit
        @gossip = Gossip.find(params[:id])
        @id = Gossip.find(params[:id]).id
        @nom = Gossip.find(params[:id]).anonymous_author
        @content = Gossip.find(params[:id]).content
    end

    def update

        @gossip = Gossip.find(params[:id])
        gossip_params = params.require(:gossip).permit(:anonymous_author, :content)
        @gossip.update(gossip_params)
        redirect_to gossip_path(@gossip.id)

    end

    def destroy
        @del = Gossip.find(params[:id])
        @del.destroy
        redirect_to gossips_path
    end
end

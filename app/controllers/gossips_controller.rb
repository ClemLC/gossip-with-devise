class GossipsController < ApplicationController

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.moussaillon=current_moussaillon
    if @gossip.save
      flash.now[:notice] = 'votre gossip a bien été créé !'
      redirect_to gossip_path(@gossip)
    else
      render 'new'
    end
  end

  def show
    redirect_to root_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end

  private
  def gossip_params
    params.require(:gossip).permit(:content)
  end
end

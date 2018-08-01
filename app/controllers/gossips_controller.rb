class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.create(title: params[:gossip][:title], content: params[:gossip][:content], anonymous_gossiper: params[:gossip][:anonymous_gossiper])
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(title: params[:gossip][:title], content: params[:gossip][:content])
    redirect_to gossip_path(params[:id])
  end

  def delete
    Gossip.find(params[:id]).destroy
    redirect_to gossips_path
  end
end

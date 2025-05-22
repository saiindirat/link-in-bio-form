class ItemsController < ApplicationController
  def index
    @items = Item.all
    render({ :template => "items/index" })
  end

  def new
    render({ :template => "items/new" })
  end

  def create
    new_item = Item.new
    new_item.link_url = params[:query_link_url]
    new_item.link_description = params[:query_link_description]
    new_item.thumbnail_url = params[:query_thumbnail_url]
    new_item.save
    redirect_to("/")
  end
end

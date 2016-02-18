class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
    @products = @collection.products
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)

    if @collection.save
      flash[:notice] = "Collection added"
      redirect_to collection_path(@collection)
    else
      flash[:error] = @collection.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
    @collection = Collection.find(params[:id])
  end

  def update
    @collection = Collection.find(params[:id])
    if @collection.update_attributes(collection_params)
      flash[:notice] = "Updates to collection made successfully."
      redirect_to collection_path(@collection)
    else
      flash[:error] = @collection.errors.full_messages.join(". ")
      render :edit
    end
  end

  def destroy
    @collection = Collection.find(params[:id])
    @collection.destroy
    redirect_to root_path
  end
  
  protected

  def collection_params
    params.require(:collection).permit(:title, :description, :collection_photo)
  end
end

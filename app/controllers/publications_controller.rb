class PublicationsController < ApplicationController
  before_filter :authenticate_user!

  def create
    if publication = Publication.create(params[:publication])
      redirect_to publication_path(publication)
    else
      render :new
    end
  end

  def show
    @publication = Publication.find(params[:id])
  end
end

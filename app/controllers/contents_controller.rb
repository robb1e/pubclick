class ContentsController < ApplicationController

  before_filter :set_publication

  def create
    content = Content.new(params[:content]) do |c|
      c.publication = @publication
    end
    content.save
    redirect_to [@publication, content]
  end

  def show
    @content = Content.find(params[:id])
  end

  private
  def set_publication
    publication_id = params[:publication_id]
    @publication = Publication.find_by_id(publication_id)
  end
end

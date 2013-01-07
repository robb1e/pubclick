class Content < ActiveRecord::Base
  attr_accessible :title, :body, :embed_url

  belongs_to :publication
end

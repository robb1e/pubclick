class Publication < ActiveRecord::Base
  attr_accessible :name

  has_many :contents
end

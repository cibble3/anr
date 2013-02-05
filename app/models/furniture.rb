class Furniture < ActiveRecord::Base
  attr_accessible :available, :description, :image, :name, :price
end

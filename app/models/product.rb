class Product < ActiveRecord::Base
	
  validates :name,
            :presence => true,
            :uniqueness => true,
            :length => { :within => 2..255 }

  validates :price,
            :presence => true,
            :numericality => { :greater_than => 0 }
end

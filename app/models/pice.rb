class Pice < ApplicationRecord

 has_many :pens, dependent: :destroy
  
def self.search(search)
  where("phone LIKE ?", "%#{search}%") 
  
end


end

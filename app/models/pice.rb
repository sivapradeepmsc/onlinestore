class Pice < ApplicationRecord

 has_many :pens, dependent: :destroy
  
end

class Article < ApplicationRecord
 has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
                    

  has_attached_file :image,default_url:'missing.png',:path => ":rails_root/public/system/users/images/:id/:style/:filename",
                    :url => "/system/users/images/:id/:style/:filename"   ,
                    :styles => {:orginal =>'100x100', :thumb =>'200x200'}
	                          
 					                   
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
end


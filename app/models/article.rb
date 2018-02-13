class Article < ApplicationRecord
 has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
                    

  has_attached_file :image,default_url:'missing.png', :styles => {:orginal =>'300x300', :thumb =>'200x200'},
	                 :path => ":rails_root/public/system/users/images/:id/:style/:filename",
     :url => "/system/users/images/:id/:style/:filename"            
 					#:path => ':rails_root/public/system/:class/:id/:style/:filename',
                    #:url => '/system/:class/:id/:style/:filename'
	                  
                    
  
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
end


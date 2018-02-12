class Article < ApplicationRecord
 has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
                    

  has_attached_file :image, styles: {large: "600x600", medium: "300x300>", thumb: "150x150#" }
                     #:url =>"/:public/:system/:articles//:images/:000/:000/:015/:orginal/:basename:extension",
                     #:path =>"/:rails_roots/public/articles/images/:000/:000/:015/:orginal/:basename:extension",
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  do_not_validate_attachment_file_type :image
end

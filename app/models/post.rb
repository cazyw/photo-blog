class Post < ApplicationRecord
    validates :image, presence: { message: 'Warning: no image was added!' }
    validates :caption, presence: { message: 'Warning: caption cannot be blank!' }
    validates :location, presence: { message: 'Warning: location cannot be blank!' }
    
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

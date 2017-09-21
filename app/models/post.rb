class Post < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    validates :caption, presence: { message: 'Warning: caption cannot be blank!' }
    validates :location, presence: { message: 'Warning: location cannot be blank!' }
    validates :image, presence: { message: 'Warning: no image was added!' }
    
    has_attached_file :image, styles: { large: "600x600#", medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

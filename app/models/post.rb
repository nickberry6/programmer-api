class Post
  include Mongoid::Document
  include Mongoid::Paperclip
  # validates :image, presence: true

  has_mongoid_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  field :name, type: String
end

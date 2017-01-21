class Program
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  validates :name, presence: true
  validates :duration, presence: true
  embeds_many :workout

  # validates :image, presence: true

  has_mongoid_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  field :name, type: String
  field :goal, type: String
  field :tags, type: Array
  field :duration, type: Integer
  field :workouts, type: Array
end

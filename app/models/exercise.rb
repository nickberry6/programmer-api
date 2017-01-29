class Exercise
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  embedded_in :program

  field :name, type: String
end

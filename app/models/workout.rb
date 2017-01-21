class Workout
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  embedded_in :program

  field :exercises, type: Array
  field :duration, type: Integer
end

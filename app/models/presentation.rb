class Presentation < ApplicationRecord
  validates :grade, :inclusion => { :in => 0..100, message: "Score must be between 0-100."}
end

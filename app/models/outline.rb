class Outline < ActiveRecord::Base
  has_many :points, inverse_of: :outline
  belongs_to :user
end

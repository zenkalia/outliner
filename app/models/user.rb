class User < ActiveRecord::Base
  has_many :tokens
  has_many :outlines
end

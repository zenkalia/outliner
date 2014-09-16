class Point < ActiveRecord::Base
  belongs_to :outline, inverse_of: :points
  belongs_to :parent, class_name: 'Point', inverse_of: :children
  has_many :children, class_name: 'Point', inverse_of: :parent
end

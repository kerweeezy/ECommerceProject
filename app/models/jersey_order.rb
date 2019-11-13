class JerseyOrder < ApplicationRecord
  belongs_to :jersey
  belongs_to :order
end

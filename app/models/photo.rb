class Photo < ApplicationRecord
  default_scope { order(time: :desc) }
end

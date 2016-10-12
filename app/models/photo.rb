class Photo < ApplicationRecord
  if Rails.env.development? || Rails.env.test?
    default_scope { order(time: :desc) }
  else
    default_scope { order("time DESC NULLS LAST") }
  end
end

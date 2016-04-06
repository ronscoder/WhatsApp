class Session < ActiveRecord::Base
  has_many :chattexts, dependent: :destroy
end

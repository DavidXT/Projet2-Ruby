class Client < ApplicationRecord
  validates :Name, presence: true
end

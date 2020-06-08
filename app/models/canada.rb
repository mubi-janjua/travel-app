class Canada < ApplicationRecord
  validates :passport_no, presence: true, length: { minimum: 10 }
end

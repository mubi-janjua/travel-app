class Canada < ApplicationRecord
  def self.search(search)
  if search
    where(["application_no LIKE ?", "%#{search}%"])
   else
    all
  end
  end
  # validates :passport_no, presence: true, length: { minimum: 10 }
end

class Technology < ApplicationRecord
    has_one_attached :photo
    validates :name, presence: true
    validates :description, presence: true
end

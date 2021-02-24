class Message < ApplicationRecord
    validates :name, presence: true
    validates :phone, presence: true
    validates :message, presence: true
    validates :contact, presence: true
end

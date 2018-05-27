class Provider < ApplicationRecord
    has_many :product
    belongs_to :user , required: false
end
    
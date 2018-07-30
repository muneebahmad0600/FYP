class Provider < ApplicationRecord
    has_many :provider_product
    belongs_to :user , required: false
end
    
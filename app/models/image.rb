class Image < ApplicationRecord
    has_many :characters, dependent: :destroy
end

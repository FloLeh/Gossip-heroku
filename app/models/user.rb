class User < ApplicationRecord
    has_many :comments
    has_many :sub_comment, as: :subcom
    belongs_to :city
end

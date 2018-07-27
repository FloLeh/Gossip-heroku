class SubComment < ApplicationRecord
    belongs_to :subcom, polymorphic: true
end

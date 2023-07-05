class Category < ApplicationRecord
    has_and_belongs_to_many :articles

    defailt_scope { order :name }
end

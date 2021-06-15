class Flatsharing < ApplicationRecord
   has_many :users
   serialize :flat_mate, Array
end

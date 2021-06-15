class Flatsharing < ApplicationRecord
   has_many :users
   serialize :pending_invitation, Array
end

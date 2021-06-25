class Calendar < ApplicationRecord
    validates :title, presence: true, :length => {:within => 1..15}
    validates :description, presence: true, :length => {:within => 2..94}

end

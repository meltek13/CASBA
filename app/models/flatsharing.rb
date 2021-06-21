class Flatsharing < ApplicationRecord
   #after_create :invitation_to_join_flat
   has_one :token
   has_many :users
   has_many :expenses
   serialize :pending_invitation, Array
   serialize :flat_mate, Array

   def invitation_to_join_flat
     InvitationMailer.invitation_email(self).deliver_now
   end

 
end

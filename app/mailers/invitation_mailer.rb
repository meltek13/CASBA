class InvitationMailer < ApplicationMailer
    default from: 'casbaapp@gmail.com'
 
    def invitation_email(flat)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @flat = flat
      @title = flat.title
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://localhost/3000' 
      
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @flat.pending_invitation, subject: 'Bienvenue chez nous !') 
      
    end
end

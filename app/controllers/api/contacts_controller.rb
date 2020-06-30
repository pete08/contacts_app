class Api::ContactsController < ApplicationController

  def display
    @contact = Contact.first
    p "its here in the terminal it preints this"
    render "contact_recall.json.jb" 
  end

end

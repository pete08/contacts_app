class Api::ContactsController < ApplicationController

def index
  p current_user
  @contacts = current_user.contacts

  render "index.json.jb"
end

def show
  @contact = Contact.find_by(id: params[:id])
  render "show.json.jb"
end

def create
  @contact = Contact.new(first_name: params[:first], last_name: params[:last], email: params[:email], phone_number: params[:number])
  @contact.save
  render "show.json.jb"
end

def update
  @contact = Contact.find_by(id: params[:id])
  @contact.first_name = params[:first_name] || @contact.first_name
  @contact.last_name = params[:last_name] || @contact.last_name
  @contact.email = params[:email] || @contact.email
  @contact.phone_number = params[:phone_number] || @contact.phone_number
  @contact.save
  render "show.json.jb"
end

def destroy
  @contact = Contact.find_by(id: params[:id])
  @contact.destroy
  render :json => {message: "succuessfully deleted your contact!"}
end



end

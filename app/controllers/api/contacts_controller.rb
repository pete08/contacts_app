class Api::ContactsController < ApplicationController

def index
  @contacts = Contact.all

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

# def update
# def destroy



end

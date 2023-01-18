class ContactsController < ApplicationController
# See pages controller for  root url

    def index
        @contacts = Contact.all
    end

    def show
    end

    def new
    end

    def create
        contact = Contact.create :name => params[:name], :image => params[:image], :preferred_name => params[:preferred_name], :company => params[:company], :email => params[:email], :phone => params[:phone]
        redirect_to root_path # create path: contact_path(create.id) # GET to show contact
    end

end
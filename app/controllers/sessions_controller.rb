require 'pry'

class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name]="" || params[:name]=nil
      redirect_to '/sessions/new'
    else
      sets_session_name
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
    session.delete :name
  end

end

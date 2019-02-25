require 'pry'

class SessionsController < ApplicationController

  def new
  end

  def create
    if sets_session_name
      redirect_to '/'
    elsif
      !!session[:name] = !params[:name]
      redirect_to '/sessions/new'
  #  elsif
  #    session[:name] = params[:name]
  #        @name = session[:name]     #sets_session_name
    end
  end

  def destroy
    session.delete :username
    session.delete :name
  end

end

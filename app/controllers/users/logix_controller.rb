# frozen_string_literal: true

class Users::LogixController < ApplicationController
  TYPEAHEAD_INSTITUTE_LIMIT = 50

  
  before_action :authenticate_user!, only: %i[edit update groups]
  before_action :set_user

  def index; end

  
  private

    def set_user
      @user = User.find(params[:id])
    end
end

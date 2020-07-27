class HomeController < ApplicationController
  def index
  end

  def leaderboard
  end

  def member
  	@members = Member.all
  end
end

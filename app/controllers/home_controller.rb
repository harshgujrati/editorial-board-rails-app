class HomeController < ApplicationController
  def index
  end

  def leaderboard
  end

  def member
  	@final_year_members = Member.where(year: 4)
  	@third_year_members = Member.where(year: 3)
  	@second_year_members = Member.where(year: 2)
  	@first_year_members = Member.where(year: 1)
  end
end

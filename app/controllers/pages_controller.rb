class PagesController < ApplicationController
  before_filter :disable_forumnav

  def welcome
      @disable_forumhead = true
  end

  def home
      @disable_forumhead = true
  end

  def highlights
      @disable_forumhead = true
  end

  def archives
      @disable_forumhead = true
  end

  def contactUs
    @disable_forumhead = true
  end

  def thankyou
    @disable_forumhead = true
  end
end

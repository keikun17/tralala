require "tralala/version"

module Tralala

  extend ActiveSupport::Concern

  def dingdingdong
    puts "You touch my tralala : #{caller[1]}"
  end


  def save
    dingdingdong
    super
  end

  def save!
    dingdingdong
    super
  end

  def update
    dingdingdong
    super
  end

  def create
    dingdingdong
    super
  end

end

ActiveRecord::Base.send(:include, Tralala)

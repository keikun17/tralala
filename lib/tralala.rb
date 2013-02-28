require "tralala/version"

module Tralala

  extend ActiveSupport::Concern

  def dingdingdong
    callstack = caller.reject{|cs| cs.include?('active_record')}
    puts ""
    puts "\e[34mIm You touched my tralala!\e[0m"
    puts "  -- #{callstack[1].split(' ').first}"
  end

  def save(*)
    dingdingdong
    super
  end

  def save!(*)
    dingdingdong
    super
  end

end

ActiveRecord::Base.send(:include, Tralala)

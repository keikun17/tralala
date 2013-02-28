require "tralala/version"

module Tralala

  extend ActiveSupport::Concern

  def dingdingdong
    callstack = caller.reject{|cs| cs.include?('active_record')}
    puts ""
    puts "\e[34mIm You touched me tralala!\e[0m"
    puts "  -- #{callstack[1].split(' ').first}"
  end

  private

  def save(options={})
    dingdingdong
    super
  end

end

ActiveRecord::Validations.send(:include, Tralala)

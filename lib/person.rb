require 'homework05/version'
require 'active_support/core_ext/string' 
# requires are used if a gemfile need to be used

class Person
  attr_accessor :name

  def initialize(name)
    @name = name 
    @history = [@name]
  end

  def to_s
    @history.last
  end

  def upcase
    @history << @name.upcase
  end

  def downcase
    @history << @name.downcase
  end

  def titlelize
    @history << @name.capitalize
  end

  def reverse
    @history << @name.reverse
  end

  def hyphenize
    @history << @name.chars.join("-")
  end

  def undo
    @history << @name.previous_changes
  end




end

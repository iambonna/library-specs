require 'byebug'
require './src/person'

class Library
  attr_accessor :members, :catalog, :books_lent_out, :library_name

  def initialize (library_name)
    @library_name = library_name
    @members = []
  end


end




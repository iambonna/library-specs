require 'byebug'
require './src/person'

class Library
  attr_accessor :members, :catalog, :books_lent_out, :library_name

  def initialize(library)
    @library_name = library
    @members = []
  end

  def add_new_member_to_library(person_name)

    @members << person_name
    "#{person_name} is now a member of a #{library_name}."

  end

end




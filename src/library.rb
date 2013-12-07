require 'byebug'
require './src/person'
require './src/library_system'

class Library
  attr_accessor :members, :library_membership_number, :library_catalog, :books_lent_out, :library_name

  def initialize(library_name)
    @library_name = library_name
    @members =[]
    @library_membership_number = 0
    @books_lent_out = []
    @library_catalog = []
  end

  def add_new_book_to_catalog(new_book)
    @library_catalog << new_book

    ls = LibrarySystem.new
    ls.catalog << new_book
  end

  #def borrow_book_by_title(title, person)
  #
  #  if @catalog == []
  #    return 'There is no book you are looking for. In fact, there is no book in this library.'
  #  end
  #
  #  if @books_lent_out == []
  #    book.book_title = title
  #    book.renter = person
  #    book.library_name = @library_name
  #    @books_lent_out << book
  #    return "#{person} lent a #{title} from #{@library_name}."
  #  end
  #end

  def add_new_member_to_library(person)
    if @members.include? person
      "#{person.name} is already a member of a #{library_name}."
    else
      @library_membership_number += 1
      person.library_membership_number = @library_membership_number
      @members << person
      "#{person.name} is now a member of a #{library_name}. The membership number for #{person.name} is #{@library_membership_number}."
    end
  end

  def search_members_by_name(person_name)
    @members.each do |member|
      if member.name == person_name
        return "Yay! #{person_name} is a member of #{library_name}."
      else
        return "Sorry. #{person_name} is NOT a member of #{library_name}. :("
      end
    end
  end

  def search_members_by_membership_number(membership_number)
    @members.each do |member|
      if member.library_membership_number == membership_number
        return "#{member.name}"
      end
    end
    return "There is no one with a membership number #{membership_number}."

  end

end




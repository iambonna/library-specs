require 'byebug'
require './src/person'

class Library
  attr_accessor :members, :library_membership_number, :catalog, :books_lent_out, :library_name

  def initialize(library_name)
    @library_name = library_name
    @members =[]
    @library_membership_number = 0
  end

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




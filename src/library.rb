require 'byebug'

class Library
  attr_accessor :name, :members, :catalog, :books_lent_out, :library_name

  def initialize
    @books_lent_out = []
    @members = []
  end

  def add_new_library_member(personal_info, library_name)
    if @members.eql? []
      @members << personal_info
      return "#{personal_info} is now a member of a #{library_name}."
    else
      @members.each do |existing_members|
        if existing_members == personal_info
          return "#{personal_info} is already a member of a #{library_name}."
        end
      end
    end
  end
end




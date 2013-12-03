require './src/library_system'
require './src/library'
require './src/catalog_entry'
require './src/person'
require 'byebug'

describe 'adding new library member' do
  it 'should let a user to add new library member' do
    sf_library = Library.new("SF library")
    sf_library.members.size.should == 0
    sf_library.add_new_member_to_library('Bonna Choi').should == 'Bonna Choi is now a member of a SF library.'
    sf_library.members.size.should == 1
    sf_library.add_new_member_to_library('Kevin Dishman').should == 'Kevin Dishman is now a member of a SF library.'
    sf_library.members.size.should == 2
  end

  #it 'should not allow to add new member that already exist in the library' do
  #  ls = LibrarySystem.new
  #  ls.add_new_member_to_library('SF library', 'Bonna Choi').should == 'Bonna Choi is already a member of a SF library.'
  #end

end
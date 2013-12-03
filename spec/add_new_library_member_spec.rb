require './src/library_system'
require './src/library'
require './src/catalog_entry'
require './src/person'
require 'byebug'

describe 'adding new library member' do
  it 'should let a user to add new library member' do
    sf_library = Library.new('SF library')
    bonna = Person.new('Bonna Choi')
    kevin = Person.new('Kevin Dishman')

    sf_library.members.size.should == 0
    sf_library.add_new_member_to_library(bonna).should == 'Bonna Choi is now a member of a SF library.'
    sf_library.members.size.should == 1
    sf_library.add_new_member_to_library(kevin).should == 'Kevin Dishman is now a member of a SF library.'
    sf_library.members.size.should == 2
  end

  it 'should not allow to add new member that already exist in the library' do
    sf_library = Library.new('SF library')
    bonna = Person.new('Bonna Choi')

    sf_library.add_new_member_to_library(bonna)
    sf_library.members.size.should == 1
    sf_library.add_new_member_to_library(bonna).should == 'Bonna Choi is already a member of a SF library.'
    sf_library.members.size.should == 1
  end

  it 'should let a user to a library membership from multiple libraries' do
    sf_library = Library.new('SF library')
    bonna = Person.new('Bonna Choi')

    chicago_library = Library.new('Chicago library')
    sf_library.add_new_member_to_library(bonna).should == 'Bonna Choi is now a member of a SF library.'
    sf_library.members.size.should == 1
    chicago_library.add_new_member_to_library(bonna).should == 'Bonna Choi is now a member of a Chicago library.'
    chicago_library.members.size.should == 1
  end

  it 'should provide a unique library membership number to new member' do
    sf_library = Library.new('SF library')
    bonna = Person.new('Bonna Choi')
    kevin = Person.new('Kevin Dishman')

    sf_library.add_new_member_to_library(bonna)
    bonna.library_membership_number.should == 1
    sf_library.add_new_member_to_library(kevin)
    kevin.library_membership_number.should == 2
  end

end
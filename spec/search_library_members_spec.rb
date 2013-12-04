require './src/library_system'
require './src/person'

describe 'searching for a library member' do

  it 'should let a user to find a library member by name' do
    sf_library = Library.new('SF library')
    bonna = Person.new('Bonna Choi')
    brad = Person.new('Brad Pitt')
    sf_library.add_new_member_to_library(bonna)
    sf_library.search_members_by_name("#{bonna.name}").should == 'Yay! Bonna Choi is a member of SF library.'
    sf_library.search_members_by_name('Brad Pitt').should == 'Sorry. Brad Pitt is NOT a member of SF library. :('
  end

  #it 'should let a user to find a library member by membership number' do
  #  sf_library = Library.new('SF library')
  #  bonna = Person.new('Bonna Choi')
  #  priya = Person.new('Priya Malhotra')
  #  sf_library.add_new_member_to_library(priya)
  #  sf_library.add_new_member_to_library(bonna)
  #
  #end

end
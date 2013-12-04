#require './src/library_system'
#require './src/person'
#require './src/library'

describe 'find out who lent a book' do

  it 'should let a user to find a library member by name' do
    sf_library = Library.new('SF library')
    bonna = Person.new('Bonna Choi')
    sf_library.add_new_member_to_library(bonna)
    sf_library.search_members_by_name('Bonna Choi').should == 'Yay! Bonna Choi is a member of SF library.'
    sf_library.search_members_by_name('Brad Pitt').should == 'Sorry. Brad Pitt is NOT a member of SF library. :('
  end

  it 'should find a member name who lent a book' do
    sf_library = Library.new('SF library')

  end


end
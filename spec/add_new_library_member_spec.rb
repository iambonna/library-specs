require './src/library_system'
require './src/library'
require './src/catalog_entry'
require './src/person'
require 'byebug'

describe 'adding new library member' do
  it 'should let a user to add new library member' do
    library = Library.new


    library.add_new_library_member('Bonna Choi', 'SF library').should == 'Bonna Choi is now a member of a SF library.'
    library.add_new_library_member('Kevin Dishman', 'Chicago library').should == 'Kevin Dishman is now a member of a Chicago library.'
    library.add_new_library_member('Bonna Choi', 'SF library').should == 'Bonna Choi is already a member of a SF library.'
    library.add_new_library_member('Kevin Dishman', 'Chicago library').should == 'Kevin Dishman is already a member of a Chicago library.'
  end

end
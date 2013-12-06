require './src/person'
require './src/library'

describe 'going to a Library' do
  it 'should let a user borrow a book' do
    sf_library = Library.new('SF library')

    #sf_library.borrow_book_by_title('Battlefield Earth', 'Bonna Choi').should == "Bonna Choi lent a Battlefield Earth from SF library"

  end
end
require './src/person'
require './src/library'

describe 'going to a Library' do
  it 'should let a user borrow a book' do
    sf_library = Library.new('SF library')
    bonna = Person.new('Bonna Choi')

    #sf_library.borrow_book_by_title('Battlefield Earth', bonna).should == true
  end
end
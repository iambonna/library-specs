require './src/person'

describe 'going to a Library' do
  it 'should let a user borrow a book' do
    bonna = Person.new('Bonna Choi')
    bonna.borrow_book_by_title('Battlefield Earth').should == true
  end
end
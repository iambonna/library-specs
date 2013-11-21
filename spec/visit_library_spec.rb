require './src/person'

describe 'going to a Library' do
  it 'should let a user borrow a book' do
    person = Person.new
    person.borrow_book_by_title('Battlefield Earth').should == true
  end
end
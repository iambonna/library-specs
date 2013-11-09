require './src/library'
require './src/book'

describe 'Library' do
  it 'add some books to our library catalog' do
    books = [Book.new('Brave New World', 'Aldous Huxley'),
             Book.new('1984', 'George Orwell'),
             Book.new('Animal Farm', 'George Orwell')
    ]
    library = Library.new
    library.add_to_catalog(books)

    library.catalog.size.should == 3
    library.catalog.first.title.should == 'Brave New World'
    library.catalog.first.author.should == 'Aldous Huxley'
  end

  it 'should have a default library name' do
    library = Library.new
    library.name.should == 'Awesome Library'
  end
end


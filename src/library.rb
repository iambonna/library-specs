class Library
  attr_accessor :catalog, :name, :books_lent_out

  def initialize
    @catalog = []
    @name = 'Awesome Library'
    @books_lent_out = []
  end

  def add_to_catalog(books)
    books.each do |book|
      @catalog << book
    end
  end

  def has_book_in_catalog?(book_title)
    has_book = false
    catalog.each do |book|
      if book.title == book_title
        has_book = true
      end
    end
   has_book
  end

  def retrieve_book_by_title(book_title)
    the_book = catalog.select{|book| book.title == book_title}.first
    @books_lent_out << the_book
    the_book
  end
end
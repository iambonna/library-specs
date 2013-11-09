class Person
  attr_accessor :current_library, :reserved_books

  def go_to_library(library)
    @current_library = library
    @reserved_books = []
  end

  def location
    "I'm in the #{@current_library.name}"
  end

  def reserve_book(book_title)
    if @current_library.has_book?(book_title)
      book = @current_library.retrieve_book_by_title(book_title)
      @reserved_books << book
      "You have reserved #{book.title} by #{book.author}"
    else
      'That book is not in our library'
    end
  end
end

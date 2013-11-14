class Person
  attr_accessor :current_library, :reserved_books, :membership_number, :personal_info

  def initialize
    @reserved_books = []
  end

  def go_to_library(library)
    @current_library = library
  end

  def location
    "I'm in the #{@current_library.name}"
  end

  def borrow_book(book_title)
    if @current_library.has_book?(book_title)
      book = @current_library.retrieve_book_by_title(book_title)
      @reserved_books << book
      "You have reserved #{book.title} by #{book.author}"
    else
      'That book is not in our library'
    end
  end

  def register_for_library_membership(personal_info)

    @personal_info = personal_info
    @membership_number = '1'
  end

end

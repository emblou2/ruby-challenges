class Media
   attr_accessor :title, :author, :publisher
end
 
class Book < Media
   attr_accessor :publish_date, :author, :forward_author, :about_book
        
end
  def about_book
        return "#{@title} is written by #{@author} and published by #{@publisher}."
   
end   
 
 
class Magazine < Media
   attr_accessor :publish_schedule
       
end
 
 
my_book = Book.new
my_book.title = 'Where The Wild Things Are'
my_book.author = 'Maurice Sendak'
my_book.publisher = 'Harper & Row'
puts my_book.title
puts my_book.author
  



  

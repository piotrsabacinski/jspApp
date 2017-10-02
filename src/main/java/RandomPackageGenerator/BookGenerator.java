package RandomPackageGenerator;

import libraryBooks.Author;
import libraryBooks.Book;
import libraryBooks.BookGenre;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by RENT on 2017-10-02.
 */
public class BookGenerator {
    public static final String[] COUNTRY_CODES = new String[]{"PL","USA", "DE", "FR" };


    public static Book createBook(String title, String authorName, String authorSurname){
        Random random = new Random();
        Author author = new Author(authorName, authorSurname, COUNTRY_CODES[random.nextInt(COUNTRY_CODES.length)]);

        BookGenre[] values = BookGenre.values();
        Book book = new Book(title, generateIsbnNumber(random),
                random.nextInt(1500), author, values[random.nextInt(values.length)] );

        return  book;
    }

     private static String generateIsbnNumber(Random random){
         StringBuilder sb = new StringBuilder();
         for(int i = 0; i <10; i++){
             sb.append(random.nextInt(10));
         }
         return  sb.toString();
     }

    public static final String[] TITLE = new String[]{"Pan Tadeusz","Mrok", "Helisa", "Grzybobranie na śniadanie" };
    public static final String[] AUTHOR_NAME = new String[]{"Jan","Adam", "Piotrek", "Juliusz" };
    public static final String[] AUTHOR_SURNAME = new String[]{"Nowak","Mickiewicz", "Brzęczek", "Francuz" };


     public static List<Book> listGenerator(int bookNumber){
         List<Book> list = new ArrayList<Book>();
         Random random = new Random();


         while (bookNumber > 0) {
             list.add(BookGenerator.createBook(TITLE[random.nextInt(TITLE.length)],
                     AUTHOR_NAME[random.nextInt(AUTHOR_NAME.length)],
                     AUTHOR_SURNAME[random.nextInt(AUTHOR_NAME.length)]));

                     bookNumber--;


         }
         return list;


     }

}
      /*  list.add(BookGenerator.createBook("Java Podstawy", "Cay", "Horstmann"));
                list.add(BookGenerator.createBook("Inferno", "Dan", "Brown"));
                list.add(BookGenerator.createBook("Pan Tadeusz", "Adam", "Mickiewicz"));*/
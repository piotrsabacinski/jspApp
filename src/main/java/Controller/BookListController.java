package Controller;

import RandomPackageGenerator.BookGenerator;
import libraryBooks.Book;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by RENT on 2017-10-02.
 */
@Controller
public class BookListController {

    @RequestMapping(value="/books")
    public ModelAndView getBooks() {
        ModelAndView model = new ModelAndView();
        List<Book> list = BookGenerator.listGenerator(4);

        model.addObject("list", list);
        model.setViewName("BookList.jsp");
        return model;
    }


}

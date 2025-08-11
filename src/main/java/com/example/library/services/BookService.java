package com.example.library.services;

import com.example.library.model.Book;
import com.example.library.repositories.BookRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class BookService {
    private final BookRepository bookRepository;

    public List<Book> listBook(String title){
        if (title != null) bookRepository.findByTitle(title);
        return bookRepository.findAll();
    }

    public void saveBook(Book book){
        log.info("Saving new {}", book);
        bookRepository.save(book);
    }

    public void deleteBook(Long id){
        bookRepository.deleteById(id);
    }

    public Book getBookById(Long id) {
        return bookRepository.findById(id).orElse(null);
    }
}

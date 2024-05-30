package com.example.diploma.services;

import com.example.diploma.models.Comment;
import com.example.diploma.repositories.CommentRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;

    public List<Comment> list() {
        return commentRepository.findAll();
    }

    public void addComment(Comment comment) {
        commentRepository.save(comment);
    }

    public Comment getComment(Long id) {
        return commentRepository.findById(id).orElse(null);
    }

    public void deleteComment(Comment comment) {
        commentRepository.delete(comment);
    }

    public void changeComment(Comment comment) {
        commentRepository.save(comment);
    }
}

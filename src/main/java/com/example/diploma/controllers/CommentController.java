package com.example.diploma.controllers;

import com.example.diploma.models.Comment;
import com.example.diploma.services.BookingService;
import com.example.diploma.services.CommentService;
import com.example.diploma.services.TemplateHelper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thymeleaf.model.IModel;

import java.security.Principal;

@Controller
@AllArgsConstructor
public class CommentController {
    private final CommentService commentService;
    private final BookingService bookingService;

    @GetMapping("/comments")
    public String comments(Principal principal, Model model) {
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        model.addAttribute("comments", commentService.list());
        model.addAttribute("helper", new TemplateHelper());
        return "comments";
    }

    @GetMapping("/comments/add-comment")
    public String createNewComment(Principal principal, Model model) {
        model.addAttribute("user", bookingService.getUserByPrincipal(principal));
        return "createComment";
    }

    @PostMapping("/comments/add-comment")
    public String addCommentToBD(@RequestParam(name = "comment") String text, Principal principal) {
        Comment comment = new Comment();
        comment.setText(text);
        comment.setAuthor(bookingService.getUserByPrincipal(principal));
        commentService.addComment(comment);
        return "redirect:/comments";
    }

    @PostMapping("/comment-delete/{id}")
    public String deleteComment(@PathVariable("id") Long id) {
        Comment comment = commentService.getComment(id);
        commentService.deleteComment(comment);
        return "redirect:/comments";
    }

    @GetMapping("/comment-edit/{id}")
    public String editComment(@PathVariable("id") Long id, Model model) {
        Comment comment = commentService.getComment(id);
        model.addAttribute("comment", comment);
        return "editComment";
    }

    @PostMapping("/comment-edit/{id}")
    public String changeComment(@PathVariable("id") Long id, @RequestParam(name = "comment") String text) {
        Comment comment = commentService.getComment(id);
        comment.setText(text);
        commentService.changeComment(comment);
        return "redirect:/comments";
    }
}

package edu.mum.controller;

import edu.mum.domain.Messages;
import edu.mum.domain.UserCredentials;
import edu.mum.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@RestController
@RequestMapping("/api")
public class LogHistoryRestController {
    private final MessageService messageService;

    @Autowired
    public LogHistoryRestController(MessageService messageService) {
        this.messageService = messageService;

    }

    @RequestMapping(value = "/logs", method = RequestMethod.GET)
    public ResponseEntity<List<Messages>> postLogin(UserCredentials req) {
//		List<Messages> data = messageService.findAll();
        List<Messages> data2 = new ArrayList<>();
        return new ResponseEntity<>(data2, HttpStatus.OK);
    }
}

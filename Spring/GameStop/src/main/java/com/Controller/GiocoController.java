package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Entity.GiocoEntity;
import com.Service.GiocoService;


@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/games")
public class GiocoController {
	
	@Autowired
    private GiocoService serv;

    @GetMapping("/all")
    public List<GiocoEntity> getGiochi(){
        return serv.getGiochi();
    }
}

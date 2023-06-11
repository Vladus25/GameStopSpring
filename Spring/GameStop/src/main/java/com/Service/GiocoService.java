package com.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Entity.GiocoEntity;
import com.Repository.GiocoRepository;

@Service
public class GiocoService {
	
	@Autowired
    private GiocoRepository repo;

    public List<GiocoEntity> getGiochi(){
        return repo.findAll();
    }
}

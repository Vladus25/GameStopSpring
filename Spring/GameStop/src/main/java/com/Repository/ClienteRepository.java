package com.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Entity.ClienteEntity;

public interface ClienteRepository extends JpaRepository<ClienteEntity, Integer>{

}

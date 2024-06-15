package com.pawcare.backend.repository;

import com.pawcare.backend.model.User;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.awt.*;
import java.util.Optional;

@Repository
public interface UserRepository extends MongoRepository<User, String> {
//    Optional<User> findById(String id);
//
//    User save(User user);
//
//    void deleteById(String id);

}
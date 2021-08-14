package com.stackroute.Soulmate.repo;

import com.stackroute.Soulmate.model.Soulmate;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SoulmateRepo extends MongoRepository<Soulmate , Integer> {

    List<Soulmate> findByName(String name);

    List<Soulmate> findByGenderAndAge(String gender , int age);

}

package com.james.languages.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

import com.james.languages.models.Language;

@Repository
public interface LanguageRepository extends CrudRepository<Language, Long>{
    // this method retrieves all the languages from the database
    List<Language> findAll();
    // this method finds languages with descriptions containing the search string
    List<Language> findByCreatorContaining(String search);
    // this method counts how many titles contain a certain string
    Long countByNameContaining(String search);
    // this method deletes a language that starts with a specific title
    Long deleteByNameStartingWith(String search);
    void deleteById(Long id);
	Language save(Optional<Language> b);
    
}


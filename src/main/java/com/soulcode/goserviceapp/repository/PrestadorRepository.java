package com.soulcode.goserviceapp.repository;

import com.soulcode.goserviceapp.domain.Prestador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PrestadorRepository extends JpaRepository<Prestador, Long> {
    Optional<Prestador> findByEmail(String Email); //  optional é um molde para receber a query e transformar em metodo
    // o Optional se adapta ao que é solicitado, no caso ele está dando um SELECT * FROM prestador e procurando pelo e-mail.
}

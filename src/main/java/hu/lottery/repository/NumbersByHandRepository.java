package hu.lottery.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hu.lottery.model.NumbersByHand;

@Repository
public interface NumbersByHandRepository extends JpaRepository<NumbersByHand, Long> {

	
	
}

package hu.lottery.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import hu.lottery.model.NumbersByHand;

@Repository
public interface NumbersByHandRepository extends JpaRepository<NumbersByHand, Long> {

	@Query("SELECT n FROM NumbersByHand n where "
			+ "n.num1= :n1 and "
			+ "n.num2= :n2 and "
			+ "n.num3= :n3 and "
			+ "n.num4= :n4 and "
			+ "n.num5= :n5 and "
			+ "n.num6= :n6 and "
			+ "n.num7= :n7") 
	NumbersByHand findByHand(
			@Param("n1") Integer n1,
			@Param("n2") Integer n2,
			@Param("n3") Integer n3,
			@Param("n4") Integer n4,
			@Param("n5") Integer n5,
			@Param("n6") Integer n6,
			@Param("n7") Integer n7);
	

}

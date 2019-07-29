package hu.lottery.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import hu.lottery.model.LotteryWeeklyDrawData;

@Repository
public interface LotteryWeeklyRepository extends JpaRepository<LotteryWeeklyDrawData, Long>   {

}

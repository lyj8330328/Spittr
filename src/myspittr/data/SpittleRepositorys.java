package myspittr.data;

import java.util.List;

import myspittr.pubspittle.PubSpittle;
import myspittr.spittle.Spittle;

public interface SpittleRepositorys {
	List<Spittle> findSpittles();

	Spittle findOne(long spittleId);

	void save(PubSpittle spittle);

}

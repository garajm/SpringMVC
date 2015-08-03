package sk.garaj.spring.web.springmvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sk.garaj.spring.web.springmvc.dao.Offer;
import sk.garaj.spring.web.springmvc.dao.OffersDAO;

@Service("offersService")
public class OffersService {

	@Autowired
	private OffersDAO offersDao;

	public List<Offer> getCurrent() {
		return offersDao.getOffers();
	}

}

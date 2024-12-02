package com.example.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.example.demo.model.User;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private SessionFactory sessionFactory;

    // Save user to the database
    @Override
    public void saveUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);  // This will save or update the user
    }

    // Find user by username
    @Override
    public User findByUsername(String username) {
        Session session = sessionFactory.getCurrentSession();
        // Use Hibernate's HQL to find a user by username
        return (User) session.createQuery("FROM User WHERE username = :username")
                             .setParameter("username", username)
                             .uniqueResult();
    }
}

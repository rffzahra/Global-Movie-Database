
package com.hibernate.eao;

import com.hibernate.entity.Genres;

public interface GenresEao {
    
    void create(Genres genres);
    
    void saveOrUpdate(Genres genres);
    
    void delete(Genres genres);

}


package com.hibernate.eao;

import com.hibernate.entity.Actors;
import java.util.List;

public interface ActorEao {
    
    void create(Actors actors);
    
    void saveOrUpdate(Actors actors);
    
    List<Actors> getActors();
    
    void delete(Actors actors);
    
}

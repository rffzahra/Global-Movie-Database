
package com.hibernate.eao;

import com.hibernate.entity.AverageRating;
import java.util.List;

/**
 *
 * @author Thisara
 */
public interface AverageRatingEao {

    boolean rateAdd(String rateUserNm,String filmName,int rateNm);
    
    List<AverageRating> getRate(String filmName);
    

}

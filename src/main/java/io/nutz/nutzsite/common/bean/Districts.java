/**
  * Copyright 2019 bejson.com 
  */
package io.nutz.nutzsite.common.bean;
import java.util.List;

/**
 * Auto-generated: 2019-02-28 9:46:19
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Districts {

    private List<String> citycode;
    private String adcode;
    private String name;
    private String center;
    private String level;
    private List<Districts> districts;
    public void setCitycode(List<String> citycode) {
         this.citycode = citycode;
     }
     public List<String> getCitycode() {
         return citycode;
     }

    public void setAdcode(String adcode) {
         this.adcode = adcode;
     }
     public String getAdcode() {
         return adcode;
     }

    public void setName(String name) {
         this.name = name;
     }
     public String getName() {
         return name;
     }

    public void setCenter(String center) {
         this.center = center;
     }
     public String getCenter() {
         return center;
     }

    public void setLevel(String level) {
         this.level = level;
     }
     public String getLevel() {
         return level;
     }

    public void setDistricts(List<Districts> districts) {
         this.districts = districts;
     }
     public List<Districts> getDistricts() {
         return districts;
     }

}
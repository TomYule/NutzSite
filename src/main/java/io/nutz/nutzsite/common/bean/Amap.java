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
public class Amap {

    private String status;
    private String info;
    private String infocode;
    private String count;
    private Suggestion suggestion;
    private List<Districts> districts;
    public void setStatus(String status) {
        this.status = status;
    }
    public String getStatus() {
        return status;
    }

    public void setInfo(String info) {
        this.info = info;
    }
    public String getInfo() {
        return info;
    }

    public void setInfocode(String infocode) {
        this.infocode = infocode;
    }
    public String getInfocode() {
        return infocode;
    }

    public void setCount(String count) {
        this.count = count;
    }
    public String getCount() {
        return count;
    }

    public void setSuggestion(Suggestion suggestion) {
        this.suggestion = suggestion;
    }
    public Suggestion getSuggestion() {
        return suggestion;
    }

    public void setDistricts(List<Districts> districts) {
        this.districts = districts;
    }
    public List<Districts> getDistricts() {
        return districts;
    }

}
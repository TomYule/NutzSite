package io.nutz.nutzsite.common.weixin.bean;

/**
 * 获取用户列表
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140840
 */
public class OpenId {

    private int total;
    private int count;
    private Data data;
    private String next_openid;
    public void setTotal(int total) {
         this.total = total;
     }
     public int getTotal() {
         return total;
     }

    public void setCount(int count) {
         this.count = count;
     }
     public int getCount() {
         return count;
     }

    public void setData(Data data) {
         this.data = data;
     }
     public Data getData() {
         return data;
     }

    public void setNext_openid(String next_openid) {
         this.next_openid = next_openid;
     }
     public String getNext_openid() {
         return next_openid;
     }

}
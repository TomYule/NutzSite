package io.nutz.nutzsite.common.alipay.bean;

/**
 * 订单查询 JSON解析实体类
 * @author haimming
 */
public class TradeQuery {

    private String out_trade_no;
    private String trade_no;
    private String org_pid;

    public TradeQuery(String out_trade_no, String trade_no, String org_pid) {
        this.out_trade_no = out_trade_no;
        this.trade_no = trade_no;
        this.org_pid = org_pid;
    }

    public void setOut_trade_no(String out_trade_no) {
        this.out_trade_no = out_trade_no;
    }

    public String getOut_trade_no() {
        return out_trade_no;
    }

    public void setTrade_no(String trade_no) {
        this.trade_no = trade_no;
    }

    public String getTrade_no() {
        return trade_no;
    }

    public void setOrg_pid(String org_pid) {
        this.org_pid = org_pid;
    }

    public String getOrg_pid() {
        return org_pid;
    }

}

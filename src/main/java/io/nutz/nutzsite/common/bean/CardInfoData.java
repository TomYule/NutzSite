package io.nutz.nutzsite.common.bean;

import java.util.List;

/**
 * https://ccdcapi.alipay.com/validateAndCacheCardInfo.json?_input_charset=utf-8&cardBinCheck=true&cardNo=
 * 返回值 对象
 *
 * @Author: Haimming
 * @Date: 2019-07-31 15:18
 * @Version 1.0
 */
public class CardInfoData {
    private List<Messages> messages;
    private boolean validated;
    private String stat;
    private String key;
    private String bank;
    private String cardType;

    public List<Messages> getMessages() {
        return messages;
    }

    public void setMessages(List<Messages> messages) {
        this.messages = messages;
    }

    public boolean isValidated() {
        return validated;
    }

    public void setValidated(boolean validated) {
        this.validated = validated;
    }

    public String getStat() {
        return stat;
    }

    public void setStat(String stat) {
        this.stat = stat;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }
}

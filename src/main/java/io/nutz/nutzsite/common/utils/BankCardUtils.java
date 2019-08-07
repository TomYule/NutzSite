package io.nutz.nutzsite.common.utils;

import io.nutz.nutzsite.common.bean.CardInfoData;
import org.nutz.http.Http;
import org.nutz.json.Json;
import org.nutz.lang.Strings;

import java.util.HashMap;
import java.util.Map;

/**
 * 银行卡效验工具类
 * 参考文章地址
 * https://blog.csdn.net/xinxin19881112/article/details/63267078
 * https://blog.csdn.net/Xiazhiyu_whu/article/details/80391187
 * https://github.com/digglife/cnbankcard
 * @Author: Haimming
 * @Date: 2019-07-31 14:21
 * @Version 1.0
 */
public class BankCardUtils {

    /**
     * 支付宝银行编码对应名称
     */
    public static Map<String, String> bankMap =new HashMap<>();

    static {
        String str = "{\"CDB\":\"国家开发银行\",\"ICBC\":\"中国工商银行\",\"ABC\":\"中国农业银行\",\"BOC\":\"中国银行\",\"CCB\":\"中国建设银行\",\"PSBC\":\"中国邮政储蓄银行\",\"COMM\":\"交通银行\",\"CMB\":\"招商银行\",\"SPDB\":\"上海浦东发展银行\",\"CIB\":\"兴业银行\",\"HXBANK\":\"华夏银行\",\"GDB\":\"广东发展银行\",\"CMBC\":\"中国民生银行\",\"CITIC\":\"中信银行\",\"CEB\":\"中国光大银行\",\"EGBANK\":\"恒丰银行\",\"CZBANK\":\"浙商银行\",\"BOHAIB\":\"渤海银行\",\"SPABANK\":\"平安银行\",\"SHRCB\":\"上海农村商业银行\",\"YXCCB\":\"玉溪市商业银行\",\"YDRCB\":\"尧都农商行\",\"BJBANK\":\"北京银行\",\"SHBANK\":\"上海银行\",\"JSBANK\":\"江苏银行\",\"HZCB\":\"杭州银行\",\"NJCB\":\"南京银行\",\"NBBANK\":\"宁波银行\",\"HSBANK\":\"徽商银行\",\"CSCB\":\"长沙银行\",\"CDCB\":\"成都银行\",\"CQBANK\":\"重庆银行\",\"DLB\":\"大连银行\",\"NCB\":\"南昌银行\",\"FJHXBC\":\"福建海峡银行\",\"HKB\":\"汉口银行\",\"WZCB\":\"温州银行\",\"QDCCB\":\"青岛银行\",\"TZCB\":\"台州银行\",\"JXBANK\":\"嘉兴银行\",\"CSRCB\":\"常熟农村商业银行\",\"NHB\":\"南海农村信用联社\",\"CZRCB\":\"常州农村信用联社\",\"H3CB\":\"内蒙古银行\",\"SXCB\":\"绍兴银行\",\"SDEB\":\"顺德农商银行\",\"WJRCB\":\"吴江农商银行\",\"ZBCB\":\"齐商银行\",\"GYCB\":\"贵阳市商业银行\",\"ZYCBANK\":\"遵义市商业银行\",\"HZCCB\":\"湖州市商业银行\",\"DAQINGB\":\"龙江银行\",\"JINCHB\":\"晋城银行JCBANK\",\"ZJTLCB\":\"浙江泰隆商业银行\",\"GDRCC\":\"广东省农村信用社联合社\",\"DRCBCL\":\"东莞农村商业银行\",\"MTBANK\":\"浙江民泰商业银行\",\"GCB\":\"广州银行\",\"LYCB\":\"辽阳市商业银行\",\"JSRCU\":\"江苏省农村信用联合社\",\"LANGFB\":\"廊坊银行\",\"CZCB\":\"浙江稠州商业银行\",\"DYCB\":\"德阳商业银行\",\"JZBANK\":\"晋中市商业银行\",\"BOSZ\":\"苏州银行\",\"GLBANK\":\"桂林银行\",\"URMQCCB\":\"乌鲁木齐市商业银行\",\"CDRCB\":\"成都农商银行\",\"ZRCBANK\":\"张家港农村商业银行\",\"BOD\":\"东莞银行\",\"LSBANK\":\"莱商银行\",\"BJRCB\":\"北京农村商业银行\",\"TRCB\":\"天津农商银行\",\"SRBANK\":\"上饶银行\",\"FDB\":\"富滇银行\",\"CRCBANK\":\"重庆农村商业银行\",\"ASCB\":\"鞍山银行\",\"NXBANK\":\"宁夏银行\",\"BHB\":\"河北银行\",\"HRXJB\":\"华融湘江银行\",\"ZGCCB\":\"自贡市商业银行\",\"YNRCC\":\"云南省农村信用社\",\"JLBANK\":\"吉林银行\",\"DYCCB\":\"东营市商业银行\",\"KLB\":\"昆仑银行\",\"ORBANK\":\"鄂尔多斯银行\",\"XTB\":\"邢台银行\",\"JSB\":\"晋商银行\",\"TCCB\":\"天津银行\",\"BOYK\":\"营口银行\",\"JLRCU\":\"吉林农信\",\"SDRCU\":\"山东农信\",\"XABANK\":\"西安银行\",\"HBRCU\":\"河北省农村信用社\",\"NXRCU\":\"宁夏黄河农村商业银行\",\"GZRCU\":\"贵州省农村信用社\",\"FXCB\":\"阜新银行\",\"HBHSBANK\":\"湖北银行黄石分行\",\"ZJNX\":\"浙江省农村信用社联合社\",\"XXBANK\":\"新乡银行\",\"HBYCBANK\":\"湖北银行宜昌分行\",\"LSCCB\":\"乐山市商业银行\",\"TCRCB\":\"江苏太仓农村商业银行\",\"BZMD\":\"驻马店银行\",\"GZB\":\"赣州银行\",\"WRCB\":\"无锡农村商业银行\",\"BGB\":\"广西北部湾银行\",\"GRCB\":\"广州农商银行\",\"JRCB\":\"江苏江阴农村商业银行\",\"BOP\":\"平顶山银行\",\"TACCB\":\"泰安市商业银行\",\"CGNB\":\"南充市商业银行\",\"CCQTGB\":\"重庆三峡银行\",\"XLBANK\":\"中山小榄村镇银行\",\"HDBANK\":\"邯郸银行\",\"KORLABANK\":\"库尔勒市商业银行\",\"BOJZ\":\"锦州银行\",\"QLBANK\":\"齐鲁银行\",\"BOQH\":\"青海银行\",\"YQCCB\":\"阳泉银行\",\"SJBANK\":\"盛京银行\",\"FSCB\":\"抚顺银行\",\"ZZBANK\":\"郑州银行\",\"SRCB\":\"深圳农村商业银行\",\"BANKWF\":\"潍坊银行\",\"JJBANK\":\"九江银行\",\"JXRCU\":\"江西省农村信用\",\"HNRCU\":\"河南省农村信用\",\"GSRCU\":\"甘肃省农村信用\",\"SCRCU\":\"四川省农村信用\",\"GXRCU\":\"广西省农村信用\",\"SXRCCU\":\"陕西信合\",\"WHRCB\":\"武汉农村商业银行\",\"YBCCB\":\"宜宾市商业银行\",\"KSRB\":\"昆山农村商业银行\",\"SZSBK\":\"石嘴山银行\",\"HSBK\":\"衡水银行\",\"XYBANK\":\"信阳银行\",\"NBYZ\":\"鄞州银行\",\"ZJKCCB\":\"张家口市商业银行\",\"XCYH\":\"许昌银行\",\"JNBANK\":\"济宁银行\",\"CBKF\":\"开封市商业银行\",\"WHCCB\":\"威海市商业银行\",\"HBC\":\"湖北银行\",\"BOCD\":\"承德银行\",\"BODD\":\"丹东银行\",\"JHBANK\":\"金华银行\",\"BOCY\":\"朝阳银行\",\"LSBC\":\"临商银行\",\"BSB\":\"包商银行\",\"LZYH\":\"兰州银行\",\"BOZK\":\"周口银行\",\"DZBANK\":\"德州银行\",\"SCCB\":\"三门峡银行\",\"AYCB\":\"安阳银行\",\"ARCU\":\"安徽省农村信用社\",\"HURCB\":\"湖北省农村信用社\",\"HNRCC\":\"湖南省农村信用社\",\"NYNB\":\"广东南粤银行\",\"LYBANK\":\"洛阳银行\",\"NHQS\":\"农信银清算中心\",\"CBBQS\":\"城市商业银行资金清算中心\"}";
        bankMap = Json.fromJsonAsMap(String.class,str);
    }

    /*
    当你输入信用卡号码的时候，有没有担心输错了而造成损失呢？其实可以不必这么担心，
    因为并不是一个随便的信用卡号码都是合法的，它必须通过Luhn算法来验证通过。
    该校验的过程：
    1、从卡号最后一位数字开始，逆向将奇数位(1、3、5等等)相加。
    2、从卡号最后一位数字开始，逆向将偶数位数字，先乘以2（如果乘积为两位数，则将其减去9），再求和。
    3、将奇数位总和加上偶数位总和，结果应该可以被10整除。
    例如，卡号是：5432123456788881
    则奇数、偶数位（用红色标出）分布：5432123456788881
    奇数位和=35
    偶数位乘以2（有些要减去9）的结果：1 6 2 6 1 5 7 7，求和=35。
    最后35+35=70 可以被10整除，认定校验通过。
    请编写一个程序，从键盘输入卡号，然后判断是否校验通过。通过显示：“成功”，否则显示“失败”。
    比如，用户输入：356827027232780
    程序输出：成功
    */

    /**
     * 校验银行卡卡号
     *
     * @param cardId
     * @return
     */
    public static boolean checkBankCard(String cardId) {
        cardId = cardId.replaceAll(" ", "");
        char bit = getBankCardCheckCode(cardId.substring(0, cardId.length() - 1));
        if (bit == 'N') {
            return false;
        }
        return cardId.charAt(cardId.length() - 1) == bit;
    }

    /**
     * 从不含校验位的银行卡卡号采用 Luhm 校验算法获得校验位
     *
     * @param nonCheckCodeCardId
     * @return
     */
    public static char getBankCardCheckCode(String nonCheckCodeCardId) {
        nonCheckCodeCardId = nonCheckCodeCardId.replaceAll(" ", "");
        if (nonCheckCodeCardId == null || nonCheckCodeCardId.trim().length() == 0
                || !nonCheckCodeCardId.matches("\\d+")) {
            //如果传的不是数据返回N
            return 'N';
        }
        char[] chs = nonCheckCodeCardId.trim().toCharArray();
        int luhmSum = 0;
        for (int i = chs.length - 1, j = 0; i >= 0; i--, j++) {
            int k = chs[i] - '0';
            if (j % 2 == 0) {
                k *= 2;
                k = k / 10 + k % 10;
            }
            luhmSum += k;
        }
        return (luhmSum % 10 == 0) ? '0' : (char) ((10 - luhmSum % 10) + '0');
    }

    /**
     * 支付宝 验证银行卡
     * @param cardId
     * @return
     */
    public static CardInfoData validateAndCacheCardInfo(String cardId){
        cardId = cardId.replaceAll(" ", "");
        String url = "https://ccdcapi.alipay.com/validateAndCacheCardInfo.json?_input_charset=utf-8&cardBinCheck=true&cardNo="+ cardId;
        String res = Http.get(url,5000).getContent();
        System.out.println(res);
        CardInfoData cardInfoData = new CardInfoData();
        if(Strings.isNotBlank(res)){
            cardInfoData = Json.fromJson(CardInfoData.class, res);
        }
        return cardInfoData;
    }

    /**
     * 获取银行 名称
     * @param cardId
     * @return
     */
    public static String getNameOfBank(String cardId){
        // 获取银行卡的信息
        String name =  BankCardBin.getname(cardId);
        if(Strings.isEmpty(name)){
            CardInfoData cardInfoData = validateAndCacheCardInfo(cardId);
            if(cardInfoData.isValidated()){
                name = bankMap.get(cardInfoData.getBank());
            }
        }
        return name;
    }

}

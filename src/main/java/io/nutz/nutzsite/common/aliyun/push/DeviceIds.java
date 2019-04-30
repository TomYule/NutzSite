package io.nutz.nutzsite.common.aliyun.push;

/**
 * @author by Haiming on 2018-12-27
 */
public class DeviceIds {
    public String id;
    public String platform;
    public String userId;

    public DeviceIds(String id, String platform,String userId) {
        this.id = id;
        this.platform = platform;
        this.userId =userId;
    }
}

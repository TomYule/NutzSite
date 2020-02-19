package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.enums.ImageType;
import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.Image;
import org.nutz.mvc.upload.TempFile;

/**
 * @Author: Haimming
 * @Date: 2019-10-21 10:17
 * @Version 1.0
 */
public interface ImageService extends BaseService<Image> {
    /**
     * 获取图片
     * @param id
     * @return
     */
    public String get(String id);

    /**
     * 图片存储共用类
     * @param tempFile
     * @param type
     * @param userId
     * @return
     */
    public String save(TempFile tempFile, ImageType type, String userId, String id);
}

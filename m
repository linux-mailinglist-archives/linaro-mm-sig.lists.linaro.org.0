Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB1D58EB84
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 13:51:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCA5547976
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 11:51:25 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	by lists.linaro.org (Postfix) with ESMTPS id CFBBA3E896
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 11:51:23 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n4so15693435wrp.10
        for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 04:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc;
        bh=LDfEYb5ujn1T+y8ZdrYflg44hRzKk8763KEYo/Jqooc=;
        b=VsfOftKCJHPLqJmZsbYKzFsC5wiVuqV/8JCiYAVptPF/YYd4ipgoyhzI0tuqldHgzH
         Ha0LF8Pybi7f5hyNzZO0APTqTQNuLpyB6F/dytyZsNhJNqrIqH+9NgHgqta8zn5/fan6
         gFqzx8Yco8TA6ivlfRBarvt+OEzZ4TOS10urY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=LDfEYb5ujn1T+y8ZdrYflg44hRzKk8763KEYo/Jqooc=;
        b=0zj4ed3D2OGR0hjeb9Ui3SbXhNzFc9UQooQWqFiJsgj2JzsaiyuETAJ6ruTzi+huX6
         N0H0gb+FFtVU4TndWDNBplwA+U9wF1JNQ/f8StN7ujhYIT9X4s26kYeGKOL4by0O+n4I
         yUEWcI3L38ZFTSLE51JtA0BHAhogD2wn9kOBUYlrRTJnP82qGF6u9tfS8OMNyGmGlHyJ
         YREicqtEiipG0q2qUJYGdwMRBPmdWFxEzqcALM0foudKLkzIcchm0fqAWyerfRuQ8765
         OojAAEEVUu2doahAirl6uYfGG2Ia1x1KPkna1QQxt/fqayb+6pTW2bP95Jm45d9ICuB6
         A4AQ==
X-Gm-Message-State: ACgBeo0b4Lro02/nX+3bKUtr+NykGI0UP4yWIE5mf+vtdrRjOLOpivZt
	BfMpZEIYAEFyhkMoyrwvi3+x7w==
X-Google-Smtp-Source: AA6agR5l9QMtWYfltZKz7qPF62egv4G39OHczeBaxjZ9CRWiL1TB75raui6OQT3z6KcXev2/EWNGFw==
X-Received: by 2002:a05:6000:61c:b0:220:6425:c113 with SMTP id bn28-20020a056000061c00b002206425c113mr17742344wrb.612.1660132282843;
        Wed, 10 Aug 2022 04:51:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a3-20020adfe5c3000000b0021edb2d07bbsm15588661wrn.33.2022.08.10.04.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 04:51:22 -0700 (PDT)
Date: Wed, 10 Aug 2022 13:51:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: XueBing Chen <chenxuebing@jari.cn>
Message-ID: <YvObuLevnEWEITnS@phenom.ffwll.local>
Mail-Followup-To: XueBing Chen <chenxuebing@jari.cn>,
	sumit.semwal@linaro.org, christian.koenig@amd.com,
	gustavo@padovan.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
References: <6aad3bff.d1a.181b982d1b1.Coremail.chenxuebing@jari.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6aad3bff.d1a.181b982d1b1.Coremail.chenxuebing@jari.cn>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: TSU7TU2XNXZYIJIIIP5ZDA7DMYQJYHZH
X-Message-ID-Hash: TSU7TU2XNXZYIJIIIP5ZDA7DMYQJYHZH
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sync_file: use strscpy to replace strlcpy
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TSU7TU2XNXZYIJIIIP5ZDA7DMYQJYHZH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jul 01, 2022 at 07:26:07PM +0800, XueBing Chen wrote:
> 
> The strlcpy should not be used because it doesn't limit the source
> length. Preferred is strscpy.
> 
> Signed-off-by: XueBing Chen <chenxuebing@jari.cn>

I don't think there's an impact here since we don't check the error return
value, but also doesn't hurt.

Thanks for your patch, applied to drm-misc-next.
-Daniel

> ---
>  drivers/dma-buf/sync_file.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> index 3ebec19a8e02..af57799c86ce 100644
> --- a/drivers/dma-buf/sync_file.c
> +++ b/drivers/dma-buf/sync_file.c
> @@ -132,7 +132,7 @@ EXPORT_SYMBOL(sync_file_get_fence);
>  char *sync_file_get_name(struct sync_file *sync_file, char *buf, int len)
>  {
>  	if (sync_file->user_name[0]) {
> -		strlcpy(buf, sync_file->user_name, len);
> +		strscpy(buf, sync_file->user_name, len);
>  	} else {
>  		struct dma_fence *fence = sync_file->fence;
>  
> @@ -172,7 +172,7 @@ static struct sync_file *sync_file_merge(const char *name, struct sync_file *a,
>  		return NULL;
>  	}
>  	sync_file->fence = fence;
> -	strlcpy(sync_file->user_name, name, sizeof(sync_file->user_name));
> +	strscpy(sync_file->user_name, name, sizeof(sync_file->user_name));
>  	return sync_file;
>  }
>  
> @@ -262,9 +262,9 @@ static long sync_file_ioctl_merge(struct sync_file *sync_file,
>  static int sync_fill_fence_info(struct dma_fence *fence,
>  				 struct sync_fence_info *info)
>  {
> -	strlcpy(info->obj_name, fence->ops->get_timeline_name(fence),
> +	strscpy(info->obj_name, fence->ops->get_timeline_name(fence),
>  		sizeof(info->obj_name));
> -	strlcpy(info->driver_name, fence->ops->get_driver_name(fence),
> +	strscpy(info->driver_name, fence->ops->get_driver_name(fence),
>  		sizeof(info->driver_name));
>  
>  	info->status = dma_fence_get_status(fence);
> -- 
> 2.25.1
> _______________________________________________
> Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
> To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

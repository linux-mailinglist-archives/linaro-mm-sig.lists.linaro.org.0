Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F5662DEF
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 19:02:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C9B13EF9F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 18:02:41 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by lists.linaro.org (Postfix) with ESMTPS id C0FC73E925
	for <linaro-mm-sig@lists.linaro.org>; Sun,  8 Jan 2023 22:45:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=e8zj826Z;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.167.48 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id j17so10393139lfr.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 08 Jan 2023 14:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xNjDFq7jF6Xutyrz7TZXPQsfgSYhgyOTeZIcCQictVc=;
        b=e8zj826Zagy7Wr+2jC7vyR1XimbGVyk4hS7mMWuWs5jS5BMhe4INZZPZZ3dqZGd4zW
         vVuWxQoKEM2XVg1AJ1pcgxxZxdOmVRvTv6n/91dmCmyvQWOCv4w0hTImVuK4BUK86s0O
         KIsslORjq5lajLYSh379zvq7zEUKgf0Wx2NeMGPciJ/W/W3IS6b0ICpuHi1WlLXLMQRH
         P2ZwoeLK3bIf0AE1GtJdSaO4K/qofXQUK/AihEXhvsbAow2S5HtG3N558XOuEXrTX2h+
         bFCWrkB2ARluw63iPTDc17QjyIKCcm7vZy1eGqwWusrs7OooTfKMoVqVarn+L5fLGiwo
         bR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xNjDFq7jF6Xutyrz7TZXPQsfgSYhgyOTeZIcCQictVc=;
        b=JhgL7Af30qvO5FCqKdhsfxRIuWMPfCB/6GYOCxw0ZtmO+tWt4ZsnUi4OpIAXA61c/W
         gvgYK4NVz2FtVobZaXdmRIuEG44RwfdBDh2blzjMXfZ7yicWXOPJTAuxkkL83ZPTkGlC
         q0Si4+FAS6cpCUqHbZkWaJrZxgjelmmBDwOeFDJa0wgwHAKQUzGLpPzHDyzw2+Epe81+
         GVszVDGtsMUtHRScN7E3sGDWA5dL0Xe3f3Y2C2OXdZ9CDKLK2+yxlKw8Vkv+hWmZJQf/
         yg9eANaXewKGoN5QV1jTbOjX6I/bi4tOtkJe4szBP4rwA9HiJed4lLwWXQQsgPrEFsEB
         XxkA==
X-Gm-Message-State: AFqh2kpWfAWdj45jW8KCxFEduooZrtmBg75rx8lFXMzhYtfZMxvOyUbt
	zVN7a83jntJnpo0MK7LkAwVHRPKL
X-Google-Smtp-Source: AMrXdXvwzFkEAxmdB2Z6hlU44qt3jw6D5B4obR6CvQwIXBWaGQgM0nax26AbcjwKQIqDWuaHbP3Z5g==
X-Received: by 2002:a05:6512:304a:b0:4b5:5098:e6f7 with SMTP id b10-20020a056512304a00b004b55098e6f7mr19827844lfb.68.1673217905625;
        Sun, 08 Jan 2023 14:45:05 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n26-20020a05651203fa00b0049464d89e40sm1257366lfq.72.2023.01.08.14.45.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Jan 2023 14:45:05 -0800 (PST)
Message-ID: <9b53d5f0-e1b1-1ecd-b9b9-efa20b11c916@linaro.org>
Date: Mon, 9 Jan 2023 00:45:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-GB
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>, robdclark@gmail.com,
 quic_abhinavk@quicinc.com, sean@poorly.run, airlied@gmail.com,
 sumit.semwal@linaro.org, christian.koenig@amd.com
References: <20230106084712.29675-1-jiasheng@iscas.ac.cn>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230106084712.29675-1-jiasheng@iscas.ac.cn>
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[iscas.ac.cn,gmail.com,quicinc.com,poorly.run,linaro.org,amd.com];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.48:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C0FC73E925
X-Spamd-Bar: ----
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: Z724KNQG2MSHWMAPQOOMMV63ZDPVHBPK
X-Message-ID-Hash: Z724KNQG2MSHWMAPQOOMMV63ZDPVHBPK
X-Mailman-Approved-At: Mon, 09 Jan 2023 18:02:19 +0000
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, freedreno@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND] drm/msm: Add missing check and destroy for alloc_ordered_workqueue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z724KNQG2MSHWMAPQOOMMV63ZDPVHBPK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 06/01/2023 10:47, Jiasheng Jiang wrote:
> Add check for the return value of alloc_ordered_workqueue as it may return
> NULL pointer.
> Moreover, use the destroy_workqueue in the later fails in order to avoid
> memory leak.
> 
> Fixes: c8afe684c95c ("drm/msm: basic KMS driver for snapdragon")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
>   drivers/gpu/drm/msm/msm_drv.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
> index 8b0b0ac74a6f..b82d938226ad 100644
> --- a/drivers/gpu/drm/msm/msm_drv.c
> +++ b/drivers/gpu/drm/msm/msm_drv.c
> @@ -418,6 +418,8 @@ static int msm_drm_init(struct device *dev, const struct drm_driver *drv)
>   	priv->dev = ddev;
>   
>   	priv->wq = alloc_ordered_workqueue("msm", 0);
> +	if (!priv->wq)
> +		return -ENOMEM;
>   
>   	INIT_LIST_HEAD(&priv->objects);
>   	mutex_init(&priv->obj_lock);
> @@ -440,12 +442,12 @@ static int msm_drm_init(struct device *dev, const struct drm_driver *drv)
>   
>   	ret = msm_init_vram(ddev);
>   	if (ret)
> -		return ret;
> +		goto err_destroy_workqueue;
>   
>   	/* Bind all our sub-components: */
>   	ret = component_bind_all(dev, ddev);
>   	if (ret)
> -		return ret;
> +		goto err_destroy_workqueue;
>   
>   	dma_set_max_seg_size(dev, UINT_MAX);
>   
> @@ -540,6 +542,8 @@ static int msm_drm_init(struct device *dev, const struct drm_driver *drv)
>   
>   err_msm_uninit:
>   	msm_drm_uninit(dev);

return ret is missing here. Your code will result in double free.

However the intent was to unroll each and every action of msm_drm_init() 
in msm_drm_uninit(). So in all your cases please goto err_msm_unit.

> +err_destroy_workqueue:
> +	destroy_workqueue(priv->wq);
>   	return ret;
>   }
>   

-- 
With best wishes
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

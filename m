Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 642834B6486
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:39:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 960923EE86
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:39:45 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by lists.linaro.org (Postfix) with ESMTPS id AC7A13EE9A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Jan 2022 02:07:00 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id t14so13061686ljh.8
        for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 18:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=03gjQlgR5Dxhb9WkNowyotEgdW202c8d1VlLtX85qok=;
        b=Du4AGA7nF/W00f2LVQw8lhgAnoO0ZwqlUuMelw6cNUYR5/Ma2Fv7dOVrFjkwmLv6Qm
         tmohqjX9pW0GxAkpVFO2yqIFbr7Nn51fCIXPrGKKKwnKLMIjo9hcUhIyqcbEodsHKY1p
         G7o2jGSo/tgkX3bveHJcQeRdM56Va17Jrnhpm+Io2lffnZBEezWiiA4ijZvN04Buv5PT
         3iTCUueNEw6iiJTuwv394C7St1sNAYYPasKNopsuMIqG5BoKjgx97YiOcl5IvhSYtLL3
         7vEIy5hPLu9VYpqIsIawF/tuXJW8MoS4YH3DhddGH3aPL/QEatiy8exUSejEhJmFEbQh
         x0pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=03gjQlgR5Dxhb9WkNowyotEgdW202c8d1VlLtX85qok=;
        b=1rCyANxOf6DU+W2wjW5jzCS6zSRKJ0OnSR/Y/KwB46JbDLckc7N1cjdtNacTEGl/OC
         dj9YgJFCQTdHrHwk0/FeCqvMQh4L/GqyZ6zQdn7vQOIfeeT8kD54BLMXx5AR3of5fS9G
         3vuqpXIpB8IoDTufZAWseHsfOhQjTMHRtj8tGZlSLsB79Hvz6WjCLaewj/TM6bYi47Bf
         Rp3mZZYvOxfX6VsJC3haxWM7Bi3Dwm4bdXVnnu0ztlo77bVJGea8sa0NWhdWJoGcev+g
         qCkRXLnHiRDcev0usQkXgaTfueVRMcSonmx6XvlTjChuf3iqJL5eKtd0hTcKNmjGDxd2
         OOkQ==
X-Gm-Message-State: AOAM533528XrWoISzWbvmWo2HNbXiRJPQOxLheVwLCk7BDOqwu1+60Rt
	ra3vfIkRxPlE1pwgwZ+IJenHrxdx
X-Google-Smtp-Source: ABdhPJwpuM9KRu0Rv7HDlKS2t+F8icSc/PHdc4SswuzcxRomivyaxQfI2OVr7fcX9oboDIopEgrk0g==
X-Received: by 2002:a2e:9148:: with SMTP id q8mr7558833ljg.258.1643076419522;
        Mon, 24 Jan 2022 18:06:59 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i18sm1339400lfv.257.2022.01.24.18.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jan 2022 18:06:58 -0800 (PST)
Message-ID: <c4c56b0f-84ca-0a56-6618-73e24f4bfd46@linaro.org>
Date: Tue, 25 Jan 2022 05:06:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Xianting Tian <xianting.tian@linux.alibaba.com>, robdclark@gmail.com,
 sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch, sumit.semwal@linaro.org,
 christian.koenig@amd.com
References: <20220112123334.749776-1-xianting.tian@linux.alibaba.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220112123334.749776-1-xianting.tian@linux.alibaba.com>
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T6GRMTJWZZOZT6SAC4DMGP3NNMQXWSQR
X-Message-ID-Hash: T6GRMTJWZZOZT6SAC4DMGP3NNMQXWSQR
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:54 +0000
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/msm: Fix wrong size calculation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T6GRMTJWZZOZT6SAC4DMGP3NNMQXWSQR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 12/01/2022 15:33, Xianting Tian wrote:
> For example, memory-region in .dts as below,
> 	reg = <0x0 0x50000000 0x0 0x20000000>
> 
> We can get below values,
> struct resource r;
> r.start = 0x50000000;
> r.end	= 0x6fffffff;
> 
> So the size should be:
> size = r.end - r.start + 1 = 0x20000000
> 
> Signed-off-by: Xianting Tian <xianting.tian@linux.alibaba.com>

Fixes: 072f1f9168ed ("drm/msm: add support for "stolen" mem")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/gpu/drm/msm/msm_drv.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
> index 892c04365..f04a2337d 100644
> --- a/drivers/gpu/drm/msm/msm_drv.c
> +++ b/drivers/gpu/drm/msm/msm_drv.c
> @@ -466,7 +466,7 @@ static int msm_init_vram(struct drm_device *dev)
>   		of_node_put(node);
>   		if (ret)
>   			return ret;
> -		size = r.end - r.start;
> +		size = r.end - r.start + 1;
>   		DRM_INFO("using VRAM carveout: %lx@%pa\n", size, &r.start);
>   
>   		/* if we have no IOMMU, then we need to use carveout allocator.


-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

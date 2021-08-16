Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB1A3ECE71
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Aug 2021 08:08:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD5C46098B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Aug 2021 06:08:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C6CFA623A8; Mon, 16 Aug 2021 06:08:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54E38609A7;
	Mon, 16 Aug 2021 06:08:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E1D8160865
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 06:08:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DF6FF609A7; Mon, 16 Aug 2021 06:08:22 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id D7A2860865
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Aug 2021 06:08:20 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 o1-20020a05600c5101b02902e676fe1f04so10680121wms.1
 for <linaro-mm-sig@lists.linaro.org>; Sun, 15 Aug 2021 23:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=r/nHbEzboSNUFm0n5Kb5WDXFEoEgqApNclI3Nq97ty0=;
 b=ie5fQk6Qnd9hKkCia2eNH/XTgxZyoKcBv9kjT2vdiPawNoVz5IKxsjRfWwx/7u6DA3
 B3LMBIAvP0TMgYBJx3lGZMHVXYctir4WQUKBASHWyGABZPZps96mKIQe+Reyd0unhPYr
 c+AZwtegayBCmm26xwM05NB0SEtleph6zmB/uuULWAhXPOhmAXdBskGRGwMRWe7p+mcj
 pZElukYdvy8dQba8GYnNIWLQDpXyzAZ4UnVbekjJaY5NyGL8Zm4Al6YVcx58wqCVUcNh
 UA9nx5FglQx0DHoZeGALT5L41wP0uAhysJ46xHa05/8Uc3jrfaarGhilslX7mCpAEnwh
 ssbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=r/nHbEzboSNUFm0n5Kb5WDXFEoEgqApNclI3Nq97ty0=;
 b=D5Rk6p1gIsAYwfV3R/NYJ/4Tm1a0tte4CWFztLB2v9nDiymQ9NiSRlP/WgyKLoD0hA
 IeSeydMBQj4KWEXyAsk0rSenTpEgpG+YahHuRlgz94bHMZKNaAIsY18lpPhhIbEiPyMu
 UHq51yyfc8Xom62vL31IGDn+76PtyJIt0iNLZMiYLesTc3jJNgjL/PGTleO0mAu30owL
 WnGxuzFPHwpMBCpqFuyRNe3vYnMcM3Pcsq/pjOrxJ7UInyAB0rTNH4s77O/cR8qhM3g8
 l+sHycXMhNDQc6D6p+yZ1EKpOJt8BNmOkIswvOULJSuOrabKW+oF1ksPEP4hEa3fD9/r
 YPBQ==
X-Gm-Message-State: AOAM531zUPocxAoZQ4JNr8Scr2W0R3SIdUkW1A6byvHjV/nPRSygJ9BD
 OJpJxuX19yQ/IGHMFC4QsPX/YIlrLvM=
X-Google-Smtp-Source: ABdhPJyxgM9YzKO1jjyjOL7VHA3knQ2ZTEXygRcCRRbxotj675P0dVv4dSpKCKsWvWTeiOXXEUNTiQ==
X-Received: by 2002:a1c:a181:: with SMTP id k123mr13413029wme.90.1629094099521; 
 Sun, 15 Aug 2021 23:08:19 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:7d83:fd8:eb16:8605?
 ([2a02:908:1252:fb60:7d83:fd8:eb16:8605])
 by smtp.gmail.com with ESMTPSA id l2sm9347965wme.28.2021.08.15.23.08.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Aug 2021 23:08:18 -0700 (PDT)
To: lwt105 <3061522931@qq.com>, alexander.deucher@amd.com
References: <tencent_D167B6522B17C0228524C70F9CA5EEBBEC09@qq.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <fac65461-6ee2-e5dc-3af8-df9bfaecd6d4@gmail.com>
Date: Mon, 16 Aug 2021 08:08:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <tencent_D167B6522B17C0228524C70F9CA5EEBBEC09@qq.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drivers:gpu:drm:amd:amdgpu:fix a
 potential use-after-free
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: luben.tuikov@amd.com, kevin1.wang@amd.com, mh12gx2825@gmail.com,
 airlied@linux.ie, dri-devel@lists.freedesktop.org, Xinhui.Pan@amd.com,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, nirmoy.das@amd.com, chenli@uniontech.com,
 daniel@ffwll.ch, JinhuiEric.Huang@amd.com, lee.jones@linaro.org,
 christian.koenig@amd.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Am 13.08.21 um 05:28 schrieb lwt105:
> in line 1503, "dma_fence_put(fence);" drop the reference to fence and may
> cause fence to be released. However, fence is used subsequently in line
> 1510 "fence->error". This may result in an use-after-free bug.
>
> It can be fixed by recording fence->error in an variable before dropping
> the reference to fence and referencing it after dropping.
>
> Signed-off-by: lwt105 <3061522931@qq.com>

Good catch.

> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> index 30fa1f61e0e5..99d03180e113 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
> @@ -1486,7 +1486,7 @@ static int amdgpu_cs_wait_all_fences(struct amdgpu_device *adev,
>   				     struct drm_amdgpu_fence *fences)
>   {
>   	uint32_t fence_count = wait->in.fence_count;
> -	unsigned int i;
> +	unsigned int i, error;
>   	long r = 1;

Would be nice to have if you could reuse the "r" variable here instead 
of a new one.

Regards,
Christian.

>   
>   	for (i = 0; i < fence_count; i++) {
> @@ -1500,6 +1500,7 @@ static int amdgpu_cs_wait_all_fences(struct amdgpu_device *adev,
>   			continue;
>   
>   		r = dma_fence_wait_timeout(fence, true, timeout);
> +		error = fence->error;
>   		dma_fence_put(fence);
>   		if (r < 0)
>   			return r;
> @@ -1507,8 +1508,8 @@ static int amdgpu_cs_wait_all_fences(struct amdgpu_device *adev,
>   		if (r == 0)
>   			break;
>   
> -		if (fence->error)
> -			return fence->error;
> +		if (error)
> +			return error;
>   	}
>   
>   	memset(wait, 0, sizeof(*wait));

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

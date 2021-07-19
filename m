Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FF83CCF6A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jul 2021 10:41:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BCB260851
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jul 2021 08:41:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1555D612A6; Mon, 19 Jul 2021 08:41:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C32A060991;
	Mon, 19 Jul 2021 08:41:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 66D4560774
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jul 2021 08:41:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6470960991; Mon, 19 Jul 2021 08:41:02 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 58B6960774
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jul 2021 08:41:00 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id r11so20969495wro.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jul 2021 01:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=BSOq/6LU7myFeRU9sVPe/x6k8J7ibQSkaSa7AKjKFSw=;
 b=DjXoqORFiqtt4rE5ZyXDIb7/ln22JGSkGZaFHNCsrKxgS+jBCtKuODQNkTLOIEACqc
 KLj44NNYb1P7JhBYYk333PjdMs6+/6wjl3wDOUhYRRNvkDKcU1b4BMBDUXkrALp/yR3c
 eik4IoWYEHSBl3n48IG93J5JTgnKZkDE/rAVPc0uXwJsgyiJFeDlv9RAFS/lPFbBHUEx
 xX7EuCM3Id9LBQ/tNf0BohPT15mRhDjLCYQWjOeU2HwZbnLVVOtb1uF+nZJjmK1m7bz0
 kcQFHH6Tbo5xmxnZc+zVzIbZkEnV6N4K5ulew+NE+OpIoEbwR0fAmtMqASjkSZGJMF23
 uVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=BSOq/6LU7myFeRU9sVPe/x6k8J7ibQSkaSa7AKjKFSw=;
 b=odPi3P5ULetHsYGVeelzJPcqKxZR86O+cVLDxwXbrfmiuSyZCKaPlr/V1T/20GCouZ
 D6ylNOyXb+9AZdS7GCUps4oEl3t56SED+FgOlftirzVQLeo+YEL8bjM++907PjG9SdSa
 dzbF9YifKJAejjWSygzX/LxT77/UZhoQcs2+3WsOMl0iG2b4zfiBBb3OEXdF6Z6C/39o
 1EK3sQAzpAVNjwIH7xpMvWQegyjDhQDHYKTdwy36sGNmYgfNQbP3102tw1MgiHGhjQYo
 NrlpApGZEsW8LkdmsPtqNXMK8CUc4quDIiZ7Ujsf6g3ynZLA6wZHdLSt6qicPAN9MBGY
 oRjg==
X-Gm-Message-State: AOAM530iVK0Zk8DEzT9UY5HmxErxv6YuvG9yuLPWvFaky7D/cGseaS3e
 iGUWDi8RZ2U9olfmTJ+rJ0I=
X-Google-Smtp-Source: ABdhPJx78JN8b/ZveBWU79Ei+AvwV8ONa7QAzZR4sp6UFDoSwGfCbcKq6sN7s1mjTYYeyCHxC/dWoQ==
X-Received: by 2002:adf:c102:: with SMTP id r2mr27884871wre.22.1626684059448; 
 Mon, 19 Jul 2021 01:40:59 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:e48d:68a9:5ef4:9e09?
 ([2a02:908:1252:fb60:e48d:68a9:5ef4:9e09])
 by smtp.gmail.com with ESMTPSA id e6sm22661717wrg.18.2021.07.19.01.40.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Jul 2021 01:40:59 -0700 (PDT)
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20210717202924.987514-1-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <582b8869-f370-3803-60a8-df31088f8088@gmail.com>
Date: Mon, 19 Jul 2021 10:40:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210717202924.987514-1-robdclark@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 00/11] drm/msm: drm scheduler conversion
 and cleanups
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
Cc: Rob Clark <robdclark@chromium.org>, freedreno@lists.freedesktop.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Jonathan Marek <jonathan@marek.ca>, Emma Anholt <emma@anholt.net>,
 Bernard Zhao <bernard@vivo.com>, Sharat Masetty <smasetty@codeaurora.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Akhil P Oommen <akhilpo@codeaurora.org>, Dave Airlie <airlied@redhat.com>,
 Douglas Anderson <dianders@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 "Kristian H. Kristensen" <hoegsberg@google.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Lee Jones <lee.jones@linaro.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Am 17.07.21 um 22:29 schrieb Rob Clark:
> From: Rob Clark <robdclark@chromium.org>
>
> Conversion to gpu_scheduler, and bonus removal of
> drm_gem_object_put_locked()

Oh yes please!

If I'm not completely mistaken that was the last puzzle piece missing to 
unify TTMs and GEMs refcount of objects.

Only problem is that I only see patch 7 and 9 in my inbox. Where is the 
rest?

Thanks,
Christian.

>
> Rob Clark (11):
>    drm/msm: Docs and misc cleanup
>    drm/msm: Small submitqueue creation cleanup
>    drm/msm: drop drm_gem_object_put_locked()
>    drm: Drop drm_gem_object_put_locked()
>    drm/msm/submit: Simplify out-fence-fd handling
>    drm/msm: Consolidate submit bo state
>    drm/msm: Track "seqno" fences by idr
>    drm/msm: Return ERR_PTR() from submit_create()
>    drm/msm: Conversion to drm scheduler
>    drm/msm: Drop struct_mutex in submit path
>    drm/msm: Utilize gpu scheduler priorities
>
>   drivers/gpu/drm/drm_gem.c                   |  22 --
>   drivers/gpu/drm/msm/Kconfig                 |   1 +
>   drivers/gpu/drm/msm/adreno/a5xx_debugfs.c   |   4 +-
>   drivers/gpu/drm/msm/adreno/a5xx_gpu.c       |   6 +-
>   drivers/gpu/drm/msm/adreno/a5xx_power.c     |   2 +-
>   drivers/gpu/drm/msm/adreno/a5xx_preempt.c   |   7 +-
>   drivers/gpu/drm/msm/adreno/a6xx_gmu.c       |  12 +-
>   drivers/gpu/drm/msm/adreno/a6xx_gpu.c       |   2 +-
>   drivers/gpu/drm/msm/adreno/a6xx_gpu_state.c |   4 +-
>   drivers/gpu/drm/msm/adreno/adreno_gpu.c     |   6 +-
>   drivers/gpu/drm/msm/msm_drv.c               |  30 +-
>   drivers/gpu/drm/msm/msm_fence.c             |  39 ---
>   drivers/gpu/drm/msm/msm_fence.h             |   2 -
>   drivers/gpu/drm/msm/msm_gem.c               |  91 +-----
>   drivers/gpu/drm/msm/msm_gem.h               |  37 ++-
>   drivers/gpu/drm/msm/msm_gem_submit.c        | 300 ++++++++++++--------
>   drivers/gpu/drm/msm/msm_gpu.c               |  50 +---
>   drivers/gpu/drm/msm/msm_gpu.h               |  41 ++-
>   drivers/gpu/drm/msm/msm_ringbuffer.c        |  70 ++++-
>   drivers/gpu/drm/msm/msm_ringbuffer.h        |  12 +
>   drivers/gpu/drm/msm/msm_submitqueue.c       |  49 +++-
>   include/drm/drm_gem.h                       |   2 -
>   include/uapi/drm/msm_drm.h                  |  10 +-
>   23 files changed, 440 insertions(+), 359 deletions(-)
>

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F196A94E6
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 11:11:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 370BD3EF22
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 10:11:17 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id 0B4603E941
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 10:10:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=D56ghztB;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.170 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id by8so1778624ljb.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 02:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NqTJog0WU9Xb9UlJnoiB4XTN8ej2i9JgdSH+1vJmkdE=;
        b=D56ghztB6NZ023qjf6JAGEbRxj2GdP2MyeLv7w9eludzsc8ZxOnMFuwM1Wn0Hb2fJy
         aqY0mGB5JmzxB6Ohhb0Dd0+SoL0BQPElORMkpo+sO4piYYvAvDx0Ot5zXFWsL//fEXnT
         5D6iiw1p8PudnM6q1bAEFoAsa7QhIyExZzA404tQdda2zFE9KUvtFktIZYwRwVWUjtn8
         OsspLEf/IQJdPHkG7wY6hkjz9aIHlnhJMxiBRC5V2HTOqNioqVIzpQWP3lrEikp49Fad
         hVf10cGR+ovsWxcZNr9XsNnW0nCBiHbzQoy+SC0W9ZwIfICneVjCv4dQ4HtVE38pqCR/
         klYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NqTJog0WU9Xb9UlJnoiB4XTN8ej2i9JgdSH+1vJmkdE=;
        b=1/GrsJja8KMHLKcFUSZNuuremMJyc+uNiI+8mJxyBgo0qBA8SozYFRFrF3RFlF8u7o
         fyiEnYW4lP3+323U3n8lAmJR9F0DgyRIegUagVxPF/nBl5v6+KVW6BU8ES8MNr16To2D
         ss04YQ4vKvDxnH5wF14cJelc8M3gYNwd5ejTJ9debXKjnqoF0DE1+FseYhmVpX0Okm1s
         DpE1okzCf56Uz7d81l2RvANZRve/lNf+Z899w8hOioyuRn1WAC8JY9UrtSati2QNVeAB
         yyDQ8SpUjInrOJRbpuB0MM3G5g//r+d37QeClQfY+tyw3WRPfHy0ZmQd9uYHbrP/vh1G
         q82w==
X-Gm-Message-State: AO0yUKVaXOINfPGAzu8CzwuNWvtbhLr8Myh4uMc9lRwKtjZ6yD4uywhh
	GxCllNCBEgQ/1Dfh25idB8MSBPzd
X-Google-Smtp-Source: AK7set8498/xVK6/EvQia/Yd0/vqlLTKzh4csvD5Wm6NMW6LU1slxYLRLbfbSZjQg5IejKoczHCx2g==
X-Received: by 2002:a2e:3111:0:b0:290:6e3b:be34 with SMTP id x17-20020a2e3111000000b002906e3bbe34mr347302ljx.42.1677838256798;
        Fri, 03 Mar 2023 02:10:56 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id f16-20020a2eb5b0000000b00294692d8645sm238386ljn.17.2023.03.03.02.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Mar 2023 02:10:56 -0800 (PST)
Message-ID: <a5249009-0bec-61a5-4dd2-5728ee3017e3@linaro.org>
Date: Fri, 3 Mar 2023 12:10:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-GB
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230302235356.3148279-1-robdclark@gmail.com>
 <20230302235356.3148279-13-robdclark@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230302235356.3148279-13-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0B4603E941
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.170:from];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2001:14ba:a085:4d00::8a5:received];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,quicinc.com,poorly.run,linaro.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: PU5G4BWI5ZZYQAZWEIIYFEQPUMYPVFN6
X-Message-ID-Hash: PU5G4BWI5ZZYQAZWEIIYFEQPUMYPVFN6
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 12/15] drm/msm: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PU5G4BWI5ZZYQAZWEIIYFEQPUMYPVFN6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 03/03/2023 01:53, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Track the nearest deadline on a fence timeline and set a timer to expire
> shortly before to trigger boost if the fence has not yet been signaled.
> 
> v2: rebase
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>   drivers/gpu/drm/msm/msm_fence.c | 74 +++++++++++++++++++++++++++++++++
>   drivers/gpu/drm/msm/msm_fence.h | 20 +++++++++
>   2 files changed, 94 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

A small question: do we boost to fit into the deadline or to miss the 
deadline for as little as possible? If the former is the case, we might 
need to adjust 3ms depending on the workload.

> 
> diff --git a/drivers/gpu/drm/msm/msm_fence.c b/drivers/gpu/drm/msm/msm_fence.c
> index 56641408ea74..51b461f32103 100644
> --- a/drivers/gpu/drm/msm/msm_fence.c
> +++ b/drivers/gpu/drm/msm/msm_fence.c
> @@ -8,6 +8,35 @@
>   
>   #include "msm_drv.h"
>   #include "msm_fence.h"
> +#include "msm_gpu.h"
> +
> +static struct msm_gpu *fctx2gpu(struct msm_fence_context *fctx)
> +{
> +	struct msm_drm_private *priv = fctx->dev->dev_private;
> +	return priv->gpu;
> +}
> +
> +static enum hrtimer_restart deadline_timer(struct hrtimer *t)
> +{
> +	struct msm_fence_context *fctx = container_of(t,
> +			struct msm_fence_context, deadline_timer);
> +
> +	kthread_queue_work(fctx2gpu(fctx)->worker, &fctx->deadline_work);
> +
> +	return HRTIMER_NORESTART;
> +}
> +
> +static void deadline_work(struct kthread_work *work)
> +{
> +	struct msm_fence_context *fctx = container_of(work,
> +			struct msm_fence_context, deadline_work);
> +
> +	/* If deadline fence has already passed, nothing to do: */
> +	if (msm_fence_completed(fctx, fctx->next_deadline_fence))
> +		return;
> +
> +	msm_devfreq_boost(fctx2gpu(fctx), 2);
> +}
>   
>   
>   struct msm_fence_context *
> @@ -36,6 +65,13 @@ msm_fence_context_alloc(struct drm_device *dev, volatile uint32_t *fenceptr,
>   	fctx->completed_fence = fctx->last_fence;
>   	*fctx->fenceptr = fctx->last_fence;
>   
> +	hrtimer_init(&fctx->deadline_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
> +	fctx->deadline_timer.function = deadline_timer;
> +
> +	kthread_init_work(&fctx->deadline_work, deadline_work);
> +
> +	fctx->next_deadline = ktime_get();
> +
>   	return fctx;
>   }
>   
> @@ -62,6 +98,8 @@ void msm_update_fence(struct msm_fence_context *fctx, uint32_t fence)
>   	spin_lock_irqsave(&fctx->spinlock, flags);
>   	if (fence_after(fence, fctx->completed_fence))
>   		fctx->completed_fence = fence;
> +	if (msm_fence_completed(fctx, fctx->next_deadline_fence))
> +		hrtimer_cancel(&fctx->deadline_timer);
>   	spin_unlock_irqrestore(&fctx->spinlock, flags);
>   }
>   
> @@ -92,10 +130,46 @@ static bool msm_fence_signaled(struct dma_fence *fence)
>   	return msm_fence_completed(f->fctx, f->base.seqno);
>   }
>   
> +static void msm_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
> +{
> +	struct msm_fence *f = to_msm_fence(fence);
> +	struct msm_fence_context *fctx = f->fctx;
> +	unsigned long flags;
> +	ktime_t now;
> +
> +	spin_lock_irqsave(&fctx->spinlock, flags);
> +	now = ktime_get();
> +
> +	if (ktime_after(now, fctx->next_deadline) ||
> +			ktime_before(deadline, fctx->next_deadline)) {
> +		fctx->next_deadline = deadline;
> +		fctx->next_deadline_fence =
> +			max(fctx->next_deadline_fence, (uint32_t)fence->seqno);
> +
> +		/*
> +		 * Set timer to trigger boost 3ms before deadline, or
> +		 * if we are already less than 3ms before the deadline
> +		 * schedule boost work immediately.
> +		 */
> +		deadline = ktime_sub(deadline, ms_to_ktime(3));
> +
> +		if (ktime_after(now, deadline)) {
> +			kthread_queue_work(fctx2gpu(fctx)->worker,
> +					&fctx->deadline_work);
> +		} else {
> +			hrtimer_start(&fctx->deadline_timer, deadline,
> +					HRTIMER_MODE_ABS);
> +		}
> +	}
> +
> +	spin_unlock_irqrestore(&fctx->spinlock, flags);
> +}
> +
>   static const struct dma_fence_ops msm_fence_ops = {
>   	.get_driver_name = msm_fence_get_driver_name,
>   	.get_timeline_name = msm_fence_get_timeline_name,
>   	.signaled = msm_fence_signaled,
> +	.set_deadline = msm_fence_set_deadline,
>   };
>   
>   struct dma_fence *
> diff --git a/drivers/gpu/drm/msm/msm_fence.h b/drivers/gpu/drm/msm/msm_fence.h
> index 7f1798c54cd1..cdaebfb94f5c 100644
> --- a/drivers/gpu/drm/msm/msm_fence.h
> +++ b/drivers/gpu/drm/msm/msm_fence.h
> @@ -52,6 +52,26 @@ struct msm_fence_context {
>   	volatile uint32_t *fenceptr;
>   
>   	spinlock_t spinlock;
> +
> +	/*
> +	 * TODO this doesn't really deal with multiple deadlines, like
> +	 * if userspace got multiple frames ahead.. OTOH atomic updates
> +	 * don't queue, so maybe that is ok
> +	 */
> +
> +	/** next_deadline: Time of next deadline */
> +	ktime_t next_deadline;
> +
> +	/**
> +	 * next_deadline_fence:
> +	 *
> +	 * Fence value for next pending deadline.  The deadline timer is
> +	 * canceled when this fence is signaled.
> +	 */
> +	uint32_t next_deadline_fence;
> +
> +	struct hrtimer deadline_timer;
> +	struct kthread_work deadline_work;
>   };
>   
>   struct msm_fence_context * msm_fence_context_alloc(struct drm_device *dev,

-- 
With best wishes
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

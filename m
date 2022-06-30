Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9734757B7D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 15:48:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD7784792A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Jul 2022 13:48:36 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by lists.linaro.org (Postfix) with ESMTPS id 6A73C3F183
	for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jun 2022 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1656599393; x=1688135393;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=wQpzAJXTo7Bhnhsk3imUJSwSv9/OyCu1er02rRF6zKA=;
  b=EJyv5DK6rxTgD7zOmlj3KcPgQgpvQyKW+KdjZH8SIrQZl0jJzraXmsIY
   agP+gVcjdemkIJbsd0p2eCd7Zdb4rSo5ctT0yYNtl9u5GFCFuiSli4nLw
   XqV1Wa4y9y0dPs/NIp3fBnpcV43npqshgVifvWc7o8XKnvRdWtn/wuH1j
   yGt+RtW9vUaHuURnNT3Yop1VMuYGdo+l2dqpLr1tVw7psYSB9jaiu6L4c
   OHqev3LgZLns/3qidqQ+7QKFn5w4S+kOzZGfyGVtRjxIxqVeWvRDlFQqL
   ceMeTynle/aXagtZ9gClxyM/xlXPY4Ih6wihriJBf94+mtejg30wF9LzW
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="262766232"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400";
   d="scan'208";a="262766232"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2022 07:29:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400";
   d="scan'208";a="647912693"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.25.211]) ([10.213.25.211])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2022 07:29:44 -0700
Message-ID: <95e834e2-bd6f-efd9-28d2-9e983f9de7ae@intel.com>
Date: Thu, 30 Jun 2022 16:29:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20220628233512.439555-1-robdclark@gmail.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220628233512.439555-1-robdclark@gmail.com>
X-MailFrom: andrzej.hajda@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4BU3FGWWRAUYKKCI2J3KVEZIU45FHEEM
X-Message-ID-Hash: 4BU3FGWWRAUYKKCI2J3KVEZIU45FHEEM
X-Mailman-Approved-At: Wed, 20 Jul 2022 13:48:34 +0000
CC: Rob Clark <robdclark@chromium.org>, =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>, David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH] drm/i915: Remove __dma_fence_is_chain()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4BU3FGWWRAUYKKCI2J3KVEZIU45FHEEM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 29.06.2022 01:35, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> drive-by cleanup
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_wait.c | 7 +------
>   1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> index 319936f91ac5..667841780514 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
> @@ -73,11 +73,6 @@ static void fence_set_priority(struct dma_fence *fence,
>   	rcu_read_unlock();
>   }
>   
> -static inline bool __dma_fence_is_chain(const struct dma_fence *fence)
> -{
> -	return fence->ops == &dma_fence_chain_ops;
> -}
> -
>   void i915_gem_fence_wait_priority(struct dma_fence *fence,
>   				  const struct i915_sched_attr *attr)
>   {
> @@ -93,7 +88,7 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
>   
>   		for (i = 0; i < array->num_fences; i++)
>   			fence_set_priority(array->fences[i], attr);
> -	} else if (__dma_fence_is_chain(fence)) {
> +	} else if (dma_fence_is_chain(fence)) {
>   		struct dma_fence *iter;
>   
>   		/* The chain is ordered; if we boost the last, we boost all */

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

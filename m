Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HVesHTVe5mnmvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4B6430AE1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CE4340705
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:05:50 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 6F6103F689
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 08:57:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=AoMgQRa8;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.42) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4853510b4f3so15379095e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 01:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773046634; x=1773651434; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QhSAyhARBfFioIzUhuKz22/Ga41Sv7/6kPpVPO+u0Ts=;
        b=AoMgQRa8+ppcKPTtx/R6WFm+1rXb3ZMOJpehopevzRe4qDql5dLpOAFA8v49znhyUU
         H2yqpXQtDg7lFCs/itxbBk1LgtQoyRoUEMFMjwSKO/JVnAO1FKNN9O7iZsJy/g7vvkGF
         nce+tivMJLUuC2vYoRRKRf5mdLaaLx+j2oWwcp8TTFtPntpCmMZt6D1inE9Hpbt4ejA5
         lYc4zIZvq4+Erk9XT2aAomKQ1FPP2waWVLH7fgpbifpBeblPKIQIo0sKgDVVnJXbR1G7
         FhpNwBSGpWEAIHWXZ0jSqHLDHl3r7eFtLLhBSA+l1MeREEpyWyduFNtKJNk2uiNppGZc
         A/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773046634; x=1773651434;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QhSAyhARBfFioIzUhuKz22/Ga41Sv7/6kPpVPO+u0Ts=;
        b=aCuAcLhtkmmDAC/mdOk3ZavlPKCUdXN+yzzo4YGPER2T7iXsyDyHjEo0wMs2jX/iqO
         Kz9Idp4rQ4Qy8sifrpkA4SBbSEhv4jF7AuSgI3QdZbL45hukN2d0JTHDI+q4GyO2hWSt
         01zZw4iht2w4rvqAApzBD94Cj0Ms+3+JwHTZK0TD3fEXfTfF/8K5+Jx6U3hFGrKyTeol
         FPPUTVd6Wr5g/MOKpE5MUYv1hbYBXf17XUcbKCEkgch3PhWP49fmwqcOgDHG6B+mldBr
         7rh2OTvsYSDCCHWAr6/aaFVXcwiLRKCuvcVIkmQelBrA/Li0C7mKGaeVRjx2txOSXXJX
         OuWA==
X-Forwarded-Encrypted: i=1; AJvYcCXFMysi9hopE1mBRBbG9zWAgU5/znvlL4TfmYESQG7ky4gPvP0Ue0JCkFHYOpLr9f3ZR2kN3nAw+pZg5wV1@lists.linaro.org
X-Gm-Message-State: AOJu0Yx2k8DR42RoPmGsEtWDiqTLhbsVx34wKHRtm3XCVTsFEXg9qUcq
	LKfATfZWNLYADaDRMV9bO0xMSaQ3eO94ix5Fih3VjqtOhCqU8QWkamuV6EUXcnKFxro=
X-Gm-Gg: ATEYQzy7DpHYNe064rtU6Zr5DXj4wxZwzNsG54xUjQbzrpQ0NYBrm4pg5wW1/DvZ+Za
	daPyC1bqL8OvVeMcJsC1Oe1mFU0ZdnBHsmjiLEO+UJTUMea08bhkWuHmd4e7JD1HtNiISJfTpNK
	mDwn0hOluYxCG0mpYGKS/Dnc3AsTe9zHr4O4CH750jPqDFZq8/ATwwjxIpqQb8+Y8ugec/LTCB/
	vh0K7cL45cp3+dh8imDLMWnTUj81zaKavEc6yeRR3YWjK3Ly0QcbXbeRK6o0t2m0Z40QBjO7VXg
	aZP5O2UQhNWraug/5eifDupOFXeMzuEfw0FAjHoR8gWVeUBVfQQSfgXPPY8lXTA2ny2Kve98/6A
	66tXAnG8O807oC6c2K1DuMVQWj7y660NxqF9KWq8/h7v5fw+gyXLqo+FQLf3V0HqIJwCwOoPLhd
	y6Cm2bRDTmwD0TbQGhpPz/wUs/mDEeak8=
X-Received: by 2002:a05:600c:8714:b0:477:6374:6347 with SMTP id 5b1f17b1804b1-48526957d50mr167626995e9.22.1773046634085;
        Mon, 09 Mar 2026 01:57:14 -0700 (PDT)
Received: from FV6GYCPJ69 ([208.127.45.21])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485276b7547sm260786625e9.12.2026.03.09.01.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 01:57:13 -0700 (PDT)
Date: Mon, 9 Mar 2026 09:57:09 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <dnb4khhvpmwzxkp3vuihukfaztjvy5oxsjunbgixyebwonfeyi@goxt6ahopcwi>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260308101948.GO12611@unreal>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TRCDNVSJJ2B4JFBKDCRLMYA3VTOHHJSP
X-Message-ID-Hash: TRCDNVSJJ2B4JFBKDCRLMYA3VTOHHJSP
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:14 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TRCDNVSJJ2B4JFBKDCRLMYA3VTOHHJSP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[1016];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.135];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 1C4B6430AE1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sun, Mar 08, 2026 at 11:19:48AM +0100, leon@kernel.org wrote:
>On Thu, Mar 05, 2026 at 01:36:40PM +0100, Jiri Pirko wrote:
>> From: Jiri Pirko <jiri@nvidia.com>
>> 
>> Current CC designs don't place a vIOMMU in front of untrusted devices.
>> Instead, the DMA API forces all untrusted device DMA through swiotlb
>> bounce buffers (is_swiotlb_force_bounce()) which copies data into
>> decrypted memory on behalf of the device.
>> 
>> When a caller has already arranged for the memory to be decrypted
>> via set_memory_decrypted(), the DMA API needs to know so it can map
>> directly using the unencrypted physical address rather than bounce
>> buffering. Following the pattern of DMA_ATTR_MMIO, add
>> DMA_ATTR_CC_DECRYPTED for this purpose. Like the MMIO case, only the
>> caller knows what kind of memory it has and must inform the DMA API
>> for it to work correctly.
>> 
>> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
>> ---
>> v1->v2:
>> - rebased on top of recent dma-mapping-fixes
>> ---
>>  include/linux/dma-mapping.h |  6 ++++++
>>  include/trace/events/dma.h  |  3 ++-
>>  kernel/dma/direct.h         | 14 +++++++++++---
>>  3 files changed, 19 insertions(+), 4 deletions(-)
>> 
>> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
>> index 29973baa0581..ae3d85e494ec 100644
>> --- a/include/linux/dma-mapping.h
>> +++ b/include/linux/dma-mapping.h
>> @@ -85,6 +85,12 @@
>>   * a cacheline must have this attribute for this to be considered safe.
>>   */
>>  #define DMA_ATTR_CPU_CACHE_CLEAN	(1UL << 11)
>> +/*
>> + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
>> + * (shared) for confidential computing guests. The caller must have
>> + * called set_memory_decrypted(). A struct page is required.
>> + */
>> +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
>
>While adding the new attribute is fine, I would expect additional checks in
>dma_map_phys() to ensure the attribute cannot be misused. For example,
>WARN_ON(attrs & (DMA_ATTR_CC_DECRYPTED | DMA_ATTR_MMIO)), along with a check
>that we are taking the direct path only.

Okay, I will add the check.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

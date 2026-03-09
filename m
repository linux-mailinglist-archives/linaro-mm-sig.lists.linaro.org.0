Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGgLCzZe5mnnvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4CC430B15
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63B2540690
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:05:58 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9A0C13F702
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 12:56:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.com header.s=google header.b=YUQz7WDn;
	spf=pass (lists.linaro.org: domain of ptesarik@suse.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=ptesarik@suse.com;
	dmarc=pass (policy=quarantine) header.from=suse.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-483708b697cso10479915e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 05:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1773060979; x=1773665779; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j31KcT6diRW6n3JlpG0W6j7VdcBs25Hbct73pL8cVGw=;
        b=YUQz7WDn3TNbtegc34ObOmIxslhmbqwFTxRmdNpwpugdLz9WEIkqFYcScu2Hz5tQl8
         YHG1GEhvmIPfc6OtbQJco74wqERpj0t2/kAlLTqznKE+bURH+CexyUxyzMYdYiUnCcTd
         ppjPtivQghHCPc5qEZsGjJPnrZNLpCoI4KcT0QgiMbONdCEElcThgn6L7zmC5KToTTmW
         f3mtd9j3+z2Pj5Bc1N1RALeeAzNTsajUcSJQ5BkQr1V6ca2LmsWccA4eXnmCIGAKJxSG
         XRbmAJypCs96jB9xMXs8D1wW3VQHphO6dsmSan+HG7kd4GHMEiA0B4AJOTzAdRPrsJuD
         POZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773060979; x=1773665779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j31KcT6diRW6n3JlpG0W6j7VdcBs25Hbct73pL8cVGw=;
        b=EahGqKwZgPhHbS73t0IntnHod7uECXiutJ4+Tdu9j+bWxOhoVXxUo9Xkh4Q/Yq5/M3
         5dHwNaWdxBUVjqz+aw5791eVIluFykiLBX+r3+wtoDR+FNq6BncDLQ6WMnnY05lc6icm
         9iz9FpAlBKiyuLwjdXO4KEbFA79VIDAAG+RRM90Pfn+dWM+0Qqyfv9LFS6ejcm3j2WgE
         On8XrWWuYqKYriTOVvihjgDl+VNAr8woJWk7KO/iJf285GtRF0siAcrCHBqBfuO4qmMV
         tk/alemfDC1fNzsiYyIcxmdBbduKjDjmIFvBHE9M1KXTWB8dCcjBCHZbcJy9NWlGyz+a
         B7SQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh5ncg4I9z8+xljzNjo3AFEiQWX8UyxzQfKduo7M7UQhinibFaxE7YP/wMpTeby5p2cBFXnEz5RjvZdF1f@lists.linaro.org
X-Gm-Message-State: AOJu0YwGhE1ich1mKQhb2NEYwRECJcBfRNiyOl+0p1pmym/Qa1uNpq1b
	+pqPvcE9FR++erqOyDx2OVpNZAYeU6Ant72+2V2XU+CmjNY7J565CNrVuJ4WP4n5h5c=
X-Gm-Gg: ATEYQzw88CSpA/L87+kC7FhLZzpvbJEfJfW+b+R+CLM/tVlcEkQzDwZJ2LhyAxj9gqE
	SL1jyWSu4BpIIICdlaWeC0fb0reA1xhMUBeKof18U6P51G4T1gMeC8praJoNYrOBqh5HQPfrrFx
	DyRhQt1j3NR3w1HuLJR54CClYmxVnydI1ldOxJ1zKhnt2nZwPCyNd33N9BcxLhXc+mzayLiJcPN
	zBWgNsUjzXde/NC1AkZ57Aj3UJOSUhE1xheJc3ZZxw3/BFnqyn7KmXToa1KPlag8t87GqL7gjFv
	aZaYSqo2gk1h36RsORWruO61f5RHnE8BrQ5fJ9nyPwDhsjJu0tQIcMd6E6L7klz68ocVBvl/dlr
	5xqT7oZyi1zpHw0upiSna2HzQ6ws1HTUl3ef/48h/Wo4FuVxx7uqX8gqtXJM09v8aoZwqm2dgGr
	hSdmZuj8X2rZGv8OV7tzgYyKZvfMFTUDSWpUFDgsfIiuXmesvAXQCYG5KByDsxdobfXPONfES9L
	3t3CzsixPMvESJ/wAaYVZEFgoM=
X-Received: by 2002:a05:600c:871a:b0:485:3bc7:a224 with SMTP id 5b1f17b1804b1-4853bc7b582mr27768635e9.6.1773060979410;
        Mon, 09 Mar 2026 05:56:19 -0700 (PDT)
Received: from mordecai (dynamic-2a00-1028-83b8-1e7a-3010-3bd6-8521-caf1.ipv6.o2.cz. [2a00:1028:83b8:1e7a:3010:3bd6:8521:caf1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae3a20fsm26118577f8f.28.2026.03.09.05.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:56:19 -0700 (PDT)
Date: Mon, 9 Mar 2026 13:56:10 +0100
From: Petr Tesarik <ptesarik@suse.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260309135610.1f81d2df@mordecai>
In-Reply-To: <20260305123641.164164-2-jiri@resnulli.us>
References: <20260305123641.164164-1-jiri@resnulli.us>
	<20260305123641.164164-2-jiri@resnulli.us>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: ptesarik@suse.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HIOZJOMMPEDQY6YIR6DUO7RGFP36NGER
X-Message-ID-Hash: HIOZJOMMPEDQY6YIR6DUO7RGFP36NGER
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:15 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HIOZJOMMPEDQY6YIR6DUO7RGFP36NGER/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[suse.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[1012];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ptesarik@suse.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	NEURAL_HAM(-0.00)[-0.565];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,resnulli.us:email,nvidia.com:email]
X-Rspamd-Queue-Id: EC4CC430B15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu,  5 Mar 2026 13:36:40 +0100
Jiri Pirko <jiri@resnulli.us> wrote:

> From: Jiri Pirko <jiri@nvidia.com>
> 
> Current CC designs don't place a vIOMMU in front of untrusted devices.
> Instead, the DMA API forces all untrusted device DMA through swiotlb
> bounce buffers (is_swiotlb_force_bounce()) which copies data into
> decrypted memory on behalf of the device.
> 
> When a caller has already arranged for the memory to be decrypted
> via set_memory_decrypted(), the DMA API needs to know so it can map
> directly using the unencrypted physical address rather than bounce
> buffering. Following the pattern of DMA_ATTR_MMIO, add
> DMA_ATTR_CC_DECRYPTED for this purpose. Like the MMIO case, only the
> caller knows what kind of memory it has and must inform the DMA API
> for it to work correctly.
> 
> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
> ---
> v1->v2:
> - rebased on top of recent dma-mapping-fixes
> ---
>  include/linux/dma-mapping.h |  6 ++++++
>  include/trace/events/dma.h  |  3 ++-
>  kernel/dma/direct.h         | 14 +++++++++++---
>  3 files changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
> index 29973baa0581..ae3d85e494ec 100644
> --- a/include/linux/dma-mapping.h
> +++ b/include/linux/dma-mapping.h
> @@ -85,6 +85,12 @@
>   * a cacheline must have this attribute for this to be considered safe.
>   */
>  #define DMA_ATTR_CPU_CACHE_CLEAN	(1UL << 11)
> +/*
> + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
> + * (shared) for confidential computing guests. The caller must have
> + * called set_memory_decrypted(). A struct page is required.
> + */
> +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)

I don't want to start a bikeshedding discussion, so if everyone else
likes this name, let's keep it. But maybe the "_CC" (meaning
Confidential Comptuing) is not necessary. IIUC it's the same concept as
set_page_encrypted(), set_page_decrypted(), which does not refer to
CoCo either.

Just my two cents
Petr T
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOXqGzZe5mnpvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 35878430B1E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C4E0406EE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:06:03 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 356E93F719
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 13:01:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=UfjvC6pt;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.50) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4853fd7b59aso3213835e9.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 06:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773061291; x=1773666091; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C1uSgKALRT8QjmGeRtwIR5Sg9BvduvH1KsXj/bwOWs0=;
        b=UfjvC6pt5D9wsf3WgEG7thH0TKcWhbFz0N67ydHnsNY2qyJW7qVIC1Nq4E65ekiFLc
         lErffv1QtEjAKDsZpjOzoGFZG+oC7SyLHPofD5VXs/Lp/NzuQ6L9iqCg4iHgaXiBKT9B
         FKKgoi5/RWoA0lxuE8ij7M9qTZ5M83LeDpgS0qXCd8N897igxieTRRWsZs7RjLvPYz+M
         cNWixsyriFIo2ztIuVCDjitky2wJXREKpkzGh2SBh/zQ7Ohg1yDO6zhhUUZpGm8Zn0xp
         P97p4A4uyNExqV5JKtqRGtqSMKXN5ugBA3VvAh7R3ig7Gz3uieF68kXQhNrDsaiRM9Hh
         PFrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773061291; x=1773666091;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C1uSgKALRT8QjmGeRtwIR5Sg9BvduvH1KsXj/bwOWs0=;
        b=sfwieyPiesEwdzgic6r8gWBt2sDh10Ulnw3+FyUucU1yfnJw14HwKwiVCa6xcJJxBQ
         bQMPqRrwjDDjIOodxSnHkXk4Jp3HsRi01BcW4LRQmUihyEVXOG0/8GwSeLf2QDw+2kr4
         cvZlzaYnMmpr7Wem3MQ0x5WNeuO8xP8yMI97IZFD5VptLcUkGYJm7v5VtklCeBZXF8eG
         p13K9qM73IvtksWPWxrFpco4MpGOoFnxPPEE3NFT7YdgxkymmrMd6u7u3ofY2MYXDhEO
         V8eFP8FAZ7qQS4l6YrdnFFN8SXske7gvthTtk0FWrOAw62HRTJEZoEh4kjT+sRBEtpSZ
         eNqg==
X-Forwarded-Encrypted: i=1; AJvYcCUdeNlryt2AC4aTFqUtvPi5XXPoy4Ht797PXaIyHgQBtfUYAHB+PVrYcdpgJXKkYBuXiwE+VU808oeCl8Up@lists.linaro.org
X-Gm-Message-State: AOJu0Yy0soPKcXaRC7BTC/Kvge14Xqp/ERZnp20SvVs/ZtidNxjUE/cg
	I3XFTqJCA53ercV0mjDUf9FS+taHZeUdQ/PmcppvC2lUEuWy/fKA4d+vrfuppot/cTEIy9VhLP5
	Wbq/zQJc=
X-Gm-Gg: ATEYQzx3TMtVtoT+/yRXFA2fM3crARg09TJe7EWmp1ORBZmmWu3I+hoCVLAv0BXPY0t
	IHZBjN3xpRwCzjzavvSv9dxgMXE704F7zRLLpVqTQsoNmO6XhpBif4aQftlA/rAlFklWeUlTHDI
	lmMM04rX/ax1V+p9uhlEhjhTHhRsvGypwuLfi0fShlLMjG5k2awRIcmhSjakw/Ofc8BoSVonUmB
	V7N3wIfWcm+DbIvo4s5B/+zrVsVqZJTITOb+vOWyPfr5GQ3GvZDyhb9kKw0NK1TG+7fCGtaVgVj
	Q1iuJVOVnhRAsSdtUHNdmLO6JVHO52GM0inujAm159tkyUEj68zHgSHUrrJw1HVnqcdQT2U0jkf
	BbnZrH0h0r0dMQn3y76vzTq/JxidNAyAMONuWmDIqz0h7hOyrhEllDjtiVXD4Cl/wwmxMhIxMzp
	bNl6iQlgDtM+zz76Aew2XQxfCgd4CWLdmEdg6VwlYQbA==
X-Received: by 2002:a05:600c:8218:b0:485:3692:e8f7 with SMTP id 5b1f17b1804b1-4853692eaf6mr73833215e9.25.1773061290855;
        Mon, 09 Mar 2026 06:01:30 -0700 (PDT)
Received: from FV6GYCPJ69 ([208.127.45.21])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853a498afbsm64496685e9.0.2026.03.09.06.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 06:01:30 -0700 (PDT)
Date: Mon, 9 Mar 2026 14:01:26 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Tesarik <ptesarik@suse.com>
Message-ID: <byfhwrnq76ylztrjc67ia5tlzgpihh3ycv53je3jekkbqltcad@sslumibsz23v>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260309135610.1f81d2df@mordecai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309135610.1f81d2df@mordecai>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CBMQWC3WBXEQNCGFD54KGDPDQEWBPMJU
X-Message-ID-Hash: CBMQWC3WBXEQNCGFD54KGDPDQEWBPMJU
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:16 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CBMQWC3WBXEQNCGFD54KGDPDQEWBPMJU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[1012];
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
	NEURAL_SPAM(0.00)[0.137];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,suse.com:email,resnulli.us:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 35878430B1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mon, Mar 09, 2026 at 01:56:10PM +0100, ptesarik@suse.com wrote:
>On Thu,  5 Mar 2026 13:36:40 +0100
>Jiri Pirko <jiri@resnulli.us> wrote:
>
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
>I don't want to start a bikeshedding discussion, so if everyone else
>likes this name, let's keep it. But maybe the "_CC" (meaning
>Confidential Comptuing) is not necessary. IIUC it's the same concept as
>set_page_encrypted(), set_page_decrypted(), which does not refer to
>CoCo either.

Do I understand that correctly that you suggest DMA_ATTR_DECRYPTED ?
It's not uapi, so this is flexible for possible future renames.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

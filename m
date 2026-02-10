Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FXCMwYR4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF78411D59
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:40:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84647445D6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:37 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id B89783F700
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 14:49:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=Aa5pNjAx;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.41) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48068127f00so9064495e9.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 06:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1770734947; x=1771339747; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=knkS23bKgxD0sGFgNoxwcHFypphehdzY/C+BgKABh1k=;
        b=Aa5pNjAxEBS9JLqxpV7hX8Q+V8yeOPmAwKuGpeSv56SXSYV2htXZ0FlzvVyil6zBLD
         4eKo4n3zC5UCvBUIHDT6vqB7FlKjPVG9luPrdP6fLYEvUNcZxp6VukV8vpnzXXk+uNpI
         6YzMpS5f6j0N+1iTC08u3a7qFTlACTFcRkz86o6Qve5HeI9aoLZGhpJyT8hgeEfG+Srt
         FEBSa5Bnm6qIK7tw5dYhqteocsSFRJKjE1Fe6EF1rx68SrBivBZ2Rk5o3SwOGd1piveA
         cksZUwC5tvDFNB87DalvoBnLqnyXTwNh7n8m//8taXXaLTtdjXw8PIvFxO03OUuGqaKM
         GSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734947; x=1771339747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=knkS23bKgxD0sGFgNoxwcHFypphehdzY/C+BgKABh1k=;
        b=hDuvwRxgRa82i434GOZwNLxW9kzeFw0SWDQd0CUveONFAS8jbIIvZpo/LLW0gnfS0U
         gRYJo5CLEAUhgdzIPf3UMM5eax/KCbEe/SptunvlJ3NmEeQJGPpAceYTIuW/CONaLh5N
         nELJVnawIS0ztBwQPZVoGl0mnTBAmvv64DIwNRBFC7FMM6pVRvPiDEDopmNe+KGWQffE
         cFjwbfnNysufqQSC76BrX1oHLc69jICX6s7TYwa5CPCHFID4XrfRX/ErVQhWFmWYUBZz
         +Ay0zQMO3sNYGsziKQap4mPl9vvPhQc7MbqDg2wJ7TI2EIUOdeoEZugLq70qfyca8Wqa
         xaRg==
X-Forwarded-Encrypted: i=1; AJvYcCUCkbcNcVfkMvjMdqeypZi68j8iuNWRw3k8yMcAU3DANQjJdJieupWDC4V2IW6kkIIAjFbCmYOwydX87YTv@lists.linaro.org
X-Gm-Message-State: AOJu0Yxch5cBwJkqOYneVUY5/PzqTRWouuok/S3a1KEOqvyeroLat7tx
	wXjedjBwlPfqM/ng19hVQbtifpQ0XqqqwNkc0EIXRATNGgezFNhf+z8tI0yvTLgg2WI=
X-Gm-Gg: AZuq6aIX8Be1Y34m8r/w24/6HZUpofAGoU4NtJuyd6z5Rh3QTy3/tRGjk7/4bUeRkd+
	iOQiF7FcNTkACwPTqFgvZYF6+lXN7wV8z47/UtSNLI5shksAY6xGQbwbH6MDcRhg0Rs1MItLP0j
	/jXKy71HHa0XpPXsXzLRBy5DFadr0g0gnnunkPqiRvpoJ1YkboKTfWxKve2czjWA5pQ2if8SV7I
	JpJW7WPuY4YsIMZSsv/DAA4iMXLyJMZaKpftFsb2ahde9oXKFQ8waOGDIjTmIs+ChVLueQZdmEr
	gane1ZKnNW+HQ9UM6bW2MtMMZeWA+wR2/hoai9od2OasGgrWq++gL9mvWTBY9GDVM85sSH8KGFf
	0En3ryRIQf8dUgyUpCJ5FISju59t8yQX7mtFjI3gDz5facIhvfv/hLvn+zAUTZPEPTrMV/oye5v
	PE1xk3N1cLmg4eDzaulOuUifsNfmktHViO+pI=
X-Received: by 2002:a05:600c:3f0a:b0:47e:e712:aa88 with SMTP id 5b1f17b1804b1-48320236ad7mr236498725e9.31.1770734946334;
        Tue, 10 Feb 2026 06:49:06 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd1c9sm34022302f8f.15.2026.02.10.06.49.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:05 -0800 (PST)
Date: Tue, 10 Feb 2026 15:49:02 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <y7gvezflidmma7odnut2rmlecsbxahrcwpmoevfnhzjveusuwj@6qxqogin45j3>
References: <20260209153809.250835-1-jiri@resnulli.us>
 <20260209153809.250835-5-jiri@resnulli.us>
 <CANDhNCoHEZsNRmU+3z5AbeAy05H7PTtUdTq1apNd5k0f9hWW8A@mail.gmail.com>
 <20260210002927.GC943673@ziepe.ca>
 <tgvdjszwxggr53digbmddcbxvupzl4xcoprofkgrs2kgf6rknx@44ebljjpghjm>
 <20260210124357.GD943673@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260210124357.GD943673@ziepe.ca>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 57FFNGE7Y7BWX6ZYBX4DAXHPU4SQPM5J
X-Message-ID-Hash: 57FFNGE7Y7BWX6ZYBX4DAXHPU4SQPM5J
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:13 +0000
CC: John Stultz <jstultz@google.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] dma-buf: heaps: allow heap to specify valid heap flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/57FFNGE7Y7BWX6ZYBX4DAXHPU4SQPM5J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[1561];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 6AF78411D59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Tue, Feb 10, 2026 at 01:43:57PM +0100, jgg@ziepe.ca wrote:
>On Tue, Feb 10, 2026 at 10:14:08AM +0100, Jiri Pirko wrote:
>
>> >I'd advocate that the right design is for userspace to positively
>> >signal via this flag that it wants/accepts shared memory and without
>> >the flag shared memory should never be returned.
>> 
>> We can have the same behaviour with the separate heap, can't we?
>> Userpace positively signals it wants/accepts the shared memory by
>> choosing "system_cc_decrypted" heap name.
>
>So what do the other heap names do? Always private? Do you ever get
>heaps that are unknowably private or shared (eg MMIO backed?)

If I understand the code correctly, you may get something like this:
$ ls /dev/dma_heap/
default_cma_region
protected,secure-video
protected,secure-video-record
protected,trusted-ui
system

The "protected*" ones are created by tee. I believe they handle
memory that is inaccesible to CPU.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

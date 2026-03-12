Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL0uG1hf5mndvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:08 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 42955430D85
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56E54405D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:16:07 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 3F53E3F7DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 13:27:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=YOOaypku;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.221.42) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439aeed8a5bso1088150f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 06:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773322030; x=1773926830; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9eBBP4AujN/dlLV9JaVbLVwoGymEEzkiKrZGnylO0o=;
        b=YOOaypkuT9MLyh2r8b2hQ1VB++9apSkKlqBbDTwmdeoNM6ldW6L+WXJX4X3emlmdoL
         VRTSIazfzGO1LKRZgu85CJ+MixTqaC4GMnJyMHADT+GXrSw4E1f4coanMvKqe5bz4pVf
         qT+7ifZAI/3TFhkw0HAtQBXNlQznMYrcELcOkH0yGaV0qL3l0rgoyywnFCTian2vTWEL
         EBwKMbTTQg+8pNDtmsLprzHTekjZoEQOzGORm3lrguiEcnrXaIKCUB9YAo0sEUe/iXod
         uHkp22EBUlOODl6fryH2B2cMBwa0+YP1grZ7G4g+PeVQvQXSEqDYzTVlE5DGnqhqEbzA
         zsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773322030; x=1773926830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y9eBBP4AujN/dlLV9JaVbLVwoGymEEzkiKrZGnylO0o=;
        b=mCRsS79V3+XI8bWaV3sCFfjHN1IdBm4t8wlNWeIret+mJ3MLTOrvJvheXkzFlkXCIU
         K7mDviuB5sEhFSphuY1IPbM0Y41olUHOJW/u9o4AL3nDtYDZIVlEP/y3bFNLy0h7R777
         zSS5x6v++0xXJpMdZNDvG8vr8ecTRLZQHXkg2aw+QbOB1I2yx/JH8XEANQnCznrR82z8
         eu+RXv+3eAZMT6zeLsjMLsOc0FL9w89C04uuMGGBhcKwuSBzLfn5nzLrtAU1G6HH7Vhx
         xftYNN4UUii9vpLhgK7S+0M+gdwgUgWHb4/GoxkwWJNduvIRxy9wpOMEQzOGMYJ8f2+U
         jtoQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2lBJqN4DsWJEAdoYyKh6eljF3upCSZP0d070ZTnD+ISaN/o1HVw9vs7e/WMHzdn4gxtN1h9y2VwEYSLKT@lists.linaro.org
X-Gm-Message-State: AOJu0Yzv1wMUmTMClGtwZAF6KFVqiv66irrJkSjLlmXZycUVNf8IwAoF
	pWB79WpT6fc2HJelhBmsFhS7lIO4MVZpTNz83KMhvSPjQEvZ2Rdptcnpnxxhv+Dxrfk=
X-Gm-Gg: ATEYQzwiczF0ViB3WGQGeEYkz58CvSR72RSlnN1nLLa7UsCTlLK3PufljV0gc8WYDG2
	scfFos0en78ZmKg0JG6FDZ06KD/fRHQw0hTowMK1rE4k9MQE+4gJPA7mTqwvd3WcUEWEz4DYTgD
	l5Eq9eziutjXzip/F5sIo01c7jvSL9n0qyHPdaZEnGqyh9CGHJKFTEaRXdBMohwGfUZqR/kWjyS
	JtS43uq6DdcH8JCiJsq1QKV8MYko0sLKu1tCmEyz0fn1bc6aNdjU5G2rTEKKX38Fcp/tq5YS96G
	rWjnWvZpfMRcKlFQhN8TiGqdGyQReSGR+gcIl07D1WK3tjG+O8AB2l3jDrT/O3gyIFnBSuf/SNH
	onRvNllnzoDMb9/dxtljWkL7zuFCdT6gMRmw+ZY2s/gpsYsTGdFoYy74sOqEoJqOK8capwnbq6y
	VetpOIBHnue31FTGucMBe1CpT0JVD/Tjg=
X-Received: by 2002:a5d:5d0b:0:b0:439:f5ba:8c2e with SMTP id ffacd0b85a97d-439f81c6390mr11949569f8f.18.1773322030015;
        Thu, 12 Mar 2026 06:27:10 -0700 (PDT)
Received: from FV6GYCPJ69 ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe2186d5sm7889290f8f.28.2026.03.12.06.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:27:09 -0700 (PDT)
Date: Thu, 12 Mar 2026 14:27:06 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <qhu6ahugrw7ehxubssin4amdvsdqeuezjm3vdja5xpcykyjij7@kcg3fojxysqw>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
 <20260309131530.GJ1687929@ziepe.ca>
 <20260309140233.GW12611@unreal>
 <20260309151857.GO1687929@ziepe.ca>
 <phry3e2dtgxzxdqvrnqfuskangp4al64f2auithwme5kwkgepe@7qtftrhgv4l7>
 <20260312003408.GA1469476@ziepe.ca>
 <pmfxzgtazwa7fwz4mx53htdg4jjifwyq3gyzwklc45affy3xrp@57hxan4pqnkx>
 <20260312120606.GC1469476@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260312120606.GC1469476@ziepe.ca>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5GKW4LIN3DRH34KNH7ZA2XVPM56GUC64
X-Message-ID-Hash: 5GKW4LIN3DRH34KNH7ZA2XVPM56GUC64
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:15:56 +0000
CC: Leon Romanovsky <leon@kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5GKW4LIN3DRH34KNH7ZA2XVPM56GUC64/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[939];
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
	NEURAL_SPAM(0.00)[0.128];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 42955430D85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Mar 12, 2026 at 01:06:06PM +0100, jgg@ziepe.ca wrote:
>On Thu, Mar 12, 2026 at 10:03:37AM +0100, Jiri Pirko wrote:
>> >Alot of device MMIO is decrypted by nature and can't be encrypted, so
>> >you'd have to use both flags. eg in VFIO we'd want to do this.
>> 
>> Why both flags? Why MMIO flag is not enough? You still want to hit
>> "if (attrs & DMA_ATTR_MMIO) {" path, don't you?
>
>Because we will eventually have both decrypted and encrypted MMIO.
>
>> I mean, CC_DECRYPTED says the memory to be mapped was explicitly
>> decrypted before the call. MMIO was not explicitly decrypted, it is
>> decrypted by definition. For me that does not fit the CC_DECRYPTED
>> semantics.
>
>I would say CC_DECRYPTED means that pgprot_decrypted must be used to
>form a PTE, and !CC_DECRYPTED means that pgprot_encrypted() was used
>
>This flag should someday flow down into the vIOMMU driver and set the
>corresponding C bit the IOPTE (for AMD) exactly as the pgprot does.
>
>Less about set_memory_encrypted as that is only for DRAM.

Okay, that makes sense. Thanks!

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

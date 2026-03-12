Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJkkAlRf5mkWvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 272F6430D75
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28EF63F6F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:16:02 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by lists.linaro.org (Postfix) with ESMTPS id A3CA53F7DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 09:03:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=tyb7ddsT;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.221.53) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439c56e822eso806274f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 02:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773306220; x=1773911020; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FFPtayDDhz8Xf/M05gyckNDjnYEg9BLk1Cs40ltYFF0=;
        b=tyb7ddsTf3oV1qh0deKp4t2fYaGY/o5i5jj9Q5GEASB66uQg1nogG4TZLaPmDOxWrq
         iejVrQmywoOEQBUhuv6qstXjnDDCdC6MWIUB9EcY7EEnrSIZ5oz86MvpdI04tZ42XiB8
         zAiIHXl79UIsZWZAqZAAk1zIufX1zoErVkb1HPV/mSV4+H1/R7qezvcpAgS7K4FA3IZn
         0mGhc2c9JdSdTYYT/nY9NQWe97WFAiD+W4S5iARAUjvea8rZobZsskj6dIpwY0pvwfnJ
         AeeC8RmC7gG9JhIxUL0O8v9i+j3nl2CQhpGSK3QUMlAfJU9qXrlVdxjpnwo/scMWeMRN
         8tug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773306220; x=1773911020;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FFPtayDDhz8Xf/M05gyckNDjnYEg9BLk1Cs40ltYFF0=;
        b=Tlqb6iF1/9cQ1+7iMoyZLKrdXVu+nJ7Lgx1adhM61RhXqhUuEoY2zFU/RYcfjEy+2W
         R8gUksTzqtwCbODVe2lmY5iNi5RD/Be4ePKHQjY7o37M/MgnKfP+VOZoZImWSsqa8CZl
         Svk9xrQ2L2ZjiPUyrbGlUAzc+LT1lkIUbEh7LXzzND4btszAPY+Bt883wfREpnihKnkq
         8dGFABbFAJ+D7sxWE3/i/wfEVuod76MttmMnK+wo6P+qleCziS0eZtERkRd3cZ2XLLYa
         RZKcCoR8d9EzbvgHDeIw2w/76NEWpiAMS32LyPA9BOQMmHAnLIemxoIj8xR6K7y6LqYx
         Uy2w==
X-Forwarded-Encrypted: i=1; AJvYcCVrJ+njWgjyTC/l6jNJlc+BqwihkJgDPX8DVMaM3TIElFWFss3HlYT6YKbda8kRhLQwTReH3U3tpnePC4nG@lists.linaro.org
X-Gm-Message-State: AOJu0Yxj1wEoko5XQYL++lBksxIP8YZbaC5dZWq1KvJqL1A8pyjqH9/q
	59NLRGAu8sD7pkKvUrFNaEgPb9RVZrUU8rZX9C5c5SJnoElYBXX5KL0SNs8s5pJxZCs=
X-Gm-Gg: ATEYQzz3Q3SAQe62MOFsblRuH3GekXPTzLSrggU2jKdh7yDKFBPic0MmJtmGlPfdpEk
	7dYwHE+3KT5n+UVrbbdNXy+Q3GjJ7UX6FkMLyH1XdzolLwOoBE1b2GBHePy96a5qoFOZRf8SNGP
	IZFy9wI/aKqqNWggvIgrmj11ihGiO9VbGH11wUI93mLvn4qBDIEdhoAeG1Kyl4jgEh/h4WdEv/E
	nIrEEu/v6VWf1J08co4nx36dvI+u1eTFSZO0hikpnSOMzJddu9CNP3YG+W3aFEvNL78Ur+C0vBF
	mQ9/1AQkcgM9mdPfC65uLX0lGwmgQzI7Ef20g5xYZW6+w+Nd1qhpDUZULXaSyglmdL4TsBUrQL6
	q1m2rs3hvVNsM943Ka3IuQBlUpbQJBfABePqbecP5ooMmgKZwdnbm4LOFGLzh0hMRcoTHUnHtDA
	I286kmyqrleTOLfmiFjZFPKnOpqKEsPEM=
X-Received: by 2002:a05:6000:24c4:b0:439:b3ff:9abb with SMTP id ffacd0b85a97d-439f8224fc0mr10284840f8f.57.1773306220321;
        Thu, 12 Mar 2026 02:03:40 -0700 (PDT)
Received: from FV6GYCPJ69 ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19aec5sm6366764f8f.4.2026.03.12.02.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 02:03:39 -0700 (PDT)
Date: Thu, 12 Mar 2026 10:03:37 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <pmfxzgtazwa7fwz4mx53htdg4jjifwyq3gyzwklc45affy3xrp@57hxan4pqnkx>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
 <20260309131530.GJ1687929@ziepe.ca>
 <20260309140233.GW12611@unreal>
 <20260309151857.GO1687929@ziepe.ca>
 <phry3e2dtgxzxdqvrnqfuskangp4al64f2auithwme5kwkgepe@7qtftrhgv4l7>
 <20260312003408.GA1469476@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260312003408.GA1469476@ziepe.ca>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ERWDP5H2EQJJEPJRQJFQCMDL2D72LTMT
X-Message-ID-Hash: ERWDP5H2EQJJEPJRQJFQCMDL2D72LTMT
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:15:55 +0000
CC: Leon Romanovsky <leon@kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ERWDP5H2EQJJEPJRQJFQCMDL2D72LTMT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[944];
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
	NEURAL_SPAM(0.00)[0.153];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,ziepe.ca:email]
X-Rspamd-Queue-Id: 272F6430D75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Mar 12, 2026 at 01:34:08AM +0100, jgg@ziepe.ca wrote:
>On Mon, Mar 09, 2026 at 06:51:21PM +0100, Jiri Pirko wrote:
>> Mon, Mar 09, 2026 at 04:18:57PM +0100, jgg@ziepe.ca wrote:
>> >On Mon, Mar 09, 2026 at 04:02:33PM +0200, Leon Romanovsky wrote:
>> >> On Mon, Mar 09, 2026 at 10:15:30AM -0300, Jason Gunthorpe wrote:
>> >> > On Sun, Mar 08, 2026 at 12:19:48PM +0200, Leon Romanovsky wrote:
>> >> > 
>> >> > > > +/*
>> >> > > > + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
>> >> > > > + * (shared) for confidential computing guests. The caller must have
>> >> > > > + * called set_memory_decrypted(). A struct page is required.
>> >> > > > + */
>> >> > > > +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
>> >> > > 
>> >> > > While adding the new attribute is fine, I would expect additional checks in
>> >> > > dma_map_phys() to ensure the attribute cannot be misused. For example,
>> >> > > WARN_ON(attrs & (DMA_ATTR_CC_DECRYPTED | DMA_ATTR_MMIO)), along with a check
>> >> > > that we are taking the direct path only.
>> >> > 
>> >> > DECRYPYED and MMIO is something that needs to work, VFIO (inside a
>> >> > TVM) should be using that combination.
>> >> 
>> >> So this sentence "A struct page is required" from the comment above is
>> >> not accurate.
>> >
>> >It would be clearer to say "Unless DMA_ATTR_MMIO is provided a struct
>> >page is required"
>> >
>> >We need to audit if that works properly, IIRC it does, but I don't
>> >remember.. Jiri?
>> 
>> How can you do set_memory_decrypted if you don't have page/folio ?
>
>Alot of device MMIO is decrypted by nature and can't be encrypted, so
>you'd have to use both flags. eg in VFIO we'd want to do this.

Why both flags? Why MMIO flag is not enough? You still want to hit
"if (attrs & DMA_ATTR_MMIO) {" path, don't you?

I mean, CC_DECRYPTED says the memory to be mapped was explicitly
decrypted before the call. MMIO was not explicitly decrypted, it is
decrypted by definition. For me that does not fit the CC_DECRYPTED
semantics.

What am I missing?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

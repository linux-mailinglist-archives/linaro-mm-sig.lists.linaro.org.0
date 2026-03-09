Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIkjF19f5mndvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E69A3430DB3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC1FE406A0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:06:21 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 12E163F7C5
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Mar 2026 17:51:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b="iaW/NkXH";
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.47) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4852afd42ceso27654325e9.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Mar 2026 10:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773078685; x=1773683485; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ix+vqdOy5SvfTABiwCl1s7T3mrppwl4vO9UcVMmB22w=;
        b=iaW/NkXHZU/EPs3ibpY4iW2SjJRo8tJ2a9SNWbPy7sHc45in/b3r+Om84lS2j6XKLL
         ZcPI4l+a0eK97PhBZxF5N3v+mumF93ivcttimw7U3czi2rwKwlcdh6gC9M2NSqwLrdQX
         vCfOUXl/x0n0H1capWFEltbSiRUbaHOQGpACA4qUg2ND7SYWB2gMNishqk99rcfyCPkS
         op2dc10FpTZHWV9VnWkhV/u7EmtuMxFd6Fw5ousBJgZVGbJkwTktt3cqjrolZOXF937v
         /PSkSB8B3sFEyd9zV0irbd+mittH2SlueSB66J6iJrM8cCE/i60hsi/dwdTj7sUQZOkS
         buFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773078685; x=1773683485;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ix+vqdOy5SvfTABiwCl1s7T3mrppwl4vO9UcVMmB22w=;
        b=E9vNSIEzEHZ6XIu2boSvTNahU16PtJxCJyThIyycX7EtYbTWbldvrpomnQIhqEtsKE
         Cl+guOkj7feTP2PFAf4fOCAXn/wrSV+9la1+jj3JJi6E6zCR1q1PYIah6IoXjGYmfE/I
         pRhTi6Bu42DQdo7RV1JHygGuXy0CCpcVxyqA5C1muAk7d8kGOn/zlM5J5b+NvK84eEMD
         YLoT/5730D9lwod+OqzwDAzdQ4hCcXEwuDaUjjND5ACclOXv2dGIcG73NybA/qkXxGEE
         Qg+zbQS5EldM3/aJutrcz3xx0SpZJJhJYcqbxwIN8StOumSPz40AYxJ1UXfJjMluDMNT
         dBfw==
X-Forwarded-Encrypted: i=1; AJvYcCXBzEv6PSRkiRgA3XVQGQBIgC6EsTh+fedaMaMHiMT6dMmo1ZiTxSgt1WU2qWmJ9G4DEo8+fWAiRBq4x4kp@lists.linaro.org
X-Gm-Message-State: AOJu0YysB3D6nAmRzsoVSF3JrO9IK+v0AnNP69w0p1qbmaZz2haBav2k
	7jzFisbl4Q1bjgLpctqQp/PfU633+LGwtv7sSSDHJuhfpSvwvq2/DpcuANSq/f+yD4k=
X-Gm-Gg: ATEYQzwdFhPvDrJNS2tKelExw6DzaBPbhZorRfVnu8zfC0GW3SaI4mu8kwRfyQGHiFk
	VYs6cOJhyopvai5JSzp9D1SYyVmT5RNbl55bpG4LSU7I8OlyHf18EkCNymslRtl3Q/0IWNn6Vz3
	Q8q3oUOOxhL6LMqwagHhWjX9+SVYES6yMQQn8MHtmEgXBgyohkqSP6zDkYGL6kAiu8lWsX7tdH+
	4l2z4lPb9OgMlIiWrD4uCae+QXvOFQ7jAjuk5tuyPM0NCUJQsRmF70tNXyC5YaDgUXYYe7bYuIR
	EDO/+Hq7p8VjC0x1Q78nZPJr3NcJ1X5AgAG5vL7tPeJvDRCGaJnjKe6nv5KzXscTgaqPEKr9qVk
	ZMwm7NnpcQBOR0WIfpZjshRS4SexjfBLxfS/hg1PwNRsWDBkPO2EA+MNA5FP9ETYKdv6GoUAHDw
	pkVQ7eey8a52EtoB31sokO2J9CkJkaCjE=
X-Received: by 2002:a05:600c:5250:b0:485:2fe9:3375 with SMTP id 5b1f17b1804b1-4852fe93587mr147475155e9.15.1773078684896;
        Mon, 09 Mar 2026 10:51:24 -0700 (PDT)
Received: from FV6GYCPJ69 ([208.127.45.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dadac2a7sm28642353f8f.15.2026.03.09.10.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 10:51:24 -0700 (PDT)
Date: Mon, 9 Mar 2026 18:51:21 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <phry3e2dtgxzxdqvrnqfuskangp4al64f2auithwme5kwkgepe@7qtftrhgv4l7>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260308101948.GO12611@unreal>
 <20260309131530.GJ1687929@ziepe.ca>
 <20260309140233.GW12611@unreal>
 <20260309151857.GO1687929@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309151857.GO1687929@ziepe.ca>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZJNVWZAIUJT73SSLU5DEDI4RPYYCFJIU
X-Message-ID-Hash: ZJNVWZAIUJT73SSLU5DEDI4RPYYCFJIU
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:19 +0000
CC: Leon Romanovsky <leon@kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZJNVWZAIUJT73SSLU5DEDI4RPYYCFJIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[1007];
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
	NEURAL_SPAM(0.00)[0.133];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ziepe.ca:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E69A3430DB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mon, Mar 09, 2026 at 04:18:57PM +0100, jgg@ziepe.ca wrote:
>On Mon, Mar 09, 2026 at 04:02:33PM +0200, Leon Romanovsky wrote:
>> On Mon, Mar 09, 2026 at 10:15:30AM -0300, Jason Gunthorpe wrote:
>> > On Sun, Mar 08, 2026 at 12:19:48PM +0200, Leon Romanovsky wrote:
>> > 
>> > > > +/*
>> > > > + * DMA_ATTR_CC_DECRYPTED: Indicates memory that has been explicitly decrypted
>> > > > + * (shared) for confidential computing guests. The caller must have
>> > > > + * called set_memory_decrypted(). A struct page is required.
>> > > > + */
>> > > > +#define DMA_ATTR_CC_DECRYPTED	(1UL << 12)
>> > > 
>> > > While adding the new attribute is fine, I would expect additional checks in
>> > > dma_map_phys() to ensure the attribute cannot be misused. For example,
>> > > WARN_ON(attrs & (DMA_ATTR_CC_DECRYPTED | DMA_ATTR_MMIO)), along with a check
>> > > that we are taking the direct path only.
>> > 
>> > DECRYPYED and MMIO is something that needs to work, VFIO (inside a
>> > TVM) should be using that combination.
>> 
>> So this sentence "A struct page is required" from the comment above is
>> not accurate.
>
>It would be clearer to say "Unless DMA_ATTR_MMIO is provided a struct
>page is required"
>
>We need to audit if that works properly, IIRC it does, but I don't
>remember.. Jiri?

How can you do set_memory_decrypted if you don't have page/folio ?

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

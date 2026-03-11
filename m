Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id p6evGl9f5mkrvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A83430DB6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A0F7402D3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:07:46 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 290D33F69B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 14:19:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=TvWytp1x;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.53) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-483487335c2so119381695e9.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Mar 2026 07:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1773238767; x=1773843567; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrUWNUYcRB4S08yg1WEQ2YVogaM7A4KC4ZmR4pQ+1F4=;
        b=TvWytp1xeUQfelO4FZR/AxgHcSbVqzk+sbVssmYuzXpuV84l477cJ46kxWuPY8ISyw
         yHLVzli1FunUrULw8zJp0OduL6Xfj+4QTjKVs6qfJHqGJiUESTxYAA3SMu/sd10TLJUs
         +Sff4PTgD6B2k2U33DLfpr5tWdBMorZNhkwOOj3r02PNRRCTkp5bZLCcd8SbMpG5KjfV
         5OsE+3QDrecwosEL/XcmjyL18EX1CaQBZiKI3kojE5QYza/1eShtNLalG6uGhCo+frxL
         A+QY0SuEXWsG9gGVRHl296EHnqHcWRV2kRYeF33xMbIi+vnsoLBkiBnn/KteGaD8du7c
         H0/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773238767; x=1773843567;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZrUWNUYcRB4S08yg1WEQ2YVogaM7A4KC4ZmR4pQ+1F4=;
        b=akQbnTNp+uOGuIOOSv5I9TUKiFSNlW543jqeySH7M/TqJ5tcKcC9VUCvsE/trX3d69
         ngCjJN/jrKAVzAwldWFpaqI0RptaG7Dn/SlAnkNuROhPQ1FfYOCFgfuykHvy4jnJC/vr
         eKeLe1K0wUXc9d9REkgDdhaCAahlGcACk4/bqhlBE54ezlDjFgvkqI3tuwOnjc1oc5IM
         Wzi7vt0NQXhTxV/5CdyYgMQnAkmBpnxCb4aR1BRfNQoPzLFrAZTBDZtjQCM8Q48yBl0C
         F6S/cInzZo7W7N5/wAAspjSETUZLuy5a3Fc5HPlwq5npTleHeIHh4W0gfgQcYnCBZ++E
         DqAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuOy9PoO55TNEZvG8k2h1kk1Gq5vHZlDw8Y6xxKIZvEPP+7QVQ2LALudtHNAR3psTWnJPLNhPHovSx09LB@lists.linaro.org
X-Gm-Message-State: AOJu0Ywg1+lcurG7pHfnr4XauF0HXgPtVRQ6693RnkHPvEocIFbDhZWc
	t4FRHTlxra8zDs0yHByJ1tZdW4oGNYzJOzm90vg+XI9kYV0QvySyNfgmySQeWV0n9Ts=
X-Gm-Gg: ATEYQzzoh0r3N3ykrYElyWYajkoT9+PIs96VYz/Zzyw6RHzE48tOq4tABtuDX2KEyge
	pszGBDwmLy+mvql4oS4hMjdv7Dm1WBVCGj/bv7WxME8LjHIGenL3EcFfQeZinNjmff/T5weDJZg
	h1Oh9JGL98UbejCJKVwKNYxgs4JKQYUcqRlwXDrSG5cbQAWxEhbIFxQCe6sIxEGy8qv2TJ7jnFE
	6k/rs1aqTIn569MUmHQVCglIuwQcdLfzw5QxPibiJpdM5AvYeOKV7QKiA6O5s1Pl6g2Nxza7EAb
	/t3aHV+ojcu5IehZEg7qxyz47vnmovF3Q6hcIhb9aXRnJB11S828bDAlh8y1Nz/FmbVTQpwvvHc
	EMJl0ZuqwZLibLkgDnykg5jxNScd2B32vSBqX+gRt8Vdp2xjcR/0S1M6LWHAv+yoLJZxc0c2qRh
	xYigMAQXipxA/diMOfe24byWjL1urxjcEu8A/Z4uPi0w==
X-Received: by 2002:a05:600c:4745:b0:485:2a85:e5ec with SMTP id 5b1f17b1804b1-4854b0ae77bmr43456195e9.2.1773238766811;
        Wed, 11 Mar 2026 07:19:26 -0700 (PDT)
Received: from FV6GYCPJ69 ([85.163.81.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541ab9f9esm162608305e9.4.2026.03.11.07.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 07:19:25 -0700 (PDT)
Date: Wed, 11 Mar 2026 15:19:23 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <p52ohr7pqtpzmwdpwzfwmwpor3wkop3quwxmq57jopan4awwav@5hhcgsskzgu2>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <20260305123641.164164-2-jiri@resnulli.us>
 <20260309135610.1f81d2df@mordecai>
 <20260309131736.GK1687929@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260309131736.GK1687929@ziepe.ca>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NJH3NQ33EYP73TFAAS774QSQKG5XR4HE
X-Message-ID-Hash: NJH3NQ33EYP73TFAAS774QSQKG5XR4HE
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:06:36 +0000
CC: Petr Tesarik <ptesarik@suse.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 1/2] dma-mapping: introduce DMA_ATTR_CC_DECRYPTED for pre-decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NJH3NQ33EYP73TFAAS774QSQKG5XR4HE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[962];
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
	NEURAL_SPAM(0.00)[0.117];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,ziepe.ca:email,linaro.org:email]
X-Rspamd-Queue-Id: F0A83430DB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mon, Mar 09, 2026 at 02:17:36PM +0100, jgg@ziepe.ca wrote:
>On Mon, Mar 09, 2026 at 01:56:10PM +0100, Petr Tesarik wrote:
>> I don't want to start a bikeshedding discussion, so if everyone else
>> likes this name, let's keep it. But maybe the "_CC" (meaning
>> Confidential Comptuing) is not necessary. IIUC it's the same concept as
>> set_page_encrypted(), set_page_decrypted(), which does not refer to
>> CoCo either.
>
>Frankly I hate that AMD got their "encrypted" "decrypted" naming baked
>into the CC related APIs.
>
>I'm not at all convinced that they "do not refer to CoCo" in the way
>Linux uses them and other arches absolutely make them 100% tied to coco.
>
>If we are going to bikeshed the name it should be DMA_ATTR_CC_SHARED

On the other hand, the encrypted/decrypted helpers could be always
renamed if it makes sense. Better to perhaps have DMA_ATTR_DECRYPTED to
have things consistently named now? If someone renames them all in the
future, so be it.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

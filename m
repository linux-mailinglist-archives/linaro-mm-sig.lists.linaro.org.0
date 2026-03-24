Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMyzEYPQwmnRmQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 18:57:23 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B793F31A60F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 18:57:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B17BB3F78B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Mar 2026 17:57:21 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by lists.linaro.org (Postfix) with ESMTPS id 7A1A43F78B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 17:57:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=o+8pAjs4;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.50 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-899ee87355dso65912426d6.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 10:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1774375039; x=1774979839; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DGPmxoTTtNhn7YbNdJRS1EkbAYPcolSO8E8zMkGnzu8=;
        b=o+8pAjs4tM2bED1IsFLuM86fDP8mhF/TJMeIOicIvMbvUsOvPeYcPxdjkgYBVufSxn
         XdXKVjFBHOg8/Ua7e3VdYl2291OW1J8pjpmYq5SEyQaavfIHUbRVuq0f69791IHtxQY+
         1lhnZpim3C4Y4TTIWJiYCG+hFZEts/IAxYicL+ddHSbPQLYmhfvBkjXP+mDg/Rwgt8W3
         20et9+Qe4LquOXaiYVBVkeUzCe7rZvczTlc7Vat088DhE0FzuRb+rxwgVVgj74m1xCHp
         UTxFMtdhZdT3TY3gmCO0psf5efOhA4L9w0Z6imQsuPWfNXmb4FTEoMAcFfmhcypO99tV
         KXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774375039; x=1774979839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DGPmxoTTtNhn7YbNdJRS1EkbAYPcolSO8E8zMkGnzu8=;
        b=PCAT93u5azrTydBijeZWLc8vFwZJhLqTz8mvP3YGEsQbixLNwPr5udXMWj/RtmSqr8
         Z5zdOrvGVP0rl0sg8mlOExJMSUwH7DBHWpS6Z2BT2rcVvjjhZDmD2e7JePAMB+z7ESs7
         8UeU9+VjxoRDUBY1Su3WPPtIwHrCmG53/SGH57bfAhMYNFLbDK1XptUTA0oE3O6qtdAu
         iAXITIhVjRfVBvsQy4uUm0ycIzd5QCBs3Mvot+kzDFKmbf0TAPhJMSukecxwJctuS7sL
         shNxvWYYeuvQTo2rbaEJ0hd0IeoHfzaOTtXOpX8mQmP5+EcHzLpgZaMbJysfzb7ohKj1
         GKJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUATbmqzd/Pe05qNG+Csb/ETwKBKc0eQeqgDIWtSjmrYsWC86CP6RSfMrOO6E1LHEghkNt0oUe9fcWW6AGo@lists.linaro.org
X-Gm-Message-State: AOJu0Ywt/NK2aFM8rMMx3FzXgTDBLT1DS3UHwLH2kDRVzLTRybh0x6aD
	w0KGd5eQaIkaWjeOjqtHT0VbeKqI1QYa25qx4syaFy2yGy42igQ5se2iu3Bv9iJe/FQ=
X-Gm-Gg: ATEYQzxoxR/zK977eyx5DM6PagT/murGOESGeKsQgsO8xgLG/Zpdu4hzl7bCkGcfWIF
	LHNq4D48YWY5aiSVQHujQMmpArBPjZRky+cJk9m/QWMFB+RKwecFA0MvIOurBnGragMpzZ4jCiV
	5ihUZxhmBsmM3woO/qNb0xs9LojVGXOVfYNLGA8ZSLITDaxsd668svTu1oz7mW8Uo5U599ez2bV
	hBPULJx0wEx1oF2oWbA+MimpAvlDMys7jHeMcXPQJnYlfhx2akzy2/oqKCKhuY5jgz6mq+sFArJ
	jYHn+vPbpVP8J31dlmXJAfl6E9qwid9oJVFsN2TxK7ZHAgraor71SoZ3Vsi9008VnLhibWXdSS3
	8FfRBI0B3y7/Rv9CKt8mtl/WlTL4FzJXLsgTZljZ3zbGYCMLPJIEf9AudrjjuQFCiK7jxXGloDl
	DJQEzTICzrqj48GCCz/CdDKvg+o9zN5kugEgQz+ZJ58SRkOmSU+Qk+XxhIpSFDPYACD0qH8w==
X-Received: by 2002:a05:6214:4293:b0:89a:125f:37dd with SMTP id 6a1803df08f44-89cc4ace974mr7595006d6.49.1774375038919;
        Tue, 24 Mar 2026 10:57:18 -0700 (PDT)
Received: from ziepe.ca (mctnnbsa70w-159-2-73-22.dhcp-dynamic.fibreop.nb.bellaliant.net. [159.2.73.22])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c85251b04sm116985626d6.17.2026.03.24.10.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 10:57:18 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w560D-00000000Isw-1b4r;
	Tue, 24 Mar 2026 14:57:17 -0300
Date: Tue, 24 Mar 2026 14:57:17 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Mostafa Saleh <smostafa@google.com>
Message-ID: <20260324175717.GE8437@ziepe.ca>
References: <20260305123641.164164-1-jiri@resnulli.us>
 <ablV_f_l7wD2m63E@google.com>
 <20260324120057.GC8437@ziepe.ca>
 <CAFgf54qoFhvVR2yfROGaTJmLcjuLACswVFv=trqgJwGb_DB3zA@mail.gmail.com>
 <20260324122416.GD8437@ziepe.ca>
 <CAFgf54qwA2D1Xa4rnruJ4Nfp5BsB=T_pB3hzz9HBjh22TL17uA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFgf54qwA2D1Xa4rnruJ4Nfp5BsB=T_pB3hzz9HBjh22TL17uA@mail.gmail.com>
X-Spamd-Bar: ---
Message-ID-Hash: WHLRML4YZQ54CNPWWL35LLMNC367MHK7
X-Message-ID-Hash: WHLRML4YZQ54CNPWWL35LLMNC367MHK7
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v3 0/2] dma-buf: heaps: system: add an option to allocate explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WHLRML4YZQ54CNPWWL35LLMNC367MHK7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B793F31A60F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 05:36:23PM +0000, Mostafa Saleh wrote:
> But it's not about drivers in that case, it's about many places
> (SWIOTLB and DMA-direct) calling set_memory_decrypted() without clear
> ownership so in some cases they step on each other's toes, and I don't
> think that will get simpler with yet another caller in this series

I don't understand how this can be, ownership is clear. SWIOTLB owns
the buffer, dma alloc coherent owns the buffer, user owns the
buffer. There should be no other cases, and they don't step on each
other unless the APIs are being used wrong.

> I am fine with the API design you mentioned, but I believe that it
> needs clear documentation specifying who is responsible for
> decryption. The code should provide wrappers checking for these cases
> instead of having is_swiotlb_for_alloc() and force_dma_unencrypted()
> everywhere in DMA-direct.

Redoingt how dma-api works internally is some other project... It
would be nice if swiotlb would sort of recursively DMA map using the
new flag instead of open coding it but that is pretty minor.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

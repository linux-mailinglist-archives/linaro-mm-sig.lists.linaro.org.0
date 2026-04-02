Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PCTOgBbzmmgnAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 14:03:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCE3388BE1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 14:03:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C4CA402EF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 12:03:08 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by lists.linaro.org (Postfix) with ESMTPS id 3FB173F775
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 12:02:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=LaJ0z9Rf;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.160.169 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-506362ac5f7so6664561cf.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Apr 2026 05:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1775131377; x=1775736177; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+KtTbuhHgiuHy+YXQS2vChspL032vn/9QRxOV9xDd6Q=;
        b=LaJ0z9RfPXwoC0d5JsEA6+cv6+q+8oOo4DqRDMl1r8za1ipj9zDEteA2C2y1kS5sKg
         oi6nobn3QIXqsrdWJvnfNTgt9hzt/Vz1DtXfoSCTxrUx5CJhU+cQRE5gbCK8jAE0sQMi
         mgU6nBF3/qO0GbXuwQeT6WKYD13sPtAepdIYRqSjQPj9r9+9dXEXnKvX56/t9xjshCK4
         VGopLhc8geqxrSvTdn3LvNK9R3elY8VDBwJI6s9pNNcVV2ujQDFF7mY1SnFjWcd8/NVs
         jRNMByZjY/DKMmJ61ZAMHHvVwk/3tLdWwlAFXQvze65wHdLJOm614gU3ebMfU69eQLuo
         cXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775131377; x=1775736177;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+KtTbuhHgiuHy+YXQS2vChspL032vn/9QRxOV9xDd6Q=;
        b=qXlXpJ0H+7QLSh4fx5rjjHGI0b3oyyYZWzqiJIkH0KGQ1a287xzL/YZ06TsySjA6qV
         m7grMmKcoYlCiyD4ztQ/Oith6gDTkHiKtklMhevpXIwGqex5GLKkd7flMWqswysF5HRU
         zI/5H+wfaQo7deHkzxhrkm7zvi2N51uZI0ARpdlsRMf65zZRqxZidnAyrrObP642Zhu2
         lwUwrUKJmos1xKIJkOfAyHKXRwS+oFw/KSo4vdA6i6uOL5txMC2oPnuDGAgWIhK96/oq
         8RgmVAoZq2MhpfLgt2Qbntb0icNtxGzA0OtBvMfx9V+eCNs7AzzLF5ee5gJdARD6gNdc
         xN9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV+VcEyZixzMSlKjqSs5M72PLBjRTZHV8hKZCpER5SInFxRFyHGodXbmwcMPHq/zc0xYmji77K/smm0TmOf@lists.linaro.org
X-Gm-Message-State: AOJu0YxKW/sTwwWhFb9qQt+0jYEAA2VVFc4LP8OTx/qxz6pANjac+x5w
	BckrSWD1mr3VXazIb3LnFqHSal7bE921WuIrgTT9m3QUzYD34dd5A6SJL1iR/qsVMVY=
X-Gm-Gg: ATEYQzyf7H9Q/EjmxHiE4Hfki2/ABYL4le3WKC5UB6z77ORc5lrNKjASGynU5JPB0c7
	sq/ZAEKpu8unEspwoONW62/yVE1tPHO1Ak322pwrpBw5F7P/V/ImCGMrWd87nMnLwg7SV3SROAv
	6dhyBGqLrgLBQ6MbPomd0A35hw2gg8wrzpUCuBJkCr0yPThsK53e07+eHUd0yG/SIsL4d/4e/VS
	djSr1K88WxdWCM1oAK+WvKPJ0eks0hD7nUT6IPTGnMJi1Ilo/y8SXjo3zcXn32+dgBA9PzPwoTG
	sFal//BqH+t1+hsAH6Q5ZKvxV0ns53EqyGCOVy19QbMpCLuKG7f0a0TGibSf9ltWD+QLRe5DsJA
	M2U6asxXKyQqSCE4kpT+bMl70FzQfLTTQ+FB6jtPPPUd5HvWorUp63oTpafbFT9px9YGtiSwGHe
	DS6MlJDExI5fPKo9vic2lmVsdcDahjk/VSmu4d9bDS0CiAHf1eZwydl1/M6HYKNThCMmXXww==
X-Received: by 2002:a05:622a:a18b:b0:50b:538e:93b1 with SMTP id d75a77b69052e-50d3bb64108mr80844141cf.5.1775131376396;
        Thu, 02 Apr 2026 05:02:56 -0700 (PDT)
Received: from ziepe.ca (mctnnbsa70w-159-2-73-22.dhcp-dynamic.fibreop.nb.bellaliant.net. [159.2.73.22])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50d4b8da5cbsm20265321cf.31.2026.04.02.05.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 05:02:55 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w8GlC-0000000Bm0s-1xCy;
	Thu, 02 Apr 2026 09:02:54 -0300
Date: Thu, 2 Apr 2026 09:02:54 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Brian Starkey <brian.starkey@arm.com>
Message-ID: <20260402120254.GB2551565@ziepe.ca>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <4s75rtsmdfrze4rscbqzyrjyrko7n6sehe7agrngqag2cna5bz@eflmf4kwjocj>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4s75rtsmdfrze4rscbqzyrjyrko7n6sehe7agrngqag2cna5bz@eflmf4kwjocj>
X-Spamd-Bar: ---
Message-ID-Hash: XJ4KJ2ENITPJ7FCEYS3J7LNZWXXNAQAX
X-Message-ID-Hash: XJ4KJ2ENITPJ7FCEYS3J7LNZWXXNAQAX
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev, nd@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XJ4KJ2ENITPJ7FCEYS3J7LNZWXXNAQAX/>
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
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	DMARC_NA(0.00)[ziepe.ca];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.927];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8CCE3388BE1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 10:52:34AM +0100, Brian Starkey wrote:
> I'm not clear why the heap depends on !CONFIG_HIGHMEM, but I also
> don't know anything about SEV/TDX.

It is because the CC apis, set_memory_decrypted()/etc are slightly
mis-designed. They take in a vaddr to represent the address instead of
a phys_addr_t or a page *

This means the user has to use page_address() and then the whole thing
is incompatible with highmem.

Which is fine, highmem and CC are never turned on together.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

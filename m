Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yB04Nue4Q2oqfwoAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 14:39:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 382726E4419
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 14:39:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ziepe.ca header.s=google header.b=TI+lAhaq;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4603340D28
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Jun 2026 12:39:02 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by lists.linaro.org (Postfix) with ESMTPS id 730E8401C7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 12:38:51 +0000 (UTC)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-8eaa7b5e31eso5094646d6.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Jun 2026 05:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1782823131; x=1783427931; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=usbOUHulcGkq5pslDcl5tYYUADM4pc66+J0xE33qcCE=;
        b=TI+lAhaqu2BG+Gi8eTncsIqOhwOIV6Y22yintiuEzcQOvmnEJuQC/7SZIAM7TSedWt
         AtZCIws50vKTeQQWioYHIvhsl8HSGP/TQbc9vqZiMsCaMwQ+y1EU6GRBMAhEt3P6iOL9
         pqWGcF3mBAhlxSlVVQmzn3a+0qTsJQl2+Y7GLvUn3X4GFSRbyEaos9umzj4ervte3ker
         ZjGVVlxylIdPInxTlZKYJrzJ9BgHmnZMZMxlPjdlTXAkbO+7HS8A5ep5Oo5vZZz9Toyo
         BQEwm+tQmC4wWIKRUr04tdoWr4E6FXaCyqyi81NfKGotiB/1TB6qLUHIUKBtEK5+Tdv5
         44Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782823131; x=1783427931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=usbOUHulcGkq5pslDcl5tYYUADM4pc66+J0xE33qcCE=;
        b=tK6grDMCUg8Po05jcqBer1m78ZJB5xIfyIFKLd9rHhjLJHUsEEsxDy0pJPDyJoqGEh
         3q1JgKV/JUUQSGh0RI09Nnvug3Dssa7LJcPvKWAYsVPuifMUyoqWK5EbZRVMpkBA58hl
         SXwvxCW4mT5RX4k4+Qim+6bUD/jAsLUBf7xlafNmv1XbNOrJzjDg8sHnUMA1lUGvj0y4
         wvSmkKAyiGf1x3GxkNUYi8HXjhoSQc8d3VeE38OqdztXtu/udlTm+4aKW7fZ2nrzEqpV
         teyJ0T8kBPwZ5xkW4PLbUno2pxuSSD5j+ZskXlU5l6thhhsuILNHhU8b3ULcx23rrKqi
         Oa3w==
X-Forwarded-Encrypted: i=1; AHgh+RpMSqiPR64zLcQpoazH3yGO8oyMXCLQs8qQiaL/wnHRiR/rCnV+uKb5qHt3kPEmQRuwdO7PzC1Y0IVp/sYI@lists.linaro.org
X-Gm-Message-State: AOJu0YxdrHO5m2ALMruWGA66N5axJ3c7wq4b3A9KRSh5+0Fo5WlXPOjg
	saL30OnckX9kS5TSjkUTA5wXVQXtDEdNPgO2i2/sKdtdQIlOFD4WEu4L7MJ9z3jUsCA=
X-Gm-Gg: AfdE7cnRbUP1eUvWb3IopojO4inZPlob0+nWYApafWuy69jnKbWRkmtwLtuYSGMr562
	DjCYh8BtEjrj0mRYxBnXdE1/SNyBbE45PZtVhsj1kPMpnyvOMDXDVgpu1WiwKjfKppbw+rLGfAP
	vOKfGGx/KRLZFI90iGbKfjeBt6wmaVeZj3YUeTkqwVSMK6YmxzyMOHm8sx5hDu1x5XGBq7MTEZ6
	eOZS3IufXb1CwGJzJZzxMxULcFDXpLG1mh6o7Im+Bwi1hwTo3hE1J8e3vpy58OxPBwpkC1Ilgn5
	KIcpXgpEAs6mpRhfbIwBRaC95PA+3MiCfVoenxo/kdgbra6pQF66q11RVZAdjrZFAD29d6AkfqO
	jn5Pr37MUwrWfbH2RqGb8dbhDYXQXIuAE2H3luMIe1zRvIFMgdeOXRDsecckkzz9g54ejhd2FXK
	4TFzac7ZU4oKkhaUbPgmjGJaV5M03IY4Forj3amEz3gCEttsBBqvoJqrdQGm8stDlm3ps=
X-Received: by 2002:a05:6214:448e:b0:8db:480e:6944 with SMTP id 6a1803df08f44-8f2549e5762mr17241226d6.26.1782823130931;
        Tue, 30 Jun 2026 05:38:50 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8f1a7558676sm22067246d6.40.2026.06.30.05.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 05:38:50 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1weXjl-00000001qLK-2mow;
	Tue, 30 Jun 2026 09:38:49 -0300
Date: Tue, 30 Jun 2026 09:38:49 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: David Laight <david.laight.linux@gmail.com>
Message-ID: <20260630123849.GC7525@ziepe.ca>
References: <20260621222130.1667453-1-xuehaohu@google.com>
 <20260623015459.1153884-1-xuehaohu@google.com>
 <20260623094446.4a8fc2ed@pumpkin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260623094446.4a8fc2ed@pumpkin>
X-Spamd-Bar: ---
Message-ID-Hash: E2UEI7DF4ZZJT7J2QVMKWG5DGP757G2B
X-Message-ID-Hash: E2UEI7DF4ZZJT7J2QVMKWG5DGP757G2B
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Hu <xuehaohu@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E2UEI7DF4ZZJT7J2QVMKWG5DGP757G2B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ziepe.ca];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 382726E4419

On Tue, Jun 23, 2026 at 09:44:46AM +0100, David Laight wrote:
> On Tue, 23 Jun 2026 01:54:59 +0000
> David Hu <xuehaohu@google.com> wrote:
> 
> > Currently, `fill_sg_entry()` splits the scatterlist using `UINT_MAX`.
> > This creates a non-page-aligned DMA length (`0xFFFFFFFF`) for the
> > first entry, resulting in non-page-aligned DMA addresses for all
> > subsequent entries.
> 
> There is a separate issue of whether this code is even needed at all.
> Where can transfers over 2G (never mind 4G) actually come from.

This is DMABUF land, you really can alocate DMABUFS of huge amounts of
physical memory, VFIO does this reliably and trivially for example. It
wouldn't come from the physical allocator.

So yes, these scenarios need to work in this code.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

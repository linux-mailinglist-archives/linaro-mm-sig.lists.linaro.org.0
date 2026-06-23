Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QxaZEmFgPWq82AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E202D6C7B3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:07:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="IOqaZUc/";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01D7D445EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:07:44 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 5B3213F751
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 08:44:50 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4903d730b1fso79968055e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2026 01:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782204289; x=1782809089; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cd5zggzn9YY/eKp5MGwYc/7RumCc5LCFsD9dus6MWn0=;
        b=IOqaZUc/cOY/4KqMpVX7vup/8Ks9by11PMr8ppJndbN2ahUK6HqSD4mBbULp4FIy8B
         6Dxq2+hjqg7FEpht/CcE9d7CwyHXZhTM/6BkYwEpasjoMx12l4bmaUlunFScHBdDfId7
         /71WZb1NFNzqYYslmXXkGQkBhSGN6CxVI/49wxKtZFnyzToHCqPnj9fqOl0TyMHGydrh
         rOgF2BVV737t/ezWV6dqZ/Lafdt4/imZ8Gwd2EcTFTRMdzop/kbt841VoFJBZgNzZiWN
         8O462j8VwOMTEEz2Pqul9PD8uItUWPMWdGH0xNA+KbKW5xzyqOtXhQmRXAxKuQBbD1wY
         sUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782204289; x=1782809089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cd5zggzn9YY/eKp5MGwYc/7RumCc5LCFsD9dus6MWn0=;
        b=sRKHXyIBOo54HX6vbnaTcrvBw0o2+5MgYMiz3obkc04oydaiS5dSsiavou3AuRVVXf
         MmiwV4ReKSZGeJw9zu/T0LYjg+iOy8yRT531+Zey2ZP/rqVPfvLvrcKKYtiM6uQaSYu7
         4FChd8ek+Nc7RighX6llWpL0yK3D3G6KIePwYa3jCP/8W3TfqSGFzzUT1+WBIa2FEjCD
         RaWIblOPpZyCSF7nlgCkcQgxfs+p0XhX4u6emKMMhRd3fEnkGoD5kfuYdgZQQR7CPifo
         9+2yR4Vd/6DLoUhJSnEihyjF1BCGSU24hXoT24f0Ap3+elx3xtXq+5+8IdFdiVTHgygJ
         vD3A==
X-Forwarded-Encrypted: i=1; AFNElJ/INdpJ1YYNl2vMfShGjELBmRvqoywA3sm32DPmhYrm8nZ5IqCso3W/bWEEumeT7Kg6JDsWm2yZK//0havj@lists.linaro.org
X-Gm-Message-State: AOJu0YwYrHVzhCb9QeFV6xlBOme5ZEgH8L12gXcj26ZoEwof72Abf7lf
	7Wefxw/MkSvOXfjYOUiaJe2vW+NPrXSCn7mr+ybIQuS2GIOg1AN/38mE
X-Gm-Gg: AfdE7cljnjZY4jGH2HaKe3AfEFGZ/PCXoiRmWa1FOvl9zYTFIAK5iirp4tCNaVsFl85
	aOvPBA7MD0oCoIi9O8GEmTTey5akZ62KoK+L6yLEylNPzrjOuIK6Ciuh2IIT9bGk3mHTChoitWH
	9SE9jyw0rLvvoo5+U7yZzE4Nf3BKur5KQkSu4t64eG5j9WmqQBVPgXsH/4B8SgPqRdkgmfhgE3j
	c5ur2prULRomZYrIzh/RZenS4vs4hABnlttqa6Tzzl8mqeqqKl+t+/rcZBRVhEYoU9wuGIF970V
	Af94U93z2ySq2Xssg5UlO8bv0V0t4nolNhsIgcSkedssJwZVZPDtD/lT8zPZIaMrchlESVnp8Bk
	TENhv2vMdciP0TyOpBoGXzb81//pQHRh1cGcZWGd5Gotk3/Pdr5j1L/RTuRyQy6sFqD3gDOu+8z
	3Ez3yvVWKcKyge5VVqWow8k7D2pXlebpZrGBKGHm286ljhHV/Vqw==
X-Received: by 2002:a05:600d:640f:20b0:492:408b:d267 with SMTP id 5b1f17b1804b1-4925b394574mr18459465e9.13.1782204289054;
        Tue, 23 Jun 2026 01:44:49 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4924923392dsm530639635e9.2.2026.06.23.01.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 01:44:48 -0700 (PDT)
Date: Tue, 23 Jun 2026 09:44:46 +0100
From: David Laight <david.laight.linux@gmail.com>
To: David Hu <xuehaohu@google.com>
Message-ID: <20260623094446.4a8fc2ed@pumpkin>
In-Reply-To: <20260623015459.1153884-1-xuehaohu@google.com>
References: <20260621222130.1667453-1-xuehaohu@google.com>
	<20260623015459.1153884-1-xuehaohu@google.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZM6WDRVLD5QMVTFYA2VWJSOCEUPGXMXN
X-Message-ID-Hash: ZM6WDRVLD5QMVTFYA2VWJSOCEUPGXMXN
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, chriscli@google.com, sashiko-bot@kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: Split sgl into page-aligned 2G chunks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZM6WDRVLD5QMVTFYA2VWJSOCEUPGXMXN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	DATE_IN_PAST(1.00)[56];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:chriscli@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,pumpkin:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E202D6C7B3C

On Tue, 23 Jun 2026 01:54:59 +0000
David Hu <xuehaohu@google.com> wrote:

> Currently, `fill_sg_entry()` splits the scatterlist using `UINT_MAX`.
> This creates a non-page-aligned DMA length (`0xFFFFFFFF`) for the
> first entry, resulting in non-page-aligned DMA addresses for all
> subsequent entries.

There is a separate issue of whether this code is even needed at all.
Where can transfers over 2G (never mind 4G) actually come from.

The read, write and similar system calls limit transfers to INT_MAX
(even on 64bit) and a lot of driver code will need fixing it longer
lengths are allowed though.
io_uring better enforce the same limits.
So the transfers can come directly from userspace.

Not only that but you also need a single physically contiguous buffer.
Good luck allocating that!

Now maybe there are some peer-to-peer places where the large buffer
is device memory, but they will be unusual and probably need
special treatment anyway.

	David
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNroMjf64GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:03:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6744101BB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:03:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9EC74095D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:03:12 +0000 (UTC)
Received: from fout-b7-smtp.messagingengine.com (fout-b7-smtp.messagingengine.com [202.12.124.150])
	by lists.linaro.org (Postfix) with ESMTPS id 206053F6C7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Nov 2025 20:42:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=shazbot.org header.s=fm2 header.b=htuAqLZ4;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b="W 1pcFNt";
	dmarc=pass (policy=none) header.from=shazbot.org;
	spf=pass (lists.linaro.org: domain of alex@shazbot.org designates 202.12.124.150 as permitted sender) smtp.mailfrom=alex@shazbot.org
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id C4D701D000F8;
	Mon, 10 Nov 2025 15:42:23 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Mon, 10 Nov 2025 15:42:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shazbot.org; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1762807343;
	 x=1762893743; bh=gqeX2If3HYh30yCslpotpD1eSH8ukdg4bxJbH47uciI=; b=
	htuAqLZ4SouJYoITuzsRhJjEXMvYg51jdhYpfuNbonoAiCijob/69evbidTgy+sh
	iRd/focxifhKHG29GSovKjpd+ZahK1KX4u/ZS5xwu1cwXqVC/UCcfTwYH5JPDv12
	hGHLp/nV+WavmCJRl9wTrZikJq0k+REA/xuHpzuBgd81DF7sIwQG9Nn6LXDccuBp
	Kcbv2MQHhh0bNcI9y7090F/H/ONHQBQn0M3YoNGcqHaUJhgJYpUOx9LyevwJdnFy
	Ict245DxpPf6jiaMEQZaHVfubTy/2FN5JOeKQcWBk3z0YAlBC9LITZ62vdXk1Y/c
	Rd49/UzrTC9Hg0y+GBi9Hg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1762807343; x=
	1762893743; bh=gqeX2If3HYh30yCslpotpD1eSH8ukdg4bxJbH47uciI=; b=W
	1pcFNtXWP9fMq2c7Go8PGx8HwIWpuPF2lBF5s8fzNuWqlubpSf71I4RGXc/+pwcE
	wq+IM4acQDpUfJS8lOK336Hg+6Yhp/JfxC5SEFBEOLYskuuF1zMvdgewgnWx52X/
	fNOBJyzaAv96LswEo/scIGTSRxWJi2ZUU5XAvFuOshhDJGBo38Xa+K5zj1omajl4
	9Nzw2IiBoN/XHZmZW4L1O2XuQ5m2ygcV/Ej73MJG4tl8Yp+XoKJ+BgkgvopLu2GH
	obrv7xcViS0KT+tbc+wUE4u16+09BsabKp6VUrTPLyomAqmaiXC7s3Fr/VvCaEMh
	I3yt1TVyxJAxtgG24ZoJw==
X-ME-Sender: <xms:Lk4SadPf7Z_61ugy1UZG-S0z50mLGWjkeWFW-KUtptz0WE1qSwYswA>
    <xme:Lk4SaWQnTbNosFeU6S8-IkOOxvD-vMp6PSlA7UVcS1gFInm63zNeLDUnY47L26hp1
    UJx5XZp5pVS_p1iGPb8C2-PW03MLsP60V0ld5GGp6ghlpo8mHKR>
X-ME-Received: <xmr:Lk4SaSQT-qKgrv4djpFBdctnnMfQHHqqcvgPYrMcvkpGGEF5Ve9ebvTg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduleelfedtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkjghfgggtgfesthejredttddtvdenucfhrhhomheptehlvgigucgh
    ihhllhhirghmshhonhcuoegrlhgvgiesshhhrgiisghothdrohhrgheqnecuggftrfgrth
    htvghrnhepteetudelgeekieegudegleeuvdffgeehleeivddtfeektdekkeehffehudet
    hffhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
    hlvgigsehshhgriigsohhtrdhorhhgpdhnsggprhgtphhtthhopeefhedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtoheplhgvohhnsehkvghrnhgvlhdrohhrghdprhgtphhtth
    hopegshhgvlhhgrggrshesghhoohhglhgvrdgtohhmpdhrtghpthhtoheplhhoghgrnhhg
    seguvghlthgrthgvvgdrtghomhdprhgtphhtthhopegrgigsohgvsehkvghrnhgvlhdrug
    hkpdhrtghpthhtoheprhhosghinhdrmhhurhhphhihsegrrhhmrdgtohhmpdhrtghpthht
    ohepjhhorhhoseeksgihthgvshdrohhrghdprhgtphhtthhopeifihhllheskhgvrhhnvg
    hlrdhorhhgpdhrtghpthhtohepmhdrshiihihprhhofihskhhisehsrghmshhunhhgrdgt
    ohhmpdhrtghpthhtohepjhhgghesiihivghpvgdrtggr
X-ME-Proxy: <xmx:Lk4SaXAf2U3xTIUQxs8i0IsnHoTy1Jl7o0BH0TlVy7zhF4WWB901JA>
    <xmx:Lk4SacCXUZGgOPwzyeCst1KYlCMu_DTngssMm-yanfi8GAiSreZfOA>
    <xmx:Lk4SaYxVBS9qwrWpCA566IQDcrCbii10ahjD77GRLJBh3SrN6LWZAw>
    <xmx:Lk4SaejgdRKg7EjLQE1Gk-cfpzoWXZw-pFjsodEgU8MMWqFzLPeaiQ>
    <xmx:L04SaZr36QwMGCQIKH-kIOIQH3332nOSuBo78ltSYdTNpyhWUvhiqLCC>
Feedback-ID: i03f14258:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 10 Nov 2025 15:42:19 -0500 (EST)
Date: Mon, 10 Nov 2025 13:42:18 -0700
From: Alex Williamson <alex@shazbot.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20251110134218.5e399b0f.alex@shazbot.org>
In-Reply-To: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
References: <20251106-dmabuf-vfio-v7-0-2503bf390699@nvidia.com>
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: alex@shazbot.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3R34KKODNPGU7KOJFXEEWK5JBRBD7RM7
X-Message-ID-Hash: 3R34KKODNPGU7KOJFXEEWK5JBRBD7RM7
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:08 +0000
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@v
 ger.kernel.org, Alex Mastro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/11] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3R34KKODNPGU7KOJFXEEWK5JBRBD7RM7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.59 / 15.00];
	DATE_IN_PAST(1.00)[3762];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[shazbot.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[34];
	RSPAMD_URIBL_FAIL(0.00)[linaro.org:query timed out];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.650];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alex@shazbot.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shazbot.org:mid]
X-Rspamd-Queue-Id: 1D6744101BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu,  6 Nov 2025 16:16:45 +0200
Leon Romanovsky <leon@kernel.org> wrote:

> Changelog:
> v7:
>  * Dropped restore_revoke flag and added vfio_pci_dma_buf_move
>    to reverse loop.
>  * Fixed spelling errors in documentation patch.
>  * Rebased on top of v6.18-rc3.
>  * Added include to stddef.h to vfio.h, to keep uapi header file independent.

I think we're winding down on review comments.  It'd be great to get
p2pdma and dma-buf acks on this series.  Otherwise it's been posted
enough that we'll assume no objections.  Thanks,

Alex
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

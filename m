Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id W4hlKRvEy2nsLgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 14:54:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18326369C5F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 14:54:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C65B43F903
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:54:49 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 98CCA3F806
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 12:54:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=CWpV19df;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260331125445euoutp02a6815d94111afd01781daba16b1cd2bc~h7j_7oxBt2067820678euoutp02m
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 12:54:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260331125445euoutp02a6815d94111afd01781daba16b1cd2bc~h7j_7oxBt2067820678euoutp02m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774961685;
	bh=UDPXxR0SE4tZo6SAHEuDV5VawAn9RHxLdc/GV2ahcmY=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=CWpV19dfi3aKCVmn65P/Kj4WMSYU8Y008v7a6iPLjcfr/70u3PHFeMS5bxMdiMZpP
	 x/IkU/FWyfkJr5Axx5dbEaTf6T8Qg4Y9YfiHyfr+sfBLQplBnBvNX4Aus8e4NcZB65
	 FW/pNTtgcFQ0o4nh7Ov1X224Nh/y5TEPxJRmUrRA=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260331125445eucas1p25ed7c9b6e702e473313d0de397658d96~h7j_m4aJp0030700307eucas1p2_;
	Tue, 31 Mar 2026 12:54:45 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260331125442eusmtip20a0364ea267d99390b05fc4b52f918c4~h7j8E31Ay2848828488eusmtip2b;
	Tue, 31 Mar 2026 12:54:42 +0000 (GMT)
Message-ID: <46397de2-eedf-4e09-a83a-3b683d154fe7@samsung.com>
Date: Tue, 31 Mar 2026 14:54:41 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@kernel.org>, Sumit Semwal
	<sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy
	<robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David
	Hildenbrand <david@kernel.org>, Lorenzo Stoakes
	<lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren
	Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
X-CMS-MailID: 20260331125445eucas1p25ed7c9b6e702e473313d0de397658d96
X-Msg-Generator: CA
X-RootMTR: 20260331100026eucas1p19bdc2aaca4c9a48c6f6ac8fec71478d8
X-EPHeader: CA
X-CMS-RootMailID: 20260331100026eucas1p19bdc2aaca4c9a48c6f6ac8fec71478d8
References: <CGME20260331100026eucas1p19bdc2aaca4c9a48c6f6ac8fec71478d8@eucas1p1.samsung.com>
	<20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: FBNFNTCMHJDHIRTBA7EJVBTDEZOHJCPF
X-Message-ID-Hash: FBNFNTCMHJDHIRTBA7EJVBTDEZOHJCPF
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FBNFNTCMHJDHIRTBA7EJVBTDEZOHJCPF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.60 / 15.00];
	R_DKIM_REJECT(1.00)[samsung.com:s=mail20170921];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[samsung.com:-];
	NEURAL_SPAM(0.00)[0.979];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 18326369C5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 31.03.2026 12:00, Maxime Ripard wrote:
> The recent introduction of heaps in the optee driver [1] made possible
> the creation of heaps as modules.
>
> It's generally a good idea if possible, including for the already
> existing system and CMA heaps.
>
> The system one is pretty trivial, the CMA one is a bit more involved,
> especially since we have a call from kernel/dma/contiguous.c to the CMA
> heap code. This was solved by turning the logic around and making the
> CMA heap call into the contiguous DMA code.
>
> Let me know what you think,
> Maxime
>
> 1: https://lore.kernel.org/dri-devel/20250911135007.1275833-4-jens.wiklander@linaro.org/
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>


Applied again patches 1-5 to my dma-mapping-for-next branch. I hope this time it

won't cause new problems in linux-next.


Here is a stable branch to apply remaining dma-buf heaps patches:

https://web.git.kernel.org/pub/scm/linux/kernel/git/mszyprowski/linux.git/log/?h=dma-contig-for-7.1-modules-prep-v4


Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

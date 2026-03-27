Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEc/CZVyxmkCKgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:05:41 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A02B8343F31
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 13:05:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 747FE402DB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Mar 2026 12:05:39 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id EDC493F9DC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 12:05:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=tEJ9O1Jn;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260327093813euoutp011f8f13d62c83792f52ea567b2f7c1412~gqTPz5RFr0155501555euoutp01V
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 09:38:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260327093813euoutp011f8f13d62c83792f52ea567b2f7c1412~gqTPz5RFr0155501555euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774604293;
	bh=0wrrBT9Vgx5xYr3ZtqLPUbt27G4B7MOzYfS2jPrN8kQ=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=tEJ9O1Jnk3kcIWa/GQWlYDVsdjOZbDe2dmIbrigJ2c8G34HJxvn4IGvWDvX6x+guU
	 7OpBFxvD7I7peNfcsUSBPn89cUk2ApU4PUTRxPyPG696UClnlWenGkehnLiZR0L6c7
	 OM7P/DSIpX29McX5cWpjCy5Zro3ZtRdqNda5cH0o=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260327093813eucas1p2491c30df8c61bc550d31f05d90811332~gqTPXpzSE0810508105eucas1p2a;
	Fri, 27 Mar 2026 09:38:13 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260327093811eusmtip192818a11797378662e842d7b047a01bf~gqTNROVR00077200772eusmtip1F;
	Fri, 27 Mar 2026 09:38:11 +0000 (GMT)
Message-ID: <f2047cd7-91a8-4f6a-b6b9-0e4f143f6854@samsung.com>
Date: Fri, 27 Mar 2026 10:38:10 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260325192352.437608-1-jiri@resnulli.us>
X-CMS-MailID: 20260327093813eucas1p2491c30df8c61bc550d31f05d90811332
X-Msg-Generator: CA
X-RootMTR: 20260325192400eucas1p2ae38ff4c2b3ab35a7047cfd680d9fda3
X-EPHeader: CA
X-CMS-RootMailID: 20260325192400eucas1p2ae38ff4c2b3ab35a7047cfd680d9fda3
References: <CGME20260325192400eucas1p2ae38ff4c2b3ab35a7047cfd680d9fda3@eucas1p2.samsung.com>
	<20260325192352.437608-1-jiri@resnulli.us>
X-Spamd-Bar: -----
Message-ID-Hash: G4QMY27SOCBYHFP3Z4MWPXVJKOGX6JWY
X-Message-ID-Hash: G4QMY27SOCBYHFP3Z4MWPXVJKOGX6JWY
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G4QMY27SOCBYHFP3Z4MWPXVJKOGX6JWY/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DKIM_TRACE(0.00)[samsung.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.885];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: A02B8343F31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 25.03.2026 20:23, Jiri Pirko wrote:
> From: Jiri Pirko <jiri@nvidia.com>
>
> Confidential computing (CoCo) VMs/guests, such as AMD SEV and Intel TDX,
> run with private/encrypted memory which creates a challenge
> for devices that do not support DMA to it (no TDISP support).
>
> For kernel-only DMA operations, swiotlb bounce buffering provides a
> transparent solution by copying data through shared memory.
> However, the only way to get this memory into userspace is via the DMA
> API's dma_alloc_pages()/dma_mmap_pages() type interfaces which limits
> the use of the memory to a single DMA device, and is incompatible with
> pin_user_pages().
>
> These limitations are particularly problematic for the RDMA subsystem
> which makes heavy use of pin_user_pages() and expects flexible memory
> usage between many different DMA devices.
>
> This patch series enables userspace to explicitly request shared
> (decrypted) memory allocations from new dma-buf system_cc_shared heap.
> Userspace can mmap this memory and pass the dma-buf fd to other
> existing importers such as RDMA or DRM devices to access the
> memory. The DMA API is improved to allow the dma heap exporter to DMA
> map the shared memory to each importing device.
>
> Based on dma-mapping-for-next e7442a68cd1ee797b585f045d348781e9c0dde0d

I would like to merge this to dma-mapping-next, but I feel a bit 
uncomfortable with my lack of knowledge about CoCo and friends. Could 
those who know a bit more about it provide some Reviewed-by tags?

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBGTFijr2GkFjwgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 14:20:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C91053D6C0D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 14:20:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FCEE404AE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 12:20:54 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id 9E296400FF
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 12:20:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=NqtE3ZUG;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260410122049euoutp010f4625e917572f167e5b99e325465cc9~k-jNeBGG81904819048euoutp019
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 12:20:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260410122049euoutp010f4625e917572f167e5b99e325465cc9~k-jNeBGG81904819048euoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1775823649;
	bh=lN5zWO6+anmGDngLkOfFZEph7VAV3nISscwbspgkQFg=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=NqtE3ZUGhjK5b+8l3UJojriJ5nrit/EwmaDAMcMN1Br+4xN1xUNTVGwRO9rgOuFEb
	 Bx2jTuJ8f+oN9wlq+XE/SWAFwLerZjUb96fqzAMZHDkFsEJdpJG3ASlCz+YzeKizNO
	 GJFKrCnlGUMsKgU/vRZdu0YCgkUV/c9nFfJj/i48=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260410122049eucas1p2207046638096d1540b23f0a14d6169ac~k-jNEfoaG3206132061eucas1p2p;
	Fri, 10 Apr 2026 12:20:49 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260410122047eusmtip17c8b02f981e525f46be03f8d2d0e134f~k-jLa09If3110231102eusmtip1Z;
	Fri, 10 Apr 2026 12:20:47 +0000 (GMT)
Message-ID: <9e3f7066-f147-4854-b662-9027fa7d3c80@samsung.com>
Date: Fri, 10 Apr 2026 14:20:46 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Sumit Semwal <sumit.semwal@linaro.org>, Jiri Pirko <jiri@resnulli.us>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <CAO_48GFt21rv0PJd2Csa0O4OEpN053_p__4Zux+m7jQdHSagEg@mail.gmail.com>
X-CMS-MailID: 20260410122049eucas1p2207046638096d1540b23f0a14d6169ac
X-Msg-Generator: CA
X-RootMTR: 20260410121457eucas1p1450d22bb1d09d9978fe68e801d8c2a58
X-EPHeader: CA
X-CMS-RootMailID: 20260410121457eucas1p1450d22bb1d09d9978fe68e801d8c2a58
References: <20260407092617.635223-1-jiri@resnulli.us>
	<CGME20260410121457eucas1p1450d22bb1d09d9978fe68e801d8c2a58@eucas1p1.samsung.com>
	<CAO_48GFt21rv0PJd2Csa0O4OEpN053_p__4Zux+m7jQdHSagEg@mail.gmail.com>
X-Spamd-Bar: ----
Message-ID-Hash: TLJ6SUESSZKR2IXBP2D77QFBCGZVDAOR
X-Message-ID-Hash: TLJ6SUESSZKR2IXBP2D77QFBCGZVDAOR
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: heaps: system: document system_cc_shared heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TLJ6SUESSZKR2IXBP2D77QFBCGZVDAOR/>
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[samsung.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C91053D6C0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 10.04.2026 14:14, Sumit Semwal wrote:
> On Tue, 7 Apr 2026 at 14:56, Jiri Pirko <jiri@resnulli.us> wrote:
>> From: Jiri Pirko <jiri@nvidia.com>
>>
>> Document the system_cc_shared dma-buf heap that was introduced
>> recently. Describe its purpose, availability conditions and
>> relation to confidential computing VMs.
>>
>> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
>> Reviewed-by: T.J.Mercier <tjmercier@google.com>
> Thank you for the patch!
>
> Marek: Since you're taking the dependent patches through your tree,
> could you please use:
> Acked-by: Sumit Semwal <sumit.semwal@linaro.org>
>
> and take this as well?

Yes, sure. Applied to dma-mapping-for-next. Thanks!

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

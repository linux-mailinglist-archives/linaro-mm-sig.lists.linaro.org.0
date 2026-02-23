Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMKBKrQBnGn6+wMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 08:28:52 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4AA172A6B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 08:28:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 057563F7DE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 07:28:50 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id F1C7C3F7DE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 07:28:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=dxCgZj3E;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com;
	dmarc=pass (policy=none) header.from=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260223072845euoutp02ecfce47bfe89c843ae814103e999275c~Wz5EqvyOP0705507055euoutp02h
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 07:28:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260223072845euoutp02ecfce47bfe89c843ae814103e999275c~Wz5EqvyOP0705507055euoutp02h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1771831725;
	bh=fHwzvy/lJyzDBJ9QYguzkw4r84XxwakyncGKU7DpSRo=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=dxCgZj3EJWyjxlcARoDCZRa2yYKXIbd5WcWfBShCk11DnhMzW21d4gKyt3hItQMBO
	 1K0FkaIxNrgCgtUlx4/0vY6CG1ndBcvSZCJ6EKkPmqNANPg+pxRuuWSzaizRsM0dYe
	 iR11kOjlYz3ssGLrjw4z2bgC7Uo7QfBxXzA2gPoI=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20260223072845eucas1p238d8a317d8340fe8e9c8b658727e8ee8~Wz5ESAyjY2513825138eucas1p2J;
	Mon, 23 Feb 2026 07:28:45 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260223072842eusmtip2e953ab7b19655f3b5707f07bf625dab3~Wz5Bw0DU62888828888eusmtip2N;
	Mon, 23 Feb 2026 07:28:42 +0000 (GMT)
Message-ID: <666eefa7-3e00-4586-a443-1a71dc24e6dd@samsung.com>
Date: Mon, 23 Feb 2026 08:28:41 +0100
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Jiri Pirko <jiri@resnulli.us>, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev,
	linux-media@vger.kernel.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260209153809.250835-2-jiri@resnulli.us>
X-CMS-MailID: 20260223072845eucas1p238d8a317d8340fe8e9c8b658727e8ee8
X-Msg-Generator: CA
X-RootMTR: 20260209153816eucas1p22befaa2c5ef3c6d5e67956eea08424ed
X-EPHeader: CA
X-CMS-RootMailID: 20260209153816eucas1p22befaa2c5ef3c6d5e67956eea08424ed
References: <20260209153809.250835-1-jiri@resnulli.us>
	<CGME20260209153816eucas1p22befaa2c5ef3c6d5e67956eea08424ed@eucas1p2.samsung.com>
	<20260209153809.250835-2-jiri@resnulli.us>
X-Spamd-Bar: ----
Message-ID-Hash: SG67KSDLOVLEJQYXRJZGSRSEDVNPCJ3L
X-Message-ID-Hash: SG67KSDLOVLEJQYXRJZGSRSEDVNPCJ3L
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] dma-mapping: avoid random addr value print out on error path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SG67KSDLOVLEJQYXRJZGSRSEDVNPCJ3L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[25];
	DKIM_TRACE(0.00)[samsung.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,samsung.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 2B4AA172A6B
X-Rspamd-Action: no action

On 09.02.2026 16:38, Jiri Pirko wrote:
> From: Jiri Pirko <jiri@nvidia.com>
>
> dma_addr is unitialized in dma_direct_map_phys() when swiotlb is forced
> and DMA_ATTR_MMIO is set which leads to random value print out in
> warning. Fix that by just returning DMA_MAPPING_ERROR.
>
> Fixes: e53d29f957b3 ("dma-mapping: convert dma_direct_*map_page to be phys_addr_t based")
> Signed-off-by: Jiri Pirko <jiri@nvidia.com>

Applied to dma-mapping-fixes, thanks!

> ---
>   kernel/dma/direct.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/dma/direct.h b/kernel/dma/direct.h
> index da2fadf45bcd..62f0d9d0ba02 100644
> --- a/kernel/dma/direct.h
> +++ b/kernel/dma/direct.h
> @@ -88,7 +88,7 @@ static inline dma_addr_t dma_direct_map_phys(struct device *dev,
>   
>   	if (is_swiotlb_force_bounce(dev)) {
>   		if (attrs & DMA_ATTR_MMIO)
> -			goto err_overflow;
> +			return DMA_MAPPING_ERROR;
>   
>   		return swiotlb_map(dev, phys, size, dir, attrs);
>   	}

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGtPBQZ7y2lCIQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 09:43:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BAB36562B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 09:43:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FC623F903
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 07:43:00 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	by lists.linaro.org (Postfix) with ESMTPS id 62B593F7B6
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 07:42:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=uva1diva;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20260331074255euoutp011d1d51496561b1451460d6d5650944d0~h3Tt5cn2x1554915549euoutp01S
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 07:42:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20260331074255euoutp011d1d51496561b1451460d6d5650944d0~h3Tt5cn2x1554915549euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774942975;
	bh=n6XU63OSDlDGmqLMrEtDGpPy3DmkqxntfJ1+FJlHctA=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=uva1divasw/L0LnvvNXqSh4Wm6b9AqbtLPVQWtUbIp/1bh2/Gr5c0VE6nNsxufcmV
	 unmyOBjWthGNcHBvNP1/rpfrTUVnInX/mrXX/q7AteDLCWnP52f6RB914SiNvu+wOi
	 XxHIS8p4vCRuUC90yZcpEn+Xbfvv1H1qe4krHElw=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260331074255eucas1p1bd4e8f4b94051f94cb080e283de744f8~h3Ttipnyj2795927959eucas1p1b;
	Tue, 31 Mar 2026 07:42:55 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260331074253eusmtip2ee24dfba73ffe7e4389932ec930dced9~h3TsKWxn_0253302533eusmtip2V;
	Tue, 31 Mar 2026 07:42:53 +0000 (GMT)
Message-ID: <69b0e509-c469-4587-87b5-52d8e29e4c1a@samsung.com>
Date: Tue, 31 Mar 2026 09:42:52 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Maxime Ripard <mripard@kernel.org>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260331-kind-therapeutic-buzzard-8fc55e@houat>
X-CMS-MailID: 20260331074255eucas1p1bd4e8f4b94051f94cb080e283de744f8
X-Msg-Generator: CA
X-RootMTR: 20260330154021eucas1p1ddf347acd21646c96fda4b266ddfc03b
X-EPHeader: CA
X-CMS-RootMailID: 20260330154021eucas1p1ddf347acd21646c96fda4b266ddfc03b
References: <CGME20260330154021eucas1p1ddf347acd21646c96fda4b266ddfc03b@eucas1p1.samsung.com>
	<20260330-dma-build-fix-v2-1-26d844575815@kernel.org>
	<a097600b-0860-495f-b918-adef327bdaec@samsung.com>
	<20260331-kind-therapeutic-buzzard-8fc55e@houat>
X-Spamd-Bar: ----
Message-ID-Hash: JRWLYVDDSHNEG44XI2ZCOYYRM7RIGEVE
X-Message-ID-Hash: JRWLYVDDSHNEG44XI2ZCOYYRM7RIGEVE
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Albert Esteve <aesteve@redhat.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Mark Brown <broonie@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma/contiguous: Fix broken build
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JRWLYVDDSHNEG44XI2ZCOYYRM7RIGEVE/>
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
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[samsung.com:-];
	NEURAL_SPAM(0.00)[0.981];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,samsung.com:mid]
X-Rspamd-Queue-Id: 49BAB36562B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 31.03.2026 09:40, Maxime Ripard wrote:
> On Mon, Mar 30, 2026 at 07:49:26PM +0200, Marek Szyprowski wrote:
>> On 30.03.2026 17:40, Maxime Ripard wrote:
>>> Commit 3a236f6a5cf2 ("dma: contiguous: Turn heap registration logic
>>> around") didn't remove one last call to dma_heap_cma_register_heap()
>>> that it removed, thus breaking the build.
>>>
>>> That last call is in dma_contiguous_reserve(), to handle the
>>> registration of the default CMA region heap instance.
>>>
>>> The default CMA region instance is already somewhat handled by
>>> retrieving it through the dev_get_cma_area() call in the CMA heap
>>> driver. However, since commit 854acbe75ff4 ("dma-buf: heaps: Give
>>> default CMA heap a fixed name"), we will create two heap instances for
>>> the CMA default region.
>>>
>>> The first one is always called "default_cma_region", and is the one
>>> handled by the call to dev_get_cma_area() mentioned earlier. The second
>>> one is the name it used to have prior to that last commit for backward
>>> compatibility.
>>>
>>> In the case where the default CMA region is defined in the DT, then that
>>> region is registered through rmem_cma_setup() and that region is added
>>> to the list of CMA regions to create a CMA heap instance for.
>>>
>>> In the case where the default CMA region is not defined in the DT
>>> though used to be the case covered by the now removed
>>> dma_heap_cma_register_heap() in dma_contiguous_reserve(). If we only
>>> remove the call to dma_heap_cma_register_heap(), then the legacy name of
>>> the CMA heap will not be registered anymore. We thus need to replace
>>> that call with a call to rmem_cma_insert_area() to make sure we queue
>>> this instance, if created, to create a heap instance.
>>>
>>> Once that call to dma_heap_cma_register_heap() replaced, we can also
>>> remove the now unused function definition, its now empty header, and all
>>> includes of this header.
>>>
>>> Fixes: 3a236f6a5cf2 ("dma: contiguous: Turn heap registration logic around")
>>> Reported-by: Mark Brown <broonie@kernel.org>
>>> Closes: https://lore.kernel.org/linux-next/acbjaDJ1a-YQC64d@sirena.co.uk/
>>> Signed-off-by: Maxime Ripard <mripard@kernel.org>
>>> ---
>>> Changes in v2:
>>> - Fix creation of the CMA heap instance with the legacy name when not
>>>   declared in the DT. 
>>> - Link to v1: https://lore.kernel.org/r/20260330-dma-build-fix-v1-1-748b64f0d8af@kernel.org
>>> ---
>>>  drivers/dma-buf/heaps/cma_heap.c  |  1 -
>>>  include/linux/dma-buf/heaps/cma.h | 16 ----------------
>>>  kernel/dma/contiguous.c           | 14 +++++++++++---
>>>  3 files changed, 11 insertions(+), 20 deletions(-)
>>>
>>> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
>>> index 7216a14262b04bb6130ddf26b7d009f7d15b03fd..9a8b36bc929f6daa483a0139a2919d95127e0d23 100644
>>> --- a/drivers/dma-buf/heaps/cma_heap.c
>>> +++ b/drivers/dma-buf/heaps/cma_heap.c
>>> @@ -12,11 +12,10 @@
>>>  
>>>  #define pr_fmt(fmt) "cma_heap: " fmt
>>>  
>>>  #include <linux/cma.h>
>>>  #include <linux/dma-buf.h>
>>> -#include <linux/dma-buf/heaps/cma.h>
>>>  #include <linux/dma-heap.h>
>>>  #include <linux/dma-map-ops.h>
>>>  #include <linux/err.h>
>>>  #include <linux/highmem.h>
>>>  #include <linux/io.h>
>>> diff --git a/include/linux/dma-buf/heaps/cma.h b/include/linux/dma-buf/heaps/cma.h
>>> deleted file mode 100644
>>> index e751479e21e703e24a5f799b4a7fc8bd0df3c1c4..0000000000000000000000000000000000000000
>>> --- a/include/linux/dma-buf/heaps/cma.h
>>> +++ /dev/null
>>> @@ -1,16 +0,0 @@
>>> -/* SPDX-License-Identifier: GPL-2.0 */
>>> -#ifndef DMA_BUF_HEAP_CMA_H_
>>> -#define DMA_BUF_HEAP_CMA_H_
>>> -
>>> -struct cma;
>>> -
>>> -#ifdef CONFIG_DMABUF_HEAPS_CMA
>>> -int dma_heap_cma_register_heap(struct cma *cma);
>>> -#else
>>> -static inline int dma_heap_cma_register_heap(struct cma *cma)
>>> -{
>>> -	return 0;
>>> -}
>>> -#endif // CONFIG_DMABUF_HEAPS_CMA
>>> -
>>> -#endif // DMA_BUF_HEAP_CMA_H_
>>> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
>>> index ad50512d71d3088a73e4b1ac02d6e6122374888e..d5d15983060c5c54744d6a63f2b591e1a3455b86 100644
>>> --- a/kernel/dma/contiguous.c
>>> +++ b/kernel/dma/contiguous.c
>>> @@ -40,11 +40,10 @@
>>>  #include <asm/page.h>
>>>  
>>>  #include <linux/memblock.h>
>>>  #include <linux/err.h>
>>>  #include <linux/sizes.h>
>>> -#include <linux/dma-buf/heaps/cma.h>
>>>  #include <linux/dma-map-ops.h>
>>>  #include <linux/cma.h>
>>>  #include <linux/nospec.h>
>>>  
>>>  #ifdef CONFIG_CMA_SIZE_MBYTES
>>> @@ -217,10 +216,19 @@ static void __init dma_numa_cma_reserve(void)
>>>  static inline void __init dma_numa_cma_reserve(void)
>>>  {
>>>  }
>>>  #endif
>>>  
>>> +#ifdef CONFIG_OF_RESERVED_MEM
>>> +static int rmem_cma_insert_area(struct cma *cma);
>>> +#else
>>> +static inline int rmem_cma_insert_area(struct cma *cma)
>>> +{
>>> +	return 0;
>>> +}
>>> +#endif
>>> +
>>>  /**
>>>   * dma_contiguous_reserve() - reserve area(s) for contiguous memory handling
>>>   * @limit: End address of the reserved memory (optional, 0 for any).
>>>   *
>>>   * This function reserves memory from early allocator. It should be
>>> @@ -271,13 +279,13 @@ void __init dma_contiguous_reserve(phys_addr_t limit)
>>>  						  &dma_contiguous_default_area,
>>>  						  fixed);
>>>  		if (ret)
>>>  			return;
>>>  
>>> -		ret = dma_heap_cma_register_heap(dma_contiguous_default_area);
>>> +		ret = rmem_cma_insert_area(dma_contiguous_default_area);
>>>  		if (ret)
>>> -			pr_warn("Couldn't register default CMA heap.");
>>> +			pr_warn("Couldn't queue default CMA region for heap creation.");
>>>  	}
>>>  }
>>>  
>>>  void __weak
>>>  dma_contiguous_early_fixup(phys_addr_t base, unsigned long size)
>>>
>>> ---
>> Huh, this is still not the correct fix to restore the old behavior.
>> When !CONFIG_OF_RESERVED_MEM the default cma area should be still
>> registered as the default cma dma-buf heap.
> You're right, but it feels that it's a fundamental flaw in the original
> patch rather than a quick fix for the build now. Can you drop the
> patches you applied entirely? If so, I'll send a new version of that
> series.

I've dropped the whole branch already.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

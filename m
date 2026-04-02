Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJ8iICkAzmntkAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 07:35:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BE0384062
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 07:35:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFF0F401F3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 05:35:35 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	by lists.linaro.org (Postfix) with ESMTPS id 529A93F70C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 05:35:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=p8XIiW60;
	dmarc=pass (policy=none) header.from=samsung.com;
	spf=pass (lists.linaro.org: domain of m.szyprowski@samsung.com designates 210.118.77.12 as permitted sender) smtp.mailfrom=m.szyprowski@samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260402053531euoutp02223f800acd61f71bd4afb42cf4886bdc~ic3C0Ud_p1190611906euoutp02A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 05:35:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260402053531euoutp02223f800acd61f71bd4afb42cf4886bdc~ic3C0Ud_p1190611906euoutp02A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1775108131;
	bh=a2ALkW+kbFi61LCOo/jIn51RH7T6kZmUYLT9OKC04kY=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=p8XIiW60yygB4duGaUeoZzDfligbEwHtpLxRKPqjeP2cqMQWJ+aTAA2Z0f9PB4ogv
	 WDtvy6XPjlMBFeX6dzvhvNPWVy42IetKV0iqUCf17GbTcsP+CcfJqQS7K4Q0Ue+mmb
	 7tV4tDH1JCgqUAho30DqQ2/fTx8iM0loupZzjumw=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260402053530eucas1p1f0754eb1edb4acdb0d52b31d9ff6c4f9~ic3B75IsG1210612106eucas1p1C;
	Thu,  2 Apr 2026 05:35:30 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260402053528eusmtip1ac753cbaaed704e10d0c4a64bfd0adad~ic3A3bQA60232302323eusmtip1d;
	Thu,  2 Apr 2026 05:35:28 +0000 (GMT)
Message-ID: <f6de2c2d-132c-4344-9b58-6e6ef1eb15a6@samsung.com>
Date: Thu, 2 Apr 2026 07:35:28 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
To: Sumit Semwal <sumit.semwal@linaro.org>, Jiri Pirko <jiri@resnulli.us>
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <CAO_48GEUXpcFBiyJAMgTcGPSq56-mZ0qnO3FrFRM2LoGd8W6HA@mail.gmail.com>
X-CMS-MailID: 20260402053530eucas1p1f0754eb1edb4acdb0d52b31d9ff6c4f9
X-Msg-Generator: CA
X-RootMTR: 20260402044147eucas1p25971b90eb6aa1ef03a2a1136d812f039
X-EPHeader: CA
X-CMS-RootMailID: 20260402044147eucas1p25971b90eb6aa1ef03a2a1136d812f039
References: <20260325192352.437608-1-jiri@resnulli.us>
	<CGME20260402044147eucas1p25971b90eb6aa1ef03a2a1136d812f039@eucas1p2.samsung.com>
	<CAO_48GEUXpcFBiyJAMgTcGPSq56-mZ0qnO3FrFRM2LoGd8W6HA@mail.gmail.com>
X-Spamd-Bar: ----
Message-ID-Hash: CK47IE2DRI7YRTIUG7FGH2M7OQEFDLJF
X-Message-ID-Hash: CK47IE2DRI7YRTIUG7FGH2M7OQEFDLJF
X-MailFrom: m.szyprowski@samsung.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CK47IE2DRI7YRTIUG7FGH2M7OQEFDLJF/>
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
	NEURAL_SPAM(0.00)[0.901];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,samsung.com:mid]
X-Rspamd-Queue-Id: F2BE0384062
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 02.04.2026 06:41, Sumit Semwal wrote:
> On Thu, 26 Mar 2026 at 00:53, Jiri Pirko <jiri@resnulli.us> wrote:
>> From: Jiri Pirko <jiri@nvidia.com>
>>
>> Confidential computing (CoCo) VMs/guests, such as AMD SEV and Intel TDX,
>> run with private/encrypted memory which creates a challenge
>> for devices that do not support DMA to it (no TDISP support).
>>
>> For kernel-only DMA operations, swiotlb bounce buffering provides a
>> transparent solution by copying data through shared memory.
>> However, the only way to get this memory into userspace is via the DMA
>> API's dma_alloc_pages()/dma_mmap_pages() type interfaces which limits
>> the use of the memory to a single DMA device, and is incompatible with
>> pin_user_pages().
>>
>> These limitations are particularly problematic for the RDMA subsystem
>> which makes heavy use of pin_user_pages() and expects flexible memory
>> usage between many different DMA devices.
>>
>> This patch series enables userspace to explicitly request shared
>> (decrypted) memory allocations from new dma-buf system_cc_shared heap.
>> Userspace can mmap this memory and pass the dma-buf fd to other
>> existing importers such as RDMA or DRM devices to access the
>> memory. The DMA API is improved to allow the dma heap exporter to DMA
>> map the shared memory to each importing device.
> Thank you for the patch series, it looks good to me.
>
> Marek, if you are ok, please could you take it through your tree, with my
> Acked-by: Sumit Semwal <sumit.semwal@linaro.org>

I've applied both patches to dma-mapping-for-next. Thanks!

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

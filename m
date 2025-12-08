Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFVkOp8D4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8326E411225
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E1A444BC8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:43:26 +0000 (UTC)
Received: from mta21.hihonor.com (mta21.hihonor.com [81.70.160.142])
	by lists.linaro.org (Postfix) with ESMTPS id E07CC3F6F2
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Dec 2025 09:41:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of gaoxu2@honor.com designates 81.70.160.142 as permitted sender) smtp.mailfrom=gaoxu2@honor.com;
	dmarc=pass (policy=none) header.from=honor.com
Received: from w012.hihonor.com (unknown [10.68.27.189])
	by mta21.hihonor.com (SkyGuard) with ESMTPS id 4dPxkp0TvQzYmbLG;
	Mon,  8 Dec 2025 17:38:58 +0800 (CST)
Received: from a009.hihonor.com (10.68.30.244) by w012.hihonor.com
 (10.68.27.189) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Mon, 8 Dec
 2025 17:41:27 +0800
Received: from a008.hihonor.com (10.68.30.56) by a009.hihonor.com
 (10.68.30.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Mon, 8 Dec
 2025 17:41:27 +0800
Received: from a008.hihonor.com ([fe80::b6bf:fc6a:207:6851]) by
 a008.hihonor.com ([fe80::b6bf:fc6a:207:6851%6]) with mapi id 15.02.2562.027;
 Mon, 8 Dec 2025 17:41:27 +0800
From: gao xu <gaoxu2@honor.com>
To: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
Thread-Topic: [RFC] dma-buf: system_heap: add PTE_CONT for larger contiguous
Thread-Index: AdxoJnlSUP8R1FJ1RaylLS1xKeCkOw==
Date: Mon, 8 Dec 2025 09:41:27 +0000
Message-ID: <3da6a916cd6d489690b05d2bd64a2b3a@honor.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.166.85.101]
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: gaoxu2@honor.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3Y4Z2MCLI4E7EC7T4BD3PQI5INYFRBLP
X-Message-ID-Hash: 3Y4Z2MCLI4E7EC7T4BD3PQI5INYFRBLP
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:39 +0000
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "\"T.J. Mercier\"" <tjmercier@google.com>, =?utf-8?B?IkNocmlzdGlhbiBLw7ZuaWci?= <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Barry Song <21cnbao@gmail.com>, "surenb@google.com" <surenb@google.com>, zhouxiaolong <zhouxiaolong9@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC] dma-buf: system_heap: add PTE_CONT for larger contiguous
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3Y4Z2MCLI4E7EC7T4BD3PQI5INYFRBLP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3102];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[honor.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[collabora.com,arm.com,google.com,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com,honor.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[gaoxu2@honor.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_XOIP(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 8326E411225
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

commit 04c7adb5871a ("dma-buf: system_heap: use larger contiguous mappings
instead of per-page mmap") facilitates the use of PTE_CONT. The system_heap
allocates pages of order 4 and 8 that meet the alignment requirements for
PTE_CONT. enabling PTE_CONT for larger contiguous mappings.

After applying this patch, TLB misses are reduced by approximately 5% when
opening the camera on Android systems.

Signed-off-by: gao xu <gaoxu2@honor.com>
---
 drivers/dma-buf/heaps/system_heap.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 4c782fe33..103b06f89 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -202,12 +202,16 @@ static int system_heap_mmap(struct dma_buf *dmabuf, struct vm_area_struct *vma)
 		unsigned long n = (sg->length >> PAGE_SHIFT) - pgoff;
 		struct page *page = sg_page(sg) + pgoff;
 		unsigned long size = n << PAGE_SHIFT;
+		pgprot_t prot = vma->vm_page_prot;
 
 		if (addr + size > vma->vm_end)
 			size = vma->vm_end - addr;
 
+		if (((addr | size) & ~CONT_PTE_MASK) == 0)
+			prot = __pgprot(pgprot_val(prot) | PTE_CONT);
+
 		ret = remap_pfn_range(vma, addr, page_to_pfn(page),
-				size, vma->vm_page_prot);
+				size, prot);
 		if (ret)
 			return ret;
 
-- 
2.42.0
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

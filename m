Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAtgCIUmn2mPZAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 17:42:45 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D056D19AD8C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 17:42:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D13E9401BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 16:42:43 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B0A18401BB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 16:42:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ur3A8vqq;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 35AA940573;
	Wed, 25 Feb 2026 16:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BA20C19421;
	Wed, 25 Feb 2026 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772037726;
	bh=1ksolxmHKnKMAAkcEvTBTRw073bmw9i+dhSGaMAVL9Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ur3A8vqqGdciMpqU0VUtudg622/fzXcoMXTJl8MBdRsa8x8pVSrAXd1E9yCTkyXp6
	 iVXrS7SNdy75slH60+tXplIkB6t/1o7nxFWsyWf/4oxul8cFq6YbEGc52bvJAzibxR
	 BvjAMCMLrr3/tiFzUSV00wGbR8t+6DooLQJ5JpnNlHpE3i0UIaRtkNB+rccVdHIWrt
	 XC6A9aksZBx05/izc6qF3cGGmMQBGAb5VbwkipsNYcdeMD23sOXEaYaJtchHNc8GIJ
	 IVW12BkW/qEybgdzq+HbWDDkD9wZBUItYEI5/ngCNGrV0rqIEz3XE307ulKBuLLv5K
	 tUgyzFlBI4Xwg==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 25 Feb 2026 17:41:51 +0100
MIME-Version: 1.0
Message-Id: <20260225-dma-buf-heaps-as-modules-v1-3-2109225a090d@kernel.org>
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=859; i=mripard@kernel.org;
 h=from:subject:message-id; bh=1ksolxmHKnKMAAkcEvTBTRw073bmw9i+dhSGaMAVL9Y=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJnz1fwnx849earviNBCCet3bOc1zpe7uW7U3Wz8x/jtU
 kPTxgeBHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAi/AcY62Nq/RlO7bqgoKgi
 uWX9Eu8FKk0HHSbUvZ1qw2udpZF4WLmCq/pPatK1K8e79n64Xq4az9iwXMwi0n7FB4W7jc/2Pbh
 yIus746Trrs81HTbOqLTs8Ixmir8d+tG94N9f2VizxOz5p9YAAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: A6YCT7L6C2DA6EE76CI27BV2DUKSEBBC
X-Message-ID-Hash: A6YCT7L6C2DA6EE76CI27BV2DUKSEBBC
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/7] mm: cma: Export cma_get_name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A6YCT7L6C2DA6EE76CI27BV2DUKSEBBC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: D056D19AD8C
X-Rspamd-Action: no action

The CMA dma-buf heap uses the cma_get_name() function to get the name of
the heap instance it's going to create.

However, this function is not exported. Since we want to turn the CMA
heap into a module, let's export it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 mm/cma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/mm/cma.c b/mm/cma.c
index be142b473f3bd41b9c7d8ba4397f018f6993d962..550effb9c4e01cc488b5744fe61d55a5b70a6d6c 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -50,10 +50,11 @@ unsigned long cma_get_size(const struct cma *cma)
 
 const char *cma_get_name(const struct cma *cma)
 {
 	return cma->name;
 }
+EXPORT_SYMBOL_GPL(cma_get_name);
 
 static unsigned long cma_bitmap_aligned_mask(const struct cma *cma,
 					     unsigned int align_order)
 {
 	if (align_order <= cma->order_per_bit)

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

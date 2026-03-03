Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YE8tI2+0pmk7TAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 11:14:07 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6449B1EC811
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 03 Mar 2026 11:14:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BE9040171
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Mar 2026 10:14:06 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 74790401BA
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 10:13:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ADpL3jIO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3453A6013A;
	Tue,  3 Mar 2026 10:13:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86090C116C6;
	Tue,  3 Mar 2026 10:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772532820;
	bh=oNUPt44D7xewgXiELSrkzONvN2UIFpJB+B1908QRT5k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ADpL3jIOp1uDm7HSfLQGSaxxoDKfYlUUC08JfjkT40HIv1kDS6uscZlg/RFCc2D3i
	 vyua0nD6EbOGZLWlIbC3nGpLFAAD9kZSZODn1YsjjXKvYLt1HSQZiK3J2GmjdZ/VJt
	 u0AUVs22fHYQBvmXX+UTxO1B15J4umInL4/FFUCoWOXTCOZsN8Lh6llVp84TelzZa8
	 ZafeIsMhpE3tmLoC9PQPOY/NBEWCdu8a7lxDxfu/YO+KPLWrhd9hB/6z7/P7hrm9LT
	 vvcJBOJ1Nfq+VVBen0KRd+bRSAAlmFLTA8hkquNtNt1lMRPCipCoubmNKTWqTf2wZR
	 LO7hJLS1IUF0Q==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 03 Mar 2026 11:13:11 +0100
MIME-Version: 1.0
Message-Id: <20260303-dma-buf-heaps-as-modules-v3-8-24344812c707@kernel.org>
References: <20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
In-Reply-To: <20260303-dma-buf-heaps-as-modules-v3-0-24344812c707@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1645; i=mripard@kernel.org;
 h=from:subject:message-id; bh=oNUPt44D7xewgXiELSrkzONvN2UIFpJB+B1908QRT5k=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJnLtpjLhZrIvOCLmau/886knTHtqxv8n09Nyyx+oDj3r
 ut8JWuVjqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjCR9M+MDZfKNSakNHG2Pu2p
 1td90Ci2e9fvDWuKXH86fq/Yk+12TfOj9j8bR+VVB078FfeZUh1bwdjQcu2u7Sxvppnmbie/7F0
 uZi/gaby1/Lhe87FY2drnoSW6kjGxWf3566oM18xsCS2xLwEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: TL5BU5KEGCBDMZC52LN2ASUIGEMLJYM2
X-Message-ID-Hash: TL5BU5KEGCBDMZC52LN2ASUIGEMLJYM2
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 8/8] dma-buf: heaps: system: Turn the heap into a module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TL5BU5KEGCBDMZC52LN2ASUIGEMLJYM2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 6449B1EC811
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
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Action: no action

The system heap can be easily turned into a module by adding the usual
MODULE_* macros, importing the proper namespaces and changing the
Kconfig symbol to a tristate.

This heap won't be able to unload though, since we're missing a lot of
infrastructure to make it safe.

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/Kconfig       | 2 +-
 drivers/dma-buf/heaps/system_heap.c | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index aed0b9b4febf388376cfc41be9843980d010c4e8..e273fb18feca091ccd9b406e68f86c12efb339e9 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -1,7 +1,7 @@
 config DMABUF_HEAPS_SYSTEM
-	bool "DMA-BUF System Heap"
+	tristate "DMA-BUF System Heap"
 	depends on DMABUF_HEAPS
 	help
 	  Choose this option to enable the system dmabuf heap. The system heap
 	  is backed by pages from the buddy allocator. If in doubt, say Y.
 
diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index b3650d8fd6511a4a755612cfe3a9d9fee796f80e..1957403b0f2ae5e82ab39f5945dfe82808e93964 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -442,5 +442,10 @@ static int __init system_heap_create(void)
 		return PTR_ERR(sys_heap);
 
 	return 0;
 }
 module_init(system_heap_create);
+
+MODULE_DESCRIPTION("DMA-BUF System Heap");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("DMA_BUF");
+MODULE_IMPORT_NS("DMA_BUF_HEAP");

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

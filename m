Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHx1J1mby2lBJgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:00:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 569C83677F6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 12:00:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 689573F7B6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 10:00:56 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4226340305
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 10:00:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CJvLYjTs;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B62F44459E;
	Tue, 31 Mar 2026 10:00:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 311CFC2BCB2;
	Tue, 31 Mar 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774951233;
	bh=WYlzG+ukMJv0uKE6bBondQfqi9l4oA5FGcpDNGm8BfQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CJvLYjTsGVFPfmwcssIBPuYWjEXZyeslFXYMGjWslUxnkyWJMRkYWx/l4rHOl4MhJ
	 Cs86r/iSby2dp1Cy3j1p0YGLO8/seT+yM9iTE785mhUngsXG5HrJINhMDZAvJ8kXUa
	 9MteSpTOUqG7xcXMh7lSM12m7OWM2y7/jGQ7ij9uIsRnSyoAWJP5cdy3YmbmeIUWtl
	 3skZX52saIkv3R0r8Zc79v2VEXqEJ5d8ohc75fVF98npAw3lC5eBO+pQYuqJ8skGNz
	 orDcMmp0BajvP9QI2x0X2qP6MS0813wJiAU0+2RjN5K9t2VKQWmbyqxaXS9dG18Kth
	 0N4mtm7SpjM/w==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Mar 2026 12:00:13 +0200
MIME-Version: 1.0
Message-Id: <20260331-dma-buf-heaps-as-modules-v4-4-e18fda504419@kernel.org>
References: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
In-Reply-To: <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=953; i=mripard@kernel.org;
 h=from:subject:message-id; bh=WYlzG+ukMJv0uKE6bBondQfqi9l4oA5FGcpDNGm8BfQ=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJmnZxv81fradDYnN/8Gl+LUDRekPcP7X+5e8vtpaNLbZ
 K2t8qwHOqayMAhzMsiKKbI8kQk7vbx9cZWD/cofMHNYmUCGMHBxCsBEJvky1hcs2svx6NgZ4yLT
 IJXHbfnV+8vfCTVuNBNRuXuBr/aQjfAp4RlrxZYV5B417zYNOlOXythwwin1TskDzm27Z2rb8pt
 OVlje0m/zePGpgNv7l8Yd/GkY9ICfXSqnI+m2pstGTfO58fwA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: 4BPLD7MQDJNWNJKHTQALHJTSEL47LG3Y
X-Message-ID-Hash: 4BPLD7MQDJNWNJKHTQALHJTSEL47LG3Y
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 4/8] dma: contiguous: Export dev_get_cma_area()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4BPLD7MQDJNWNJKHTQALHJTSEL47LG3Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
	NEURAL_HAM(-0.00)[-0.718];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 569C83677F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The CMA dma-buf heap uses the dev_get_cma_area() function to retrieve
the default contiguous area.

Now that this function is no longer inlined, and since we want to turn
the CMA heap into a module, let's export it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/contiguous.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index fd8d3518a2323f0a631fb185ef92a24c35f8d25d..83a5bd9488e1448cc72e92ed204ce804164cc6b8 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -136,10 +136,11 @@ struct cma *dev_get_cma_area(struct device *dev)
 	if (dev && dev->cma_area)
 		return dev->cma_area;
 
 	return dma_contiguous_default_area;
 }
+EXPORT_SYMBOL_GPL(dev_get_cma_area);
 
 #ifdef CONFIG_DMA_NUMA_CMA
 
 static struct cma *dma_contiguous_numa_area[MAX_NUMNODES];
 static phys_addr_t numa_cma_size[MAX_NUMNODES] __initdata;

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

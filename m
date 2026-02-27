Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4L03INiaoWl8ugQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 14:23:36 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8F81B7945
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 14:23:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 345804015E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 13:23:35 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 79FB3401BB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 13:23:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=aUnyOF+u;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E2C0B4167F;
	Fri, 27 Feb 2026 13:23:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C688C116C6;
	Fri, 27 Feb 2026 13:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772198605;
	bh=lElZts2cuQOlY9aUjaqr5WZYPDwOSZ2Mb3btADVyBc4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=aUnyOF+udYtL1ykv8pOFaVslgKP2zD/zeGmvscsz18MoxVEJTPyU/Eg0ACVRF9QE6
	 7medwVI9oZtGLizGJJid62cpzlYeWZeeHsB/EILoAfnKaXFpI2OdgymgIKmfcilJ2g
	 pPXs8E/8oU6A5oGe55yuN/LXPwGNvUdlnwCRmwKj7vnBivnaZAZfPGR/WAFiE8dDRV
	 k3DZiAdx18nlw4LXkryQ7TZ9jGEQFDl6jEva1KamPfBdn6FFEvcaJxr1LnnAwcS6S4
	 GCFmQZkAfrM9uS0ViCvC5AWBiIHkqFTQWHQUBE65WO7gi0HEV+QoQUXjkK/g9LShWx
	 E/Ov6rLv/RRuQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 27 Feb 2026 14:15:42 +0100
MIME-Version: 1.0
Message-Id: <20260227-dma-buf-heaps-as-modules-v2-3-454aee7e06cc@kernel.org>
References: <20260227-dma-buf-heaps-as-modules-v2-0-454aee7e06cc@kernel.org>
In-Reply-To: <20260227-dma-buf-heaps-as-modules-v2-0-454aee7e06cc@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1675; i=mripard@kernel.org;
 h=from:subject:message-id; bh=lElZts2cuQOlY9aUjaqr5WZYPDwOSZ2Mb3btADVyBc4=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJkLZ+28vP2r4bSIbPFKU9eDK6yerHZ0etl9+oq6YnHe1
 ezif3kKHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAiRicZ64P0mI/dVJ/oWqo/
 xejKnMefFux9VLtt8r0gz7ibTL5iLx8t+aNeI8ufstXB7k9C676JKYz1nocPnT6zULJSSWsax5c
 ilebF9fOD1omJbdd0PvfN50jErN+7Zt8ITNx7xMP66mL21JKnAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: EPQJSQEEBUCUDT7LGHO5PIRUEOKKHGVM
X-Message-ID-Hash: EPQJSQEEBUCUDT7LGHO5PIRUEOKKHGVM
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/9] dma: contiguous: Make dma_contiguous_default_area static
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EPQJSQEEBUCUDT7LGHO5PIRUEOKKHGVM/>
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
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1C8F81B7945
X-Rspamd-Action: no action

Now that dev_get_cma_area() is no longer inline, we don't have any user
of dma_contiguous_default_area() outside of contiguous.c so we can make
it static.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-map-ops.h | 2 --
 kernel/dma/contiguous.c     | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/linux/dma-map-ops.h b/include/linux/dma-map-ops.h
index dc7d54ac5dd66bd22ef868d7894cc1cb2ee4c156..526c6978a306ffacd5e30387a2fd21af3333cf6c 100644
--- a/include/linux/dma-map-ops.h
+++ b/include/linux/dma-map-ops.h
@@ -89,12 +89,10 @@ static inline void set_dma_ops(struct device *dev,
 {
 }
 #endif /* CONFIG_ARCH_HAS_DMA_OPS */
 
 #ifdef CONFIG_DMA_CMA
-extern struct cma *dma_contiguous_default_area;
-
 struct cma *dev_get_cma_area(struct device *dev);
 
 void dma_contiguous_reserve(phys_addr_t addr_limit);
 int __init dma_contiguous_reserve_area(phys_addr_t size, phys_addr_t base,
 		phys_addr_t limit, struct cma **res_cma, bool fixed);
diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 9a9ed7248fb823105609c5db5a51113e54a40192..a4279d800d4658bf1c33b9b1da100eee1367d42f 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -51,11 +51,11 @@
 #define CMA_SIZE_MBYTES CONFIG_CMA_SIZE_MBYTES
 #else
 #define CMA_SIZE_MBYTES 0
 #endif
 
-struct cma *dma_contiguous_default_area;
+static struct cma *dma_contiguous_default_area;
 
 /*
  * Default global CMA area size can be defined in kernel's .config.
  * This is useful mainly for distro maintainers to create a kernel
  * that works correctly for most supported systems.

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

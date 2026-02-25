Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKuZIZUmn2nOZAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 17:43:01 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC9F19ADA1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 17:43:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0DF45402AE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 16:43:00 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 893D7401F9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 16:42:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=R9SbsQH4;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 02B89444E5;
	Wed, 25 Feb 2026 16:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85C74C19422;
	Wed, 25 Feb 2026 16:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772037728;
	bh=5t5YBl6F2Q9NBmrbuy0kWi5Y1JLcv4Ia1Fv2DnfmLP0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=R9SbsQH4kO433LJbxIRQ9G2QyIvijqX+2UUdxf2AUxhpkZL8D/w1n1UnLOE5WcFHo
	 W7SnFVYG66c559MuvTJfU6g4OrKlyo7phg49rhhs6jppBjtf+u6SNVc8bIwsdjRrHB
	 ylDLpReT23aVYZp1JXVTm/ckzy/h9XZacpwGuWKcOCmiXOFiEPsdEnvbBV7C/HS/11
	 tT9zghsIuqAIhm8PKHKgLHVKNuAfAS3S1Z+unOmWa8txIeH9YgiZ92aP8lwlP+dvh9
	 KatmDuDrBKraDIZwCsQDrmLXCCpX4Tla0yk2aIZFbHV++fuiHkqFq2jlLL2kGuMjPS
	 iAIxksUcUg5Fw==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 25 Feb 2026 17:41:52 +0100
MIME-Version: 1.0
Message-Id: <20260225-dma-buf-heaps-as-modules-v1-4-2109225a090d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1222; i=mripard@kernel.org;
 h=from:subject:message-id; bh=5t5YBl6F2Q9NBmrbuy0kWi5Y1JLcv4Ia1Fv2DnfmLP0=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJnz1fwlD7HqzlzmFiUT9/locsXjSdPy5/duZv67Q2xH2
 cMJE172dExlYRDmZJAVU2R5IhN2enn74ioH+5U/YOawMoEMYeDiFICJTJ/LWB/ps5DNXZhFfnPS
 0a/znj9cOXHb7Xz1BTOTd7PF+XT2KHwQvFN/ht8lk0Xkc/T6mR8KMxgbFu6MVBDJ9RL69WvG3mK
 ziocv1YyVTp6YUjW3Oe9TtvEBpZidmxSFCxta5F9+Vk6p4hUCAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: 3SNO6247MSQ57X7OFX5GYGBKRLTZ6EIU
X-Message-ID-Hash: 3SNO6247MSQ57X7OFX5GYGBKRLTZ6EIU
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 4/7] mm: cma: Export dma_contiguous_default_area
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3SNO6247MSQ57X7OFX5GYGBKRLTZ6EIU/>
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
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 2DC9F19ADA1
X-Rspamd-Action: no action

The CMA dma-buf heap uses the dev_get_cma_area() inline function that
would either return the content of device.cma_area or the content of
dma_contiguous_default_area.

The latter holds a pointer to the default CMA region, and is stored in a
public variable. However, that variable isn't exported which prevents to
use dev_get_cma_area() in modules.

Since we want to turn the CMA heap into a module, let's export
dma_contiguous_default_area to allow modules to use dev_get_cma_area().

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 kernel/dma/contiguous.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 14bd54fb758537f01a6fe27318e7b683964e20b1..fb64ccb99243e3cfea4890391a723130db69ee94 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -52,10 +52,11 @@
 #else
 #define CMA_SIZE_MBYTES 0
 #endif
 
 struct cma *dma_contiguous_default_area;
+EXPORT_SYMBOL_GPL(dma_contiguous_default_area);
 
 /*
  * Default global CMA area size can be defined in kernel's .config.
  * This is useful mainly for distro maintainers to create a kernel
  * that works correctly for most supported systems.

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

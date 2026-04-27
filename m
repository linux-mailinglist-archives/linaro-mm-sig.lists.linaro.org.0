Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLNZBOg072mX+AAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 12:05:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C55EE4707EB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 12:05:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFEC1406C8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 10:05:26 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 55DFA406C8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 10:05:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XYDX8QIv;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0636D60145;
	Mon, 27 Apr 2026 10:05:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E2E4C2BCB8;
	Mon, 27 Apr 2026 10:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777284317;
	bh=DgPZwjzTFCrRVafEvDDt8RvwW+K7/Y0nWv4ZA667X40=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XYDX8QIv5rn6XF6AN3mOs8DUJBbHzQ4lcb6GLGW4Ex+wswcwryiFJRPGWOGkSiFDA
	 N5qaLLQldCWzxADjPFUxa3SX2HHiz5Vj9Sd0E4qZPKnU3/yBKYKYnSNxE0SeGoG6T+
	 sSA8STxJC9vlPYvlIyobICgLPT5lctMnflKiPBQXRmPrkMGTw7K1/2O84alAAG+Ugz
	 wSYmwb9ud5CQEbiztSggvtcdkopqBZ9w4O+Ht+1UQPvl7riDL4puO6W6u3gG2rWpjY
	 SOA3v+eY2hdrTOgCxtpyj3EJvVo8juB9D5ZAO4TxbA5EEVfI3nAQAnKMQTTX1U3Pfi
	 tiqXc9mMgbRUQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 Apr 2026 12:04:58 +0200
MIME-Version: 1.0
Message-Id: <20260427-dma-buf-heaps-as-modules-v5-2-b6f5678feefc@kernel.org>
References: <20260427-dma-buf-heaps-as-modules-v5-0-b6f5678feefc@kernel.org>
In-Reply-To: <20260427-dma-buf-heaps-as-modules-v5-0-b6f5678feefc@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1748; i=mripard@kernel.org;
 h=from:subject:message-id; bh=DgPZwjzTFCrRVafEvDDt8RvwW+K7/Y0nWv4ZA667X40=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJnvTS7H/mDasOzXil2rF2y4GBjeWc2Xfag1r22CsoURM
 9P/7NwbHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAie30Z6+zcFMpK9LdFno2d
 KrJ3quyj8u91q/tDKuYwnq5Y6Mux+ew22dTMJweUVrH0Xqk1/1UpxFgfmnwu7ZC91dyFuZk85xo
 5Lwdej35VIPdbv0ug+uvy/l+/LF7vW16tpSbieNL72oxrCoIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: L5T225PXQXIIH5UU2JN23HQ4M3VAI56K
X-Message-ID-Hash: L5T225PXQXIIH5UU2JN23HQ4M3VAI56K
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 2/4] dma-buf: heaps: cma: Turn the heap into a module
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L5T225PXQXIIH5UU2JN23HQ4M3VAI56K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: C55EE4707EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.931];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

All the symbols used by the CMA heap are already exported, so turning it
into a module is straightforward. We only need to add the usual MODULE_*
macros, import the proper namespaces and change the Kconfig symbol to a
tristate.

This heap won't be able to unload though, since we're missing a lot of
infrastructure to make it safe.

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/Kconfig    | 2 +-
 drivers/dma-buf/heaps/cma_heap.c | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index a5eef06c4226..aed0b9b4febf 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -4,11 +4,11 @@ config DMABUF_HEAPS_SYSTEM
 	help
 	  Choose this option to enable the system dmabuf heap. The system heap
 	  is backed by pages from the buddy allocator. If in doubt, say Y.
 
 config DMABUF_HEAPS_CMA
-	bool "DMA-BUF CMA Heap"
+	tristate "DMA-BUF CMA Heap"
 	depends on DMABUF_HEAPS && DMA_CMA
 	help
 	  Choose this option to enable dma-buf CMA heap. This heap is backed
 	  by the Contiguous Memory Allocator (CMA). If your system has these
 	  regions, you should say Y here.
diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index a359aac45579..3fb4b946c91a 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -418,5 +418,8 @@ static int __init add_cma_heaps(void)
 
 	return 0;
 }
 module_init(add_cma_heaps);
 MODULE_DESCRIPTION("DMA-BUF CMA Heap");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("DMA_BUF");
+MODULE_IMPORT_NS("DMA_BUF_HEAP");

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

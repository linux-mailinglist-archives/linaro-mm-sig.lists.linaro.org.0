Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOLPJWBf5mkrvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 491EE430DD2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A05B73F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:07:22 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4C2673F7AE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 08:53:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="Bv/r3H18";
	spf=pass (lists.linaro.org: domain of linusw@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=linusw@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C5CAC40B9A;
	Tue, 10 Mar 2026 08:53:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C7DC2BC87;
	Tue, 10 Mar 2026 08:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773132801;
	bh=Ls3uEmiMRoW8ba83sAqv7xQmcKvLyhiUZFpckfPFfz0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Bv/r3H18pLal+VtpNQoVn3AgmHGQcDCzp3edTyBNOpDasg4r7YPSYTWn+ZPpuk/3e
	 9GqiDThQfHcwb+NnN/MbNmUDebp67dx+FSG9gRyKwGAzvTtUneS1B2k9zgVLo0AuMT
	 Ux2IH1yXgIp2rKLDdnJELZZ+MNpkyKFJdVJryXsTmwZ7IYaV9rLEyhX0NToe900Ioh
	 NY8GO5Kzk2gSlbLrgaFrgha8JFHnTzOLS14qvNALADwBauUrHZ/QtYBcvK40QRt1t+
	 FZ7fTgm9MkMZF5zKAjVIkhnFj718sziWdF3ObRnbaPdka1LSVps/0iRtKdVRVr2lvU
	 DX1FWQzLGZehA==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 10 Mar 2026 09:53:12 +0100
MIME-Version: 1.0
Message-Id: <20260310-cma-heap-clear-pages-v2-2-ecbbed3d7e6d@kernel.org>
References: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
In-Reply-To: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ----
X-MailFrom: linusw@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JL3SVRKXQR2G5NM3PSYXRHZDS7SBNOSV
X-Message-ID-Hash: JL3SVRKXQR2G5NM3PSYXRHZDS7SBNOSV
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:06:33 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Linus Walleij <linusw@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: Clear CMA highages using helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JL3SVRKXQR2G5NM3PSYXRHZDS7SBNOSV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[992];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 491EE430DD2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently the CMA allocator clears highmem pages using
kmap()->clear_page()->kunmap(), but there is a helper
static inline in <linux/highmem.h> that does the same for
us so use clear_highpage() instead of open coding this.

Suggested-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 drivers/dma-buf/heaps/cma_heap.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index f0bacf25ed9d..92865786cfc9 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -329,10 +329,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 		struct page *page = cma_pages;
 
 		while (nr_clear_pages > 0) {
-			void *vaddr = kmap_local_page(page);
-
-			clear_page(vaddr);
-			kunmap_local(vaddr);
+			clear_highpage(page);
 			/*
 			 * Avoid wasting time zeroing memory if the process
 			 * has been killed by SIGKILL.

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

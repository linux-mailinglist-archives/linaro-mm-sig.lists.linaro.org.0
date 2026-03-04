Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKKgCAMg4Wl0pQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:44:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FA74132A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:44:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8165F45DDC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:33 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 945BA3F751
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2026 00:25:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oaeP7KnT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of linusw@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=linusw@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 03B9E403E4;
	Wed,  4 Mar 2026 00:25:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 056CDC116C6;
	Wed,  4 Mar 2026 00:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772583909;
	bh=HeaohDIlgya71qEyi4Ax5lfXmfxcDbpMvfs/QKVJz1A=;
	h=From:Date:Subject:To:Cc:From;
	b=oaeP7KnTXcb8bhjfsex4+qPuAx+uX8yt3/u3rqEsDjTZNM8jWPKmjPxV6ihXBnBlz
	 gvKSYnpbKJowxWM/2Y6l8YptsLXCsrxiiOScVJeOIhMpIVumwOl4xjX6Ikrlu2QnGO
	 fbkwuroENvTFHY4lMGvd3HQONo+v0/mmkzaGrT95vb7Bg/CaCkYZRVblazc1zFjXxQ
	 YbeRSF8D28zsPmtS+9KdCtCjcsgcLCY6fwOihXqMIVr66EBhI6d+bhoqw/3EwH7Q2D
	 +AY4qpGsXQ5NrsHGe/bZbFZxIZ+6F/WF2/XtdP6JP4kAt9heEIvBNtSMVeqQ/0NpPu
	 yX87OwUL10kPQ==
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 04 Mar 2026 01:25:05 +0100
MIME-Version: 1.0
Message-Id: <20260304-cma-heap-clear-pages-v1-1-6ff59da716d3@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MywqAIBBA0V+JWTdg2YP6lWgx2JgDPUQhAvHfk
 5ZncW+CyEE4wlwlCPxIlPsqaOoKjKNrZ5StGFrVDkorjeYkdEwezcEU0NPOEftOWU1msqPuoKQ
 +sJX33y5rzh8T92GNZgAAAA==
X-Change-ID: 20260303-cma-heap-clear-pages-540f3ac9f734
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
Message-ID-Hash: JY4YWAM3TEGMMYNTO3KCUO5COVMT7D3N
X-Message-ID-Hash: JY4YWAM3TEGMMYNTO3KCUO5COVMT7D3N
X-Mailman-Approved-At: Thu, 16 Apr 2026 17:00:30 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Linus Walleij <linusw@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Clear CMA pages with clear_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JY4YWAM3TEGMMYNTO3KCUO5COVMT7D3N/>
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
	DATE_IN_PAST(1.00)[1049];
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
	NEURAL_HAM(-0.00)[-0.990];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: B7FA74132A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As of commit 62a9f5a85b98
"mm: introduce clear_pages() and clear_user_pages()" we can
clear a range of pages with a potentially assembly-optimized
call.

Instead of using a memset, use this helper to clear the whole
range of pages from the CMA allocation.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 drivers/dma-buf/heaps/cma_heap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
index bd3370b9a3f6..f0bacf25ed9d 100644
--- a/drivers/dma-buf/heaps/cma_heap.c
+++ b/drivers/dma-buf/heaps/cma_heap.c
@@ -343,7 +343,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
 			nr_clear_pages--;
 		}
 	} else {
-		memset(page_address(cma_pages), 0, size);
+		clear_pages(page_address(cma_pages), pagecount);
 	}
 
 	buffer->pages = kmalloc_objs(*buffer->pages, pagecount);

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260303-cma-heap-clear-pages-540f3ac9f734

Best regards,
-- 
Linus Walleij <linusw@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

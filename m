Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMfzGl9f5mkWvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0622B430DB8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB507404F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:07:14 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 03B053F910
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 08:53:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YBz3fBCf;
	spf=pass (lists.linaro.org: domain of linusw@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=linusw@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6B1CB40E41;
	Tue, 10 Mar 2026 08:53:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 771DDC2BC86;
	Tue, 10 Mar 2026 08:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773132798;
	bh=79cV/JB6Zd90pNMWKP3NtKHRH1pVizulvRVpEWnwiw8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YBz3fBCfWY5AuQ9JJ3fdy4ChYCta8JCJbDm0ACVmQJPwGdgDfonDHM0esw92TQ50Y
	 rSb42pG8INyI+DWIq+i98qGvxotT/PBR52MmZUum+DObqJwiWO7e0n3iS1cJXzhc+8
	 A1BOd4hdrlkzZ+L6LlnSbzjHTrihsTH+2JuvgbwxOQvLPTR/ULqbhW38qEnetklzON
	 521Hwco+GzkS72S0q+HFC+JgsySttzjiSozpmxv3am958hAqfa2dH3M8X4yINGvZfu
	 Ftd4mckHZk4O4p01h89jTnJI3HSTlCXLuk95BmaVwylElaC8qzEFeWSpjaP1jakVS7
	 1lXz5OkCeudOw==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 10 Mar 2026 09:53:11 +0100
MIME-Version: 1.0
Message-Id: <20260310-cma-heap-clear-pages-v2-1-ecbbed3d7e6d@kernel.org>
References: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
In-Reply-To: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Spamd-Bar: -----
X-MailFrom: linusw@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P2YELBWIUKX3LY4U5MX4O4DWM5BLCQ5E
X-Message-ID-Hash: P2YELBWIUKX3LY4U5MX4O4DWM5BLCQ5E
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:06:32 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Linus Walleij <linusw@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/2] dma-buf: heaps: Clear CMA pages with clear_pages()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P2YELBWIUKX3LY4U5MX4O4DWM5BLCQ5E/>
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
X-Rspamd-Queue-Id: 0622B430DB8
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

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

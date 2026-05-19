Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAWJODpBDGq4bwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:53:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BF757CEC1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:53:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 787E7406F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:53:45 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id E74B94069A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 06:24:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CD2v9CJp;
	spf=pass (lists.linaro.org: domain of jszhang@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=jszhang@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3944943D36;
	Tue, 19 May 2026 06:24:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A715C2BCB3;
	Tue, 19 May 2026 06:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171879;
	bh=VcUrD//oUZnQvql1wMIPcTSBy0GWQBFqjz1wAD1jEJo=;
	h=From:To:Cc:Subject:Date:From;
	b=CD2v9CJpTSarRp+GoMDt5TQdmsvn+jquUX8iP5O+RihoGx+qCzcVuYeeJEdNTZ3ty
	 W+0yvOKHtcYgzFZOJv/qT6OmNCusoneHcxOQyLx2ZAuLLNws9c3iynitrTAmIgNOwg
	 9i3rg7NUvdpiYmjXwTW33wFCPl74rCpt4xQEn2XaImN/pq14BeHagYSGR+RXjkO1Fc
	 IsO+8z0gfRUBD+oUYUX55L2+lcMwEal6SgQVY5XtKzEKNn1loAYz/I5NJHC9LehnBi
	 9NIdBlFvQEeQsVYEO3PB/ahPg43sJp/Q+a1+uLfSRmFUMAcBZ484IW9qG9uD4T2nOX
	 x1LZ4WKSgxkNg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T . J . Mercier" <tjmercier@google.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Tue, 19 May 2026 14:05:32 +0800
Message-ID: <20260519060532.13221-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spamd-Bar: --
X-MailFrom: jszhang@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AB6CGQARCPKFHDLAQWFM7AMJZGZ7XAHO
X-Message-ID-Hash: AB6CGQARCPKFHDLAQWFM7AMJZGZ7XAHO
X-Mailman-Approved-At: Tue, 19 May 2026 10:50:28 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: system_heap: Use LIST_HEAD() to initialize on stack list head
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AB6CGQARCPKFHDLAQWFM7AMJZGZ7XAHO/>
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
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-]
X-Rspamd-Queue-Id: 86BF757CEC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use LIST_HEAD to initialize on stack list head. No intentional
functional impact.

Change generated with below coccinelle script:

@@
identifier name;
@@
- struct list_head name;
+ LIST_HEAD(name);
... when != name
- INIT_LIST_HEAD(&name);

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 drivers/dma-buf/heaps/system_heap.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 03c2b87cb111..6f8b7138ff56 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -409,7 +409,7 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	struct dma_buf *dmabuf;
 	struct sg_table *table;
 	struct scatterlist *sg;
-	struct list_head pages;
+	LIST_HEAD(pages);
 	struct page *page, *tmp_page;
 	int i, ret = -ENOMEM;
 
@@ -423,7 +423,6 @@ static struct dma_buf *system_heap_allocate(struct dma_heap *heap,
 	buffer->len = len;
 	buffer->cc_shared = cc_shared;
 
-	INIT_LIST_HEAD(&pages);
 	i = 0;
 	while (size_remaining > 0) {
 		/*
-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECBC73C253
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jun 2023 23:15:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F44E3EC47
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jun 2023 21:15:48 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	by lists.linaro.org (Postfix) with ESMTPS id CA2E63F971
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jun 2023 21:15:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=inria.fr header.s=dc header.b=ibGdS6fG;
	spf=pass (lists.linaro.org: domain of Julia.Lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=Julia.Lawall@inria.fr;
	dmarc=pass (policy=none) header.from=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=v1C6X9Yx4yVXOAdKb8gSIcJ1cJexwLFD0Mhp8hyTXpM=;
  b=ibGdS6fGsGhc/uttTGaoiJpbUVLv1dQE53RQlyqWPi8I8jYsjA4QPhsG
   69vuLyA1lvbPNf9DFQ9xV+59969GQRIT64vAPf+BtV5VoJBI5MAp5KGAg
   4j/AIfruYXqvPQ99dB1Q5fqTn+WPSuJXNvhdtCBICTm1jBC06qptZY2WA
   c=;
X-IronPort-AV: E=Sophos;i="6.01,153,1684792800";
   d="scan'208";a="59686164"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2023 23:15:10 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Sumit Semwal <sumit.semwal@linaro.org>
Date: Fri, 23 Jun 2023 23:14:37 +0200
Message-Id: <20230623211457.102544-7-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230623211457.102544-1-Julia.Lawall@inria.fr>
References: <20230623211457.102544-1-Julia.Lawall@inria.fr>
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[inria.fr,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.134.164.0/24:c];
	R_DKIM_ALLOW(-0.20)[inria.fr:s=dc];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[192.134.164.104:from];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[inria.fr:+];
	ASN(0.00)[asn:2200, ipnet:192.134.164.0/24, country:FR];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CA2E63F971
X-Spamd-Bar: --
Message-ID-Hash: BGUAVHQLRFEFJ53NXSXGXS57D7IARR2D
X-Message-ID-Hash: BGUAVHQLRFEFJ53NXSXGXS57D7IARR2D
X-MailFrom: Julia.Lawall@inria.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: keescook@chromium.org, kernel-janitors@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 06/26] dma-buf: system_heap: use array_size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BGUAVHQLRFEFJ53NXSXGXS57D7IARR2D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use array_size to protect against multiplication overflows.

The changes were done using the following Coccinelle semantic patch:

// <smpl>
@@
    size_t e1,e2;
    expression COUNT;
    identifier alloc = {vmalloc,vzalloc,kvmalloc,kvzalloc};
@@

(
      alloc(
-           (e1) * (e2)
+           array_size(e1, e2)
      ,...)
|
      alloc(
-           (e1) * (COUNT)
+           array_size(COUNT, e1)
      ,...)
)
// </smpl>

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/dma-buf/heaps/system_heap.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index ee7059399e9c..fb7867599874 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -221,7 +221,7 @@ static void *system_heap_do_vmap(struct system_heap_buffer *buffer)
 {
 	struct sg_table *table = &buffer->sg_table;
 	int npages = PAGE_ALIGN(buffer->len) / PAGE_SIZE;
-	struct page **pages = vmalloc(sizeof(struct page *) * npages);
+	struct page **pages = vmalloc(array_size(npages, sizeof(struct page *)));
 	struct page **tmp = pages;
 	struct sg_page_iter piter;
 	void *vaddr;

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

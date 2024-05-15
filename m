Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DB01F8C6804
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 15:58:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDD4D40074
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 13:58:33 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 28F3544843
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 13:57:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tOp4lR8X;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C501F614C8;
	Wed, 15 May 2024 13:57:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18B28C116B1;
	Wed, 15 May 2024 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715781471;
	bh=WlatdzDn5ln9onnNggxk+fyl1HpLY51fWYKvzy2mHOg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=tOp4lR8Xi9y7SXrlPN4RRDtbbEihJDZsXFsYuT50HqukD2dqQDCKdRN12/0+EMRKb
	 4GxcHkEYYQwNTs55WBFKc3l8txKL7m7sWXy58yR6ih2EpH7fbVOpRIbmJzLB6y7L43
	 z3tzAMtENCjfDLcFGgLMxefwVbI2x/Ra7oqPq5kA6UeMNjS2ontIRJ7DJYf23xlGTD
	 xRqA61OBzd3oV7HWy8to7fJOtP3opiZ9MdMxQw1dt2zDLuA0DQztG0HIZC/g1962Us
	 k5i+gtEJav11An/G8O6Hb/Kv3zajjRErguxEBm1vDSs9KJn7+vjtGWzAjdYB9tbZ1E
	 XDf25KvPwtkxA==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 15 May 2024 15:56:58 +0200
MIME-Version: 1.0
Message-Id: <20240515-dma-buf-ecc-heap-v1-3-54cbbd049511@kernel.org>
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
In-Reply-To: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=758; i=mripard@kernel.org;
 h=from:subject:message-id; bh=WlatdzDn5ln9onnNggxk+fyl1HpLY51fWYKvzy2mHOg=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGku+/3e/CltXrZHt3vnu0l/DhuoJs0MtQxoT13VdKcst
 2F5oU55x1QWBmFOBlkxRZYnMmGnl7cvrnKwX/kDZg4rE8gQBi5OAZjI9cmMDY8aVp+d+WfjezXZ
 BxK7Ww+09n27yvEt6mCamVPDJU9H0ef93XVdB32ttZZOu7j37cmVVxnrPdJ8JPqMt8d3xXZP5t7
 xT1xa/dZ8lb1mKvf895zO+z7ZtenGhg5hzzuPwsUUkhKear4GAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 28F3544843
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: YMFAFCM4C633YAVCJZOZMZTOMTQXJ67V
X-Message-ID-Hash: YMFAFCM4C633YAVCJZOZMZTOMTQXJ67V
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/8] dma-buf: heaps: Import uAPI header
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YMFAFCM4C633YAVCJZOZMZTOMTQXJ67V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The uAPI header has a bunch of constants and structures that might be
handy in drivers.

Let's include the header in the driver-side dma-heap header.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/linux/dma-heap.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/dma-heap.h b/include/linux/dma-heap.h
index 0c05561cad6e..e7cf110c5fdc 100644
--- a/include/linux/dma-heap.h
+++ b/include/linux/dma-heap.h
@@ -10,10 +10,12 @@
 #define _DMA_HEAPS_H
 
 #include <linux/cdev.h>
 #include <linux/types.h>
 
+#include <uapi/linux/dma-heap.h>
+
 struct dma_heap;
 
 /**
  * struct dma_heap_ops - ops to operate on a given heap
  * @allocate:		allocate dmabuf and return struct dma_buf ptr

-- 
2.44.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

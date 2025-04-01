Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (unknown [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3094EA77ED8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 17:25:55 +0200 (CEST)
Received: from server-108-138-64-117.iad12.r.cloudfront.net (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 554BE43F6B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 15:25:54 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id E92D643B8C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 15:24:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Hr8lUFde;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 661B144DF6;
	Tue,  1 Apr 2025 15:12:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CA2EC4CEE9;
	Tue,  1 Apr 2025 15:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743520356;
	bh=27MxOwa0fmEfX/9H4+tLla6KG4vQ8w1k90H6/5GWbIg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Hr8lUFdexJsRLQMvm29VTlAGCQO0L1pZLvDlAwjxZ4bpErfqzIpjLBq2OtOXxzRh9
	 VFBC7Opxicgqb6+hrI0Y/HxJapJuGmLLJ9TGRvNGkwkQqnIz4BO8mMFMw++YK4hbJW
	 o6PIJhEo05AWLoAdMyGcdIBi9BBqEr6CzCVmGDWVLCFpaHiu0Bs276XRKu97e1VgCB
	 atGqBUF5fCLolrotK3MCo0KjkWouPGlD6hl4n4kqI7pFmXBUNzNcVotkL0bbPyYwEl
	 SWq0xGv3MDWv08TASTLKCqNWi48TWDmdk5xuuykpkFnBPcJHhlIho8dIaG0DckpUhV
	 bN9rth5Lj2aIg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 01 Apr 2025 17:12:21 +0200
MIME-Version: 1.0
Message-Id: <20250401-dma-buf-ecc-heap-v2-1-043fd006a1af@kernel.org>
References: <20250401-dma-buf-ecc-heap-v2-0-043fd006a1af@kernel.org>
In-Reply-To: <20250401-dma-buf-ecc-heap-v2-0-043fd006a1af@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1768; i=mripard@kernel.org;
 h=from:subject:message-id; bh=27MxOwa0fmEfX/9H4+tLla6KG4vQ8w1k90H6/5GWbIg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOlvmCKKlxsyzbi2ILc0RZkjiSUqyWlmZ6HH8/Jalmvej
 Vu3HC/tKGVhEONikBVTZIkRNl8Sd2rW6042vnkwc1iZQIYwcHEKwEQWCzMyLHeP6tMWm3gqIU5A
 UbhhDs/yqbXrpDjCDqULiC5quRJ8gOF/uaKY3q+X4RlO8p3brr/5UuO2eduaf2vilOfuWLKNSz2
 IFwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E92D643B8C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[172.234.252.31:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[15];
	ASN(0.00)[asn:20940, ipnet:172.232.0.0/13, country:NL];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: WU7JX4ZLWGSYXHMWHSZ3A4GXEGJ3DYGD
X-Message-ID-Hash: WU7JX4ZLWGSYXHMWHSZ3A4GXEGJ3DYGD
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/2] dma-buf: heaps: system: Remove global variable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WU7JX4ZLWGSYXHMWHSZ3A4GXEGJ3DYGD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The system heap has been using its struct dma_heap pointer but wasn't
using it anywhere.

Since we'll need additional parameters to attach to that heap type,
let's create a private structure and set it as the dma_heap drvdata,
removing the global variable in the process.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/system_heap.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 26d5dc89ea1663a0d078e3a5723ca3d8d12b935f..adf422eaa33a52794f952d9d4260b8743d37f421 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -19,11 +19,13 @@
 #include <linux/module.h>
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 
-static struct dma_heap *sys_heap;
+struct system_heap {
+	struct dma_heap *heap;
+};
 
 struct system_heap_buffer {
 	struct dma_heap *heap;
 	struct list_head attachments;
 	struct mutex lock;
@@ -422,17 +424,22 @@ static const struct dma_heap_ops system_heap_ops = {
 };
 
 static int __init system_heap_create(void)
 {
 	struct dma_heap_export_info exp_info;
+	struct system_heap *sys_heap;
+
+	sys_heap = kzalloc(sizeof(*sys_heap), GFP_KERNEL);
+	if (!sys_heap)
+		return -ENOMEM;
 
 	exp_info.name = "system";
 	exp_info.ops = &system_heap_ops;
-	exp_info.priv = NULL;
+	exp_info.priv = sys_heap;
 
-	sys_heap = dma_heap_add(&exp_info);
-	if (IS_ERR(sys_heap))
-		return PTR_ERR(sys_heap);
+	sys_heap->heap = dma_heap_add(&exp_info);
+	if (IS_ERR(sys_heap->heap))
+		return PTR_ERR(sys_heap->heap);
 
 	return 0;
 }
 module_init(system_heap_create);

-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

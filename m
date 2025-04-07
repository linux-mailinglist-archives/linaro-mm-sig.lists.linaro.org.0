Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA79FA7E676
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 18:29:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D97FB448CE
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Apr 2025 16:29:47 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 69E1844B41
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Apr 2025 16:29:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=AQsLiNZG;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5A0856115E;
	Mon,  7 Apr 2025 16:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 308BCC4CEDD;
	Mon,  7 Apr 2025 16:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744043357;
	bh=1C6ZG4gfgRFuD1fnDCAECEFIYkJtuil+Y06ILcKyW2w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AQsLiNZG/aTcU5wR1SppHAaRoPsJR5YqBvb6TuYXJ2uVPu7NGp0BDKwIrkrkpfdNC
	 ceYII2Vjr4+Kr3yjC004BakBTHAGYHQvYPCBM+cpW0IbQ8NsAAG+TQpyHZu5oX9xm2
	 1V+UR7mvuWjxituJb/1ZzKFWzdJ7vrTYiWynUf9YzHZrfm6GISoVeWlAVrjKdB48vK
	 z30n58TD1LiH0ZPvWSB2zxq6wOVPXDqowpyObOGTIcJ0GyxBMs0N7C7J0fphLcrcsZ
	 aBFEcBRXnX7EdktV8EbLDXpGbtUjYYZXbqREVvrUoPNYavd2XXox8REKcg7EqaiijJ
	 RnNyGcBXlCFkQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 07 Apr 2025 18:29:07 +0200
MIME-Version: 1.0
Message-Id: <20250407-dma-buf-ecc-heap-v3-1-97cdd36a5f29@kernel.org>
References: <20250407-dma-buf-ecc-heap-v3-0-97cdd36a5f29@kernel.org>
In-Reply-To: <20250407-dma-buf-ecc-heap-v3-0-97cdd36a5f29@kernel.org>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1239; i=mripard@kernel.org;
 h=from:subject:message-id; bh=1C6ZG4gfgRFuD1fnDCAECEFIYkJtuil+Y06ILcKyW2w=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDOmf/4bdZdK44HYnfHtItur/6tT3ezpkQ6dWfPh9KT3YT
 mlf8conHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZiIzmVGhllKEyIVeDf03Z+1
 /kPhlasbTp3w3vrIgENgdZPDpufWT5YyMuzO375gd93Hq7fTzv97zfPxRum8a2x7ti39/nsrR1v
 CwTXsAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Rspamd-Queue-Id: 69E1844B41
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	RBL_SENDERSCORE_REPUT_9(-1.00)[172.105.4.254:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZQMACM5RLVBRPI35QFUTFAE4H652RY55
X-Message-ID-Hash: ZQMACM5RLVBRPI35QFUTFAE4H652RY55
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mattijs Korpershoek <mkorpershoek@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 1/2] dma-buf: heaps: system: Remove global variable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZQMACM5RLVBRPI35QFUTFAE4H652RY55/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The system heap is storing its struct dma_heap pointer in a global
variable but isn't using it anywhere.

Let's move the global variable into system_heap_create() to make it
local.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/heaps/system_heap.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
index 26d5dc89ea1663a0d078e3a5723ca3d8d12b935f..82b1b714300d6ff5f3e543059dd8215ceaa00c69 100644
--- a/drivers/dma-buf/heaps/system_heap.c
+++ b/drivers/dma-buf/heaps/system_heap.c
@@ -19,12 +19,10 @@
 #include <linux/module.h>
 #include <linux/scatterlist.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 
-static struct dma_heap *sys_heap;
-
 struct system_heap_buffer {
 	struct dma_heap *heap;
 	struct list_head attachments;
 	struct mutex lock;
 	unsigned long len;
@@ -422,10 +420,11 @@ static const struct dma_heap_ops system_heap_ops = {
 };
 
 static int __init system_heap_create(void)
 {
 	struct dma_heap_export_info exp_info;
+	struct dma_heap *sys_heap;
 
 	exp_info.name = "system";
 	exp_info.ops = &system_heap_ops;
 	exp_info.priv = NULL;
 

-- 
2.49.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5958C91C0
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 May 2024 19:47:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC2024439E
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 May 2024 17:47:34 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-19.smtpout.orange.fr [80.12.242.19])
	by lists.linaro.org (Postfix) with ESMTPS id 0B0BD3EC0D
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 May 2024 17:47:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=wanadoo.fr header.s=t20230301 header.b=Gkmlorq0;
	spf=pass (lists.linaro.org: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.19 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
	dmarc=pass (policy=quarantine) header.from=wanadoo.fr
Received: from localhost.localdomain ([86.243.17.157])
	by smtp.orange.fr with ESMTPA
	id 8O9WsISRlQOWM8O9Wsvlrw; Sat, 18 May 2024 19:47:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1716054448;
	bh=UcEQtuE56kOs4tsCCaoGQju/nr916DkGkkvfsJQQWpE=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=Gkmlorq0ugnc3zwFK8MZXPXZN6UPrE4zoMggZlvYunBiE3Ya9e77/9iN42aea/llF
	 i0xDwilOiIdEMFCvThSIkDJZ7QvIjr3McGuJW8B88QtXyrOCZLLarSyueStalElclH
	 ZPGMZd+jIRp9PjU0eKNagNwvQE2vN5fDbpiXZ0vd1IlxWaj0dwmf3kcpb/efD4iFmo
	 YsTFu+Nue9te4ci0k8UX/6yoEpqIg4gNQu5+YYtq7Yy4nawOlBpQ2zGKiKKyWcaXax
	 7WUoKAeRShDUyHoWYIGECREk+9owyMgEcnQHJ8TOrDEzB46iYIDwhIPDQAcTRjiYCZ
	 ohxtGOqC2C6DQ==
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 18 May 2024 19:47:28 +0200
X-ME-IP: 86.243.17.157
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Date: Sat, 18 May 2024 19:47:02 +0200
Message-ID: <d3204a5b4776553455c2cfb1def72f1dae0dba25.1716054403.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0B0BD3EC0D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[wanadoo.fr,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:80.12.242.0/25];
	R_DKIM_ALLOW(-0.20)[wanadoo.fr:s=t20230301];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[smtp.smtpout.orange.fr:helo];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[wanadoo.fr];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,wanadoo.fr,lists.freedesktop.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[80.12.242.19:from];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:3215, ipnet:80.12.240.0/20, country:FR];
	DKIM_TRACE(0.00)[wanadoo.fr:+];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_ENVFROM(0.00)[wanadoo.fr];
	FROM_HAS_DN(0.00)[]
Message-ID-Hash: 5BRDML33YS7EPNAVAOSMPXGTTQO7FLZ2
X-Message-ID-Hash: 5BRDML33YS7EPNAVAOSMPXGTTQO7FLZ2
X-MailFrom: christophe.jaillet@wanadoo.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf/fence-array: Add flex array to struct dma_fence_array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5BRDML33YS7EPNAVAOSMPXGTTQO7FLZ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is an effort to get rid of all multiplications from allocation
functions in order to prevent integer overflows [1][2].

The "struct dma_fence_array" can be refactored to add a flex array in order
to have the "callback structures allocated behind the array" be more
explicit.

Do so:
   - makes the code more readable and safer.
   - allows using __counted_by() for additional checks
   - avoids some pointer arithmetic in dma_fence_array_enable_signaling()

Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments [1]
Link: https://github.com/KSPP/linux/issues/160 [2]
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Compile tested only.

Also, I don't think that 'cb' is a great name and the associated kernel-doc
description could certainly be improved.
Any proposal welcomed :)
---
 drivers/dma-buf/dma-fence-array.c | 10 ++++------
 include/linux/dma-fence-array.h   |  3 +++
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
index 9b3ce8948351..9c55afaca607 100644
--- a/drivers/dma-buf/dma-fence-array.c
+++ b/drivers/dma-buf/dma-fence-array.c
@@ -70,7 +70,7 @@ static void dma_fence_array_cb_func(struct dma_fence *f,
 static bool dma_fence_array_enable_signaling(struct dma_fence *fence)
 {
 	struct dma_fence_array *array = to_dma_fence_array(fence);
-	struct dma_fence_array_cb *cb = (void *)(&array[1]);
+	struct dma_fence_array_cb *cb = array->cb;
 	unsigned i;
 
 	for (i = 0; i < array->num_fences; ++i) {
@@ -168,22 +168,20 @@ struct dma_fence_array *dma_fence_array_create(int num_fences,
 					       bool signal_on_any)
 {
 	struct dma_fence_array *array;
-	size_t size = sizeof(*array);
 
 	WARN_ON(!num_fences || !fences);
 
-	/* Allocate the callback structures behind the array. */
-	size += num_fences * sizeof(struct dma_fence_array_cb);
-	array = kzalloc(size, GFP_KERNEL);
+	array = kzalloc(struct_size(array, cb, num_fences), GFP_KERNEL);
 	if (!array)
 		return NULL;
 
+	array->num_fences = num_fences;
+
 	spin_lock_init(&array->lock);
 	dma_fence_init(&array->base, &dma_fence_array_ops, &array->lock,
 		       context, seqno);
 	init_irq_work(&array->work, irq_dma_fence_array_work);
 
-	array->num_fences = num_fences;
 	atomic_set(&array->num_pending, signal_on_any ? 1 : num_fences);
 	array->fences = fences;
 
diff --git a/include/linux/dma-fence-array.h b/include/linux/dma-fence-array.h
index ec7f25def392..a793f9d5c73b 100644
--- a/include/linux/dma-fence-array.h
+++ b/include/linux/dma-fence-array.h
@@ -33,6 +33,7 @@ struct dma_fence_array_cb {
  * @num_pending: fences in the array still pending
  * @fences: array of the fences
  * @work: internal irq_work function
+ * @cb: array of callback helpers
  */
 struct dma_fence_array {
 	struct dma_fence base;
@@ -43,6 +44,8 @@ struct dma_fence_array {
 	struct dma_fence **fences;
 
 	struct irq_work work;
+
+	struct dma_fence_array_cb cb[] __counted_by(num_fences);
 };
 
 /**
-- 
2.45.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

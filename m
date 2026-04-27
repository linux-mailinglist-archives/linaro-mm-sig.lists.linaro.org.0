Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBCCLyIa8mljnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:48:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F90449629D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:47:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69758401C1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:47:53 +0000 (UTC)
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	by lists.linaro.org (Postfix) with ESMTPS id B3CFB40178
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 21:27:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.dev header.s=key1 header.b="ig/N7rOx";
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (lists.linaro.org: domain of thorsten.blum@linux.dev designates 91.218.175.177 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1777325265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hueLhtL3zsdmdXnMtuPrauJ8fkjBDESO/03aEH4/H2E=;
	b=ig/N7rOxAjR6yFr0Jkkz+z60oppTfibLQOzEKI/nc4RCoJvJZ5ASDIIR5H8umv+wM5kMCn
	LBqhZcPbIsgZfg5y2Q+zwXzqwRjcKAjI7v9HZI2TzUziDgej15Ve5xV+cw0AG2gxVco0TN
	LTb/eiIzYFH3p5rCtq6nlhlbzImvnIM=
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Mon, 27 Apr 2026 23:24:56 +0200
Message-ID: <20260427212454.420004-3-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1175; i=thorsten.blum@linux.dev; h=from:subject; bh=2Qy1bhZE4ZUxVczuVFGuB6tJXixNg2z/25mUfsiG6bg=; b=owGbwMvMwCUWt7pQ4caZUj3G02pJDJnvr6ht3b0sQqfy14Ly09nCLzf+1VQtz7oVwrXO/n8X3 /bfb6/0dpSyMIhxMciKKbI8mPVjhm9pTeUmk4idMHNYmUCGMHBxCsBElk9k+CvQvddeYz6vfuWJ +ft+GhcWbjd3TekvymXw/Xf30FJHkz0M/xS1BD5HyN83PscmILv89kN9g8wHHxjfZ5j17PQ6rBH WxgoA
X-Developer-Key: i=thorsten.blum@linux.dev; a=openpgp; fpr=1D60735E8AEF3BE473B69D84733678FD8DFEEAD4
X-Migadu-Flow: FLOW_OUT
X-Spamd-Bar: --
X-MailFrom: thorsten.blum@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SJKPTLKLXERPVYAC73PCBQ5PA5RJBFDN
X-Message-ID-Hash: SJKPTLKLXERPVYAC73PCBQ5PA5RJBFDN
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:29:26 +0000
CC: Thorsten Blum <thorsten.blum@linux.dev>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: heaps: use max3() in dma_heap_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SJKPTLKLXERPVYAC73PCBQ5PA5RJBFDN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7F90449629D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.59 / 15.00];
	R_DKIM_REJECT(1.00)[linux.dev:s=key1];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[41];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:-];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[thorsten.blum@linux.dev,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.895];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]

Replace two nested max() calls with a single max3() in dma_heap_ioctl().

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
Changes in v2:
- Include minmax.h as suggested by T.J. Mercier
- v1: https://lore.kernel.org/lkml/20260427172519.417333-3-thorsten.blum@linux.dev/
---
 drivers/dma-buf/dma-heap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index ac5f8685a649..d49188893608 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -13,6 +13,7 @@
 #include <linux/err.h>
 #include <linux/export.h>
 #include <linux/list.h>
+#include <linux/minmax.h>
 #include <linux/nospec.h>
 #include <linux/syscalls.h>
 #include <linux/uaccess.h>
@@ -153,7 +154,7 @@ static long dma_heap_ioctl(struct file *file, unsigned int ucmd,
 		in_size = 0;
 	if ((ucmd & kcmd & IOC_OUT) == 0)
 		out_size = 0;
-	ksize = max(max(in_size, out_size), drv_size);
+	ksize = max3(in_size, out_size, drv_size);
 
 	/* If necessary, allocate buffer for ioctl argument */
 	if (ksize > sizeof(stack_kdata)) {
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

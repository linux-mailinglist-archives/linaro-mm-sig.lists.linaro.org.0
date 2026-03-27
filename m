Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLcyIuNi5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F04AF43153E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F0EF54050E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:31:13 +0000 (UTC)
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	by lists.linaro.org (Postfix) with ESMTPS id 1DC473F8E9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 14:33:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=zohomail.com header.s=zm2022 header.b=RfM4V5cM;
	dmarc=pass (policy=reject) header.from=zohomail.com;
	spf=pass (lists.linaro.org: domain of ming.li@zohomail.com designates 136.143.188.94 as permitted sender) smtp.mailfrom=ming.li@zohomail.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1774622001; cv=none;
	d=zohomail.com; s=zohoarc;
	b=nUljK+qPzkYuVja+whhHMc0Zqr0M6hxb9rBEptKzX4J+TXATTg+him+nzPhHAAJIu01j9yl9Djb+lJzBFZxpO4DxtGZbBQkVrlKngZZQoCCS2pKaOP3qjzgtf0+Utw2rgzPvi4QUz+LBIi9MShCVWnXG5yooKLgW7ujckGeYHO0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1774622001; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=Y7oh+a8faCMP0nn2EAP8q8UOeOBQTSgBhDx/Ls2KJr4=;
	b=YkO5hHZW6oJ7/gKoZkW6uJtS/upBQLzMMVw28KuPslkHzh1MHK+Jx4rTCsi43ESCwVJ/g8py0VSHTSBJIykFTbsnA/hXx+tu3jbI8+fIBEHO1Lh5c8wSHzFxuIIBGUxsps7a2Qvl8a9O0jr/OWv1O1Q8vv0PBEPksas6uKcQePk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=ming.li@zohomail.com;
	dmarc=pass header.from=<ming.li@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774622001;
	s=zm2022; d=zohomail.com; i=ming.li@zohomail.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Feedback-ID:Reply-To;
	bh=Y7oh+a8faCMP0nn2EAP8q8UOeOBQTSgBhDx/Ls2KJr4=;
	b=RfM4V5cMNMR705uZ8k7dsBzmDifyma3junLIxjCSeWyrLgYMLhEy/kE+Bbc2KeCB
	paN+bvdUPe9E/s7S9pJ42af1fm+8012gTfIyRscrDu8hiukwXEjgaDsmLafYIEnOLI+
	tBV24CfyLNwhs+2Ww675A52Fi/cgwRG5erZX21kY=
Received: by mx.zohomail.com with SMTPS id 1774621998416686.6503783790713;
	Fri, 27 Mar 2026 07:33:18 -0700 (PDT)
From: Li Ming <ming.li@zohomail.com>
Date: Fri, 27 Mar 2026 22:33:12 +0800
MIME-Version: 1.0
Message-Id: <20260327-fix_dma_fence_chain_find_seqno-v1-1-60e80bfb43c8@zohomail.com>
X-B4-Tracking: v=1; b=H4sIACeVxmkC/x2NQQqEMBAEvyJz3kCMi4JfERmC6ezOwVETWATx7
 w57LOjquqiiCCqNzUUFP6myqUH7amj5Rv3ASTKm4EPvuzC4LCenNXKGLmDbiHIWTVxx6OaGmBD
 7NzJ8S3ayF5jxD0zzfT/Zd5u7cAAAAA==
X-Change-ID: 20260327-fix_dma_fence_chain_find_seqno-7adea64efe01
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774621995; l=1233;
 i=ming.li@zohomail.com; s=20260210; h=from:subject:message-id;
 bh=+zLhFjmQDcbbt7AWjLmj5y51IOac2tCxLouPPcLnI8s=;
 b=n+W96xE4botpec3dm4ZtmEfoa2crfqwYysFYGgIGPd40VUnYgxh6GUDVRA02g7GKPnyDIfZ3a
 px4khNDWLaaBfqUeciHdC5QYk3tNhwpvOgC0sEslcxLi0Jq0gaKY6Al
X-Developer-Key: i=ming.li@zohomail.com; a=ed25519;
 pk=JfhrdHjyYJMXt47Hy8d/fsqZuhGPD4Z3whV5lTfVvhE=
Feedback-ID: rr08011228940aa66380fa0d4b662a568400000d279bad22d5095ea3e85f9414054fc86fffc237db77815a9796:zu08011227ab6f83bf04d1505dc422a3a70000adc505029736d0771b9faea9619460ca47f63293d14ccafe3a:rf0801122d88732d6b5a5151da13656a3e00007c881f111584b5d382ba029be96c8375f169bebdf57c1d7ad2c58728b9fa40:ZohoMail
X-ZohoMailClient: External
X-Spamd-Bar: ----
X-MailFrom: ming.li@zohomail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J6BMWGRQAJ5XCLNLOZXTJN7OYXCLIQPX
X-Message-ID-Hash: J6BMWGRQAJ5XCLNLOZXTJN7OYXCLIQPX
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:53 +0000
CC: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Li Ming <ming.li@zohomail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fence: Dereference correct dma_fence in dma_fence_chain_find_seqno()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J6BMWGRQAJ5XCLNLOZXTJN7OYXCLIQPX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[zohomail.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[578];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	R_DKIM_REJECT(1.00)[zohomail.com:s=zm2022];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,zohomail.com];
	DKIM_TRACE(0.00)[zohomail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[ming.li@zohomail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: F04AF43153E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

dma_fence_chain_find_seqno() uses dma_fence_chain_for_each() to walk a
given dma_fence_chain. dma_fence_chain_for_each() always holds a
reference for the current fence during iteration. The reference must
be dropped after breaking out. Instead of dereferencing the last fence
as intended, dma_fence_chain_find_seqno() incorrectly dereferences the
first fence in the chain.

Fixes: 7bf60c52e093 ("dma-buf: add new dma_fence_chain container v7")
Signed-off-by: Li Ming <ming.li@zohomail.com>
---
 drivers/dma-buf/dma-fence-chain.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
index a8a90acf4f34..71fa173aef13 100644
--- a/drivers/dma-buf/dma-fence-chain.c
+++ b/drivers/dma-buf/dma-fence-chain.c
@@ -103,7 +103,7 @@ int dma_fence_chain_find_seqno(struct dma_fence **pfence, uint64_t seqno)
 		    to_dma_fence_chain(*pfence)->prev_seqno < seqno)
 			break;
 	}
-	dma_fence_put(&chain->base);
+	dma_fence_put(*pfence);
 
 	return 0;
 }

---
base-commit: c369299895a591d96745d6492d4888259b004a9e
change-id: 20260327-fix_dma_fence_chain_find_seqno-7adea64efe01

Best regards,
-- 
Li Ming <ming.li@zohomail.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

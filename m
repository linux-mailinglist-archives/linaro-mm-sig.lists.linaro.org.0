Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BiyD+ti5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4D431547
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC9653F70A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:31:21 +0000 (UTC)
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	by lists.linaro.org (Postfix) with ESMTPS id 69D4E3F7B3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Mar 2026 18:47:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=zohomail.com header.s=zm2022 header.b=TrdolQ4+;
	dmarc=pass (policy=reject) header.from=zohomail.com;
	spf=pass (lists.linaro.org: domain of ming.li@zohomail.com designates 136.143.188.94 as permitted sender) smtp.mailfrom=ming.li@zohomail.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
ARC-Seal: i=1; a=rsa-sha256; t=1774637264; cv=none;
	d=zohomail.com; s=zohoarc;
	b=Wa0Z53itwQFqASrzKx8rouFn/yL36+kjWbjuYLxvYg15Ec0p/u7DRq+EXAI8A1Fs4oCA267gwiZyfK7vuOAvGmTVdGumQbM17ythpYXPd4nEc1sBI7Zt/YHCoM3Cj6VEccYu/v8ZOnNT+5OUdRR/nvGFgLhc0tb+3Xe9H/28VoE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1774637264; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=Y7oh+a8faCMP0nn2EAP8q8UOeOBQTSgBhDx/Ls2KJr4=;
	b=mFu5RJfqmq8TW6AP01Jkd3/fYIzSKEqEv2aotQIzFEci0/6RPYRqO1INbwb+zGqkSk4HeeIUxXltJ7MmG/BrK0Oe+NxHMhOyFuqmjvn2Os+49LWaUxZIzasGtynoIfVjOhsdB53lUIWlIcSYNy7xNodp9D5theO/DMbBkiCpE6g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=ming.li@zohomail.com;
	dmarc=pass header.from=<ming.li@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774637264;
	s=zm2022; d=zohomail.com; i=ming.li@zohomail.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Feedback-ID:Reply-To;
	bh=Y7oh+a8faCMP0nn2EAP8q8UOeOBQTSgBhDx/Ls2KJr4=;
	b=TrdolQ4+1rO+JaByD0f/IPjIlmPfiouYzZCe/we3b/YH3rcNmJnb4b47PrV2INB4
	T4u9GlEacILLaMlo+porIHSCdZ/S6+h6hHYbQHXwSxn7nXcSEMz6t9ajNsvb0ZCO5m+
	V5St6yxmPuhoD96nPCwe8YKf2w7aw5yRuxKslb2Q=
Received: by mx.zohomail.com with SMTPS id 1774637262091797.4127866298093;
	Fri, 27 Mar 2026 11:47:42 -0700 (PDT)
From: Li Ming <ming.li@zohomail.com>
Date: Sat, 28 Mar 2026 02:47:24 +0800
MIME-Version: 1.0
Message-Id: <20260328-fix_dma_fence_chain_find_seqno-v1-1-3847c8ef0292@zohomail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774637259; l=1233;
 i=ming.li@zohomail.com; s=20260210; h=from:subject:message-id;
 bh=+zLhFjmQDcbbt7AWjLmj5y51IOac2tCxLouPPcLnI8s=;
 b=HFIUy3+KdDFXVMti/Ga/SxpCMQOaEDfvxnCIt8Wj8X+yVkCUbfSkpmZieZXXc00RDhKtIUJFF
 AK+F53ygqNLCK2Y1OKwgzSKCdvD+AAwqB3RUtIDzRal2eXT4qjI8hew
X-Developer-Key: i=ming.li@zohomail.com; a=ed25519;
 pk=JfhrdHjyYJMXt47Hy8d/fsqZuhGPD4Z3whV5lTfVvhE=
Feedback-ID: rr08011228b211dd271431ffbf402eaf1e0000b83e2267d51a1f7e34f210ea5ac143badbbdb7ca67a49d823375:zu0801122773f2ec82482f97e6caa0fb030000c3261d8540fa7ed02b3199d1d6543ffa4200911cde1f047276:rf0801122d2538852d2bc1da22113372b30000278184736ab56759343bdfb987b5b1873b0691eb11ba36abdbe3fcf81e8b24:ZohoMail
X-ZohoMailClient: External
X-Spamd-Bar: ----
X-MailFrom: ming.li@zohomail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TKQGSMEUVUUZ7B5HLFQRPAZPJ2BC6HJZ
X-Message-ID-Hash: TKQGSMEUVUUZ7B5HLFQRPAZPJ2BC6HJZ
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:54 +0000
CC: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Li Ming <ming.li@zohomail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RESEND] dma-fence: Dereference correct dma_fence in dma_fence_chain_find_seqno()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TKQGSMEUVUUZ7B5HLFQRPAZPJ2BC6HJZ/>
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
	DATE_IN_PAST(1.00)[574];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E9F4D431547
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

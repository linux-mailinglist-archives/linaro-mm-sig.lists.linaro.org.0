Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBQJLgBhBGq6HgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEB35324E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 13:31:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 926474043A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2026 11:31:11 +0000 (UTC)
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com [209.85.219.73])
	by lists.linaro.org (Postfix) with ESMTPS id 18DC13EC66
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 21:42:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=O+QxDXDI;
	spf=pass (lists.linaro.org: domain of 3VU0CaggKDVAFCwzs6zCy66y3w.u64305s96-44-A0y30ABA.305s96.69y@flex--xuehaohu.bounces.google.com designates 209.85.219.73 as permitted sender) smtp.mailfrom=3VU0CaggKDVAFCwzs6zCy66y3w.u64305s96-44-A0y30ABA.305s96.69y@flex--xuehaohu.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qv1-f73.google.com with SMTP id 6a1803df08f44-8acadca1ac4so126050666d6.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2026 14:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1778535765; x=1779140565; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yA1gek3HR3At3Q9DFaDVVLNqwF2oJxAWcK0srTpOdyw=;
        b=O+QxDXDIHLoDq3zf7B2h6ReFsYwVPZaaOXtYLgL+0jl2oe4buTb07cFEoDJpGCbKvo
         L1Mi2Z2LpKtKwxPU/6quaq4rD/FX+K+yTpMJ6rX9Hcr0PoHVpVJdOopKehS8YqqAaOo6
         ckyKWE1O3f1XOc0nYauXOETbmR+cHHKFVhZ5+4AWU9x6+VUF4BNJeK+tRk5+Ne46rDlM
         sPWXqZgqbJ1sHEg7YlPmByPghdFO9eRJMTwl8zYJbZ8/Uvy0DNXVkuPBymTdzK/qoEGZ
         WcIdhwzzZh1759UisUdXUfaEYdhV9NmuZVL1VEcOj/FxeyzcRutoOlmMB91vz0LNLIcD
         GBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778535765; x=1779140565;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yA1gek3HR3At3Q9DFaDVVLNqwF2oJxAWcK0srTpOdyw=;
        b=d2YcTqBPYC4eCknW4vQ9SNNNkVZikYlfmzYzcpgygXPejWiXmboRod7YI5cqzzGn8e
         SeLPqn/p1OhPfaKdVHmWnZA63JW3asS1+cgJF8tbS7H6uKSr3R0QW8Clox5suV123sye
         miSYOQ1opXo/V9Vb0jsWu7+SaYv3CMv4o5pTRlvfvcobJsW6dtGd0WRPVBvGYKPgZRSV
         pntnVm6PobUPHL7P0SQZnc157hPJ75QPm/rHbMCqHiPFECCHWoyVRqqm/Dc9RRVh6mSU
         FMWm6rESkMAemEkr/MvAGO4u0GlgVPMgEddEaWItfAdqumILfnOAF+TiWHSQkPUEGTNN
         RreQ==
X-Forwarded-Encrypted: i=1; AFNElJ8fxi2TLGWsauA2rCYG/UA5qH5tN2SWmON+ndRfR6IWsM6oHc1I0IVTJPOYu9Q+jXKcdSVgI7GVYlyxXp+P@lists.linaro.org
X-Gm-Message-State: AOJu0Yxw3546rS0QlLkag6PR0Zx7hM0KGezrRqL7imWRI6SMcMe6pavg
	BbX4CqMMhTDJWbst5mfptGaZggW+tceUo5TivuPaGKzpYfbxSpfsaoP3ZlcvC0gaqdclN9k60Z3
	bqdl6LgjB4o/o
X-Received: from qvbkd27.prod.google.com ([2002:a05:6214:401b:b0:8a2:c383:22e2])
 (user=xuehaohu job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6214:3f81:b0:89f:4a69:44b9 with SMTP id 6a1803df08f44-8c663f6deb2mr7250256d6.40.1778535765277;
 Mon, 11 May 2026 14:42:45 -0700 (PDT)
Date: Mon, 11 May 2026 21:42:43 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.563.g4f69b47b94-goog
Message-ID: <20260511214243.349487-1-xuehaohu@google.com>
From: David Hu <xuehaohu@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Bar: --
X-MailFrom: 3VU0CaggKDVAFCwzs6zCy66y3w.u64305s96-44-A0y30ABA.305s96.69y@flex--xuehaohu.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: N7SVYGCSH7VPG6KBZKSNQKTX6VTO7B2U
X-Message-ID-Hash: N7SVYGCSH7VPG6KBZKSNQKTX6VTO7B2U
X-Mailman-Approved-At: Wed, 13 May 2026 11:25:10 +0000
CC: Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Jason Gunthorpe <jgg@ziepe.ca>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com, David Hu <xuehaohu@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/N7SVYGCSH7VPG6KBZKSNQKTX6VTO7B2U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7DEB35324E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	DATE_IN_PAST(1.00)[37];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_HAM(-0.00)[-0.877];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Action: no action

In case MMIO size is bigger than 4G, and peer2peer
dma goes through host bridge, we trigger the code
path to assign total linked IVOA, greater than 4G
to mapped_len, and leading to a silent overflow

Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
Signed-off-by: David Hu <xuehaohu@google.com>
---
 drivers/dma-buf/dma-buf-mapping.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a..658064140357 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -95,7 +95,8 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
 					 size_t nr_ranges, size_t size,
 					 enum dma_data_direction dir)
 {
-	unsigned int nents, mapped_len = 0;
+	unsigned int nents = 0;
+	size_t mapped_len = 0;
 	struct dma_buf_dma *dma;
 	struct scatterlist *sgl;
 	dma_addr_t addr;
-- 
2.54.0.563.g4f69b47b94-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

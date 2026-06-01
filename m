Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKJXEtrkHWoPfwkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 22:00:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D6241624DA8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 22:00:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D41ED4098F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jun 2026 20:00:24 +0000 (UTC)
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com [209.85.222.202])
	by lists.linaro.org (Postfix) with ESMTPS id 479B34048C
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 20:00:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=JoP2F4X6;
	spf=pass (lists.linaro.org: domain of 3z-QdaggKDWgdaKNGUNaMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--xuehaohu.bounces.google.com designates 209.85.222.202 as permitted sender) smtp.mailfrom=3z-QdaggKDWgdaKNGUNaMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--xuehaohu.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qk1-f202.google.com with SMTP id af79cd13be357-91550eceb13so354922485a.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jun 2026 13:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780344016; x=1780948816; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=msbNDh9TiShw7R12hj6rcfm+XGYU44qZJxoBlWEONAk=;
        b=JoP2F4X6H7DVcoGUCIetVxZ57QSrAqTN5e8mTf1nvlQp3kqbfs+q4SOZhzjVK79ypF
         1NP90nNIa4pTSM06ypK4vHlI5QezFl1fG9r7RqM4fyF3aRK4zoyUGAttzk+qYEU6BkGG
         XTgsZYs/yNbm4JCzGeJ8NxwXTXXYBEFHH1r2B8Bl1g7A4NVjssAvnXiAzeV0wYH8FHFz
         VPfW5rhWU+PPNWN2VJstOS31yPGf1AezucAvKFl2BlY3dX6YSFJZ1E2lIB5vcuTRn1L/
         rgD/GtQ+cSY1rwSU4tNZYd4vvpUN0aC8M/3V1M6k5V5WeULj7qydkDIjnz6dvdA7Bzo3
         T/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780344016; x=1780948816;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=msbNDh9TiShw7R12hj6rcfm+XGYU44qZJxoBlWEONAk=;
        b=N4PP4XJ22kMDPbHwYY9mjgzt0hVhhU9TbOOR3Rg/ZVEIsHxqxgTyu2uNuScTJ97VcE
         D7lE2Txk5q+vxOUIYrgHA4qnPiWlyD7KkmtGUwqBIGOca5ODRBz1KT0ik9kC2hA90CmJ
         q54z+qrXbVa65c2W7rv8PLl1TwbDd+J/wnigcPYlzDFk6K8ymqru7BzeCM8BC6241CQ9
         jyYpD7SPn9ccNQuZk9Vov1c7tSDPVlfnYzas+yeKwXk7huUbxmO9lqePAR0d18XO0Yg1
         MRx0WUU5/Q1Xmovty5asCFAKkkN/85z+pD4kPHHfFS+WwDundt42PZuMhFEGRrmRtNB2
         te1A==
X-Forwarded-Encrypted: i=1; AFNElJ/e0NkEZJDToX/82Uoettay83N3w2dvCLARxxgMEg3TEOXfXJzCzdLnuRD5IBuLUOn0Skj1CFFBE29Nycd8@lists.linaro.org
X-Gm-Message-State: AOJu0Yy7r0csQ2m3tvN1uVHoHYln78sn6Y0xJRFPNmd/jdUlPbL7A5eF
	GjUFIP496nq5dVpnUJBV/BNzKwOO2KpWTDRtRDsOWKVN/0L0VLZPLKYdDdmMV8fimSh8FpF0gY1
	vNs91vJKntssy
X-Received: from qknxz25.prod.google.com ([2002:a05:620a:5e19:b0:910:b90:6ec6])
 (user=xuehaohu job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:620a:4612:b0:915:5930:94f1 with SMTP id af79cd13be357-91559309603mr1224141185a.47.1780344015096;
 Mon, 01 Jun 2026 13:00:15 -0700 (PDT)
Date: Mon,  1 Jun 2026 20:00:12 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.929.g9b7fa37559-goog
Message-ID: <20260601200012.3872274-1-xuehaohu@google.com>
From: David Hu <xuehaohu@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Bar: --
Message-ID-Hash: 4PGM75RKNT2Q2HERJ2IXLCAKTBIXEG63
X-Message-ID-Hash: 4PGM75RKNT2Q2HERJ2IXLCAKTBIXEG63
X-MailFrom: 3z-QdaggKDWgdaKNGUNaMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--xuehaohu.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, David Hu <xuehaohu@google.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4PGM75RKNT2Q2HERJ2IXLCAKTBIXEG63/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.99 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D6241624DA8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In case MMIO size is bigger than 4G and peer2peer DMA goes
through host bridge, we trigger a code path that assigns the
total linked IOVA (which is greater than 4G) to mapped_len.

Previously, `mapped_len` was declared as 32-bit `unsigned int`.
When accumulating `size_t` lengths, this leads to a silent wrap-around.
This truncation causes truncated lengths to be passed to functions
like `fill_sg_entry()`.

Fix this by changing `mapped_len` to `size_t` (64-bit). While
at it, fix similar potential overflow issues in `calc_sg_nents`
by using `size_t` for `nents` and checking against `UINT_MAX`
and using `unsigned int` for the loop iterator in `fill_sg_entry`
to match.

Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
Cc: stable@vger.kernel.org
Cc: iommu@lists.linux.dev
Reviewed-by: Pranjal Shrivastava <praan@google.com>
Signed-off-by: David Hu <xuehaohu@google.com>
---
Changes in v5:
 - Removed WARN_ON_ONCE from calc_sg_nents() to avoid log noise (Jason).
 - Added explicit check for `!nents` in dma_buf_phys_vec_to_sgt() to
   cleanly return -EINVAL on overflow (Jason).

Changes in v4:
 - Added WARN_ON_ONCE() to the nents overflow check to prevent silent
   failures (Claude Bot).

Changes in v3:
 - Removed leftover sentence fragment from the commit message.
 - Kept `nents = 0` initialization (previously stated as removed in the
   v2 changelog) as it is strictly required for the `+=` accumulation
   loop in `calc_sg_nents()`.

Changes in v2:
 - Fixed 'IVOA' -> 'IOVA' typo and expanded commit message (Claude Bot).
 - Added Reverse Xmas tree formatting (Pranjal).
 - Folded in extra bounds checking for calc_sg_nents() (Pranjal).
 - Folded in type consistency fix for fill_sg_entry() (Pranjal).

 drivers/dma-buf/dma-buf-mapping.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a..607b7998463d 100644
--- a/drivers/dma-buf/dma-buf-mapping.c
+++ b/drivers/dma-buf/dma-buf-mapping.c
@@ -10,7 +10,7 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
 					 dma_addr_t addr)
 {
 	unsigned int len, nents;
-	int i;
+	unsigned int i;
 
 	nents = DIV_ROUND_UP(length, UINT_MAX);
 	for (i = 0; i < nents; i++) {
@@ -36,7 +36,7 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
 				  struct phys_vec *phys_vec, size_t nr_ranges,
 				  size_t size)
 {
-	unsigned int nents = 0;
+	size_t nents = 0;
 	size_t i;
 
 	if (!state || !dma_use_iova(state)) {
@@ -51,6 +51,9 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
 		nents = DIV_ROUND_UP(size, UINT_MAX);
 	}
 
+	if (nents > UINT_MAX)
+		return 0;
+
 	return nents;
 }
 
@@ -95,9 +98,10 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
 					 size_t nr_ranges, size_t size,
 					 enum dma_data_direction dir)
 {
-	unsigned int nents, mapped_len = 0;
 	struct dma_buf_dma *dma;
 	struct scatterlist *sgl;
+	size_t mapped_len = 0;
+	unsigned int nents;
 	dma_addr_t addr;
 	size_t i;
 	int ret;
@@ -133,6 +137,11 @@ struct sg_table *dma_buf_phys_vec_to_sgt(struct dma_buf_attachment *attach,
 	}
 
 	nents = calc_sg_nents(dma->state, phys_vec, nr_ranges, size);
+	if (!nents) {
+		ret = -EINVAL;
+		goto err_free_state;
+	}
+
 	ret = sg_alloc_table(&dma->sgt, nents, GFP_KERNEL | __GFP_ZERO);
 	if (ret)
 		goto err_free_state;
-- 
2.54.0.929.g9b7fa37559-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

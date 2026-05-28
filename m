Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UE1sFLiUGGqDlQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 21:17:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE7C5F6F78
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 21:17:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FF1F406F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 19:17:10 +0000 (UTC)
Received: from mail-qt1-f201.google.com (mail-qt1-f201.google.com [209.85.160.201])
	by lists.linaro.org (Postfix) with ESMTPS id D90BC3F8F0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 19:17:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b="WZD/jqta";
	spf=pass (lists.linaro.org: domain of 3rZQYaggKDZAHEy1u81E08805y.w86527uB8-66-C2052CDC.527uB8.8B0@flex--xuehaohu.bounces.google.com designates 209.85.160.201 as permitted sender) smtp.mailfrom=3rZQYaggKDZAHEy1u81E08805y.w86527uB8-66-C2052CDC.527uB8.8B0@flex--xuehaohu.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f201.google.com with SMTP id d75a77b69052e-515224a8aa0so64276551cf.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 12:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779995821; x=1780600621; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ruTGaXcXn18lBWCvQSOsc+J+nN/WfLLq3tF9jPQMx3w=;
        b=WZD/jqta6CwXBInp6i4o72JZmZPHpRgUY4yPs3/W2S5WvUe6V+meW+aq2zZf137pck
         K1oh8OT7A95n69hwbSc/qzkkIXJ0WPIFvEsRl7RBEcgM7VE/jkCPlCRkhXUW2PT9RgYp
         Ht+UkBVbIU1+7GAO6vSdBFlaZNa3mOoPQNOdkQtSDb6QAGPMkXLRxeWo8EtD+fe19Pkd
         PmeL6/krzL6XUjfo+t09J2RAe562Q1AX3f6O90SdF0ByEcjum39ODdXI5RB5Th+If+Q+
         j1jbIy2wErtAAdumli4IyrpvNZqfUvFWM3yMAaSnmGy2NsFUSOOqfeC8qp4jF2xShefJ
         nYJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779995821; x=1780600621;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ruTGaXcXn18lBWCvQSOsc+J+nN/WfLLq3tF9jPQMx3w=;
        b=bxbuSI6u/ASq4KbuBUW2POH1tJrfngWgjm3L4DoeNnWDcU/oh5cyobZhrWEUJVxVSC
         YOoXiMyg33CSivYsikuaOeTdmgV9vxr13aUbsKnOesfHyaPXxhN2uw3GDCWg+FP7RpjF
         alCP7l0UT9j5ozwyN9CBRjveBgBgR8rT/yAmNCajSaeTcqb/V8DFOOZSdRlZupVQNk/Q
         pWQxzkTKLNY4LvgkPlTpFY0t0EocuaKrUtARfaA2aqZuMus5CbANnXkthXsDH1gktFFC
         nN5HpIdaHXiTYnm5W+cjh/JYnfNZk6p4U0mM2Qtmi+jEneCZVPxGZlpu7C5+n/X63Rtn
         l9eA==
X-Forwarded-Encrypted: i=1; AFNElJ+SCAlYt/B7Zi+KoGvEfXHlBI0XKk8lr0RonzzK5c9KP3RHDKJTPIeF8+8LvamuZefdsdHK1acLXaBygoIT@lists.linaro.org
X-Gm-Message-State: AOJu0Yz+i9rnRtQP9KXozvCVYyoysRERVcDU29a+vo82jZnGUNDYCIql
	/mNyqRbCeZ1t/U2U1vcppMvBFwgFjHx/67Z9IkB4jqBtreFJ7P0azxh9yBHLm3AYvrB8EHXL65A
	zG+6VUbgaSBFq
X-Received: from qtlo20.prod.google.com ([2002:ac8:4294:0:b0:50f:d8f5:705f])
 (user=xuehaohu job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:622a:4c8c:b0:516:e8aa:271 with SMTP id d75a77b69052e-5172cb95a12mr2327291cf.26.1779995821046;
 Thu, 28 May 2026 12:17:01 -0700 (PDT)
Date: Thu, 28 May 2026 19:16:58 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.929.g9b7fa37559-goog
Message-ID: <20260528191658.2506362-1-xuehaohu@google.com>
From: David Hu <xuehaohu@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Bar: --
Message-ID-Hash: DK5G3LVZWWLSVWNBASGRHIXSXC5OICR7
X-Message-ID-Hash: DK5G3LVZWWLSVWNBASGRHIXSXC5OICR7
X-MailFrom: 3rZQYaggKDZAHEy1u81E08805y.w86527uB8-66-C2052CDC.527uB8.8B0@flex--xuehaohu.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Jason Gunthorpe <jgg@ziepe.ca>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com, praan@google.com, David Hu <xuehaohu@google.com>, stable@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DK5G3LVZWWLSVWNBASGRHIXSXC5OICR7/>
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
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[google.com:-]
X-Rspamd-Queue-Id: CCE7C5F6F78
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

 drivers/dma-buf/dma-buf-mapping.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a..1aabc0ee70bb 100644
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
 
+	if (WARN_ON_ONCE(nents > UINT_MAX))
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
-- 
2.54.0.929.g9b7fa37559-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC/tMjZZF2oPBQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 22:51:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 695BE5EA363
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 22:51:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31991401C5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 May 2026 20:51:01 +0000 (UTC)
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com [209.85.219.73])
	by lists.linaro.org (Postfix) with ESMTPS id 405D93F6A0
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 20:50:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=swzMeFMl;
	spf=pass (lists.linaro.org: domain of 3KlkXaggKDZEIFz2v92F19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--xuehaohu.bounces.google.com designates 209.85.219.73 as permitted sender) smtp.mailfrom=3KlkXaggKDZEIFz2v92F19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--xuehaohu.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qv1-f73.google.com with SMTP id 6a1803df08f44-8ca122dade4so195086206d6.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 27 May 2026 13:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779915051; x=1780519851; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OnsOZAwcaFX6qrXTkZ3llO87kDjoRN0331vlXYrms0w=;
        b=swzMeFMlqU3wrDDhAk2kuzxS+eskDtSvsbBV6nwAcx/QVAzur68w/eL7RgeEzmwiW5
         xLfSN7iYU0xVFCMnVUJSdSgunb3+pxPyGPv15rsj1q7lp0oB3Zz7oXyCtxK0fBBaa5vo
         a568aV+ZDVLSIdu3zpBmgaqcAtIUa5omnftnTzL22Ypo1oPV9/Ro75u4XLvdholiIstv
         w2u984yomxhkd3q5QiFvXpSI2DPRXzZilPVjyV5tJfB8u0C07IeOofBy6syuMfeT+8vo
         YiIOFrgvFmjDuu7gHjxoarb+o4TOBjoIkGOYNomAQ/7RLzIthDJBaBStOkAI7LWxlP4K
         TowA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779915051; x=1780519851;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OnsOZAwcaFX6qrXTkZ3llO87kDjoRN0331vlXYrms0w=;
        b=Aj+NFn8U2nWfE2NVJzzrt5JKCJVHP+zvHw2KKGYzGmH2LnU+/cnZylrRkuLblGL8ck
         uFh199WXir/G2jFQvjoxHPnm64EcVFn2RxAE9WWWWSexljm+vF2WgbwcyDrC52BDlC2u
         xwTO1YawrTG7ZXqn2Z/fPwIgi8oIo8g8lXo3rm08CmTO6n4QHqSg23CJY/wj7rwmQyzZ
         WJE43C9uL0COsNnaGPsSkE15PrZG6/cM245BYj5E8POMA0NwHm7VYw7DSVKGUuW4STUK
         42CiKsjlV0wMonyo3ynfhj2PIovwEpHA0gqbjen5Tw6OD4vSESTL1Tup2O2rDoTP0KPu
         pf/g==
X-Forwarded-Encrypted: i=1; AFNElJ80EM3kGjURSLdR0sFYvlMppImMiivigG+EVF73Yjp1tj/KDOvBEYeI6mpckhs671xVPqaXDUqyj1CFmTcR@lists.linaro.org
X-Gm-Message-State: AOJu0YzozEw/PyqJXDEw3LvrosZfVyvK95wG12/TvA77iDZlsMRjPrAZ
	1OWhmGIgSekuvtvsas2WL9lDpk257ELMimfqA23R5Y86kxgg3BjPGhVnttAbN+KGnuCraZeCWfD
	+P6oVWESf9l6r
X-Received: from qviu6.prod.google.com ([2002:a0c:c486:0:b0:8cc:2486:6603])
 (user=xuehaohu job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6214:54ca:b0:8ac:b237:9fb5 with SMTP id 6a1803df08f44-8cc7b5fe0d8mr387104406d6.49.1779915050519;
 Wed, 27 May 2026 13:50:50 -0700 (PDT)
Date: Wed, 27 May 2026 20:50:47 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.794.g4f17f83d09-goog
Message-ID: <20260527205048.2168808-1-xuehaohu@google.com>
From: David Hu <xuehaohu@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Bar: --
Message-ID-Hash: HGPLFMFUQKRL5WUJTCVXURJCF5D4PMQ5
X-Message-ID-Hash: HGPLFMFUQKRL5WUJTCVXURJCF5D4PMQ5
X-MailFrom: 3KlkXaggKDZEIFz2v92F19916z.x97638vC9-77-D3163DED.638vC9.9C1@flex--xuehaohu.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Jason Gunthorpe <jgg@ziepe.ca>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com, praan@google.com, leonro@nvidia.com, David Hu <xuehaohu@google.com>, stable@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HGPLFMFUQKRL5WUJTCVXURJCF5D4PMQ5/>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,linaro.org:email]
X-Rspamd-Queue-Id: 695BE5EA363
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

to mapped_len, and leading to a silent overflow

Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
Cc: stable@vger.kernel.org
Cc: iommu@lists.linux.dev
Reviewed-by: Pranjal Shrivastava <praan@google.com>
Signed-off-by: David Hu <xuehaohu@google.com>
---
Changes in v2:
 Fixed 'IVOA' -> 'IOVA' typo and expanded commit message (Claude Bot).
 Added Reverse Xmas tree formatting (Pranjal).
 Folded in extra bounds checking for calc_sg_nents() (Pranjal).
 Folded in type consistency fix for fill_sg_entry() (Pranjal).
 Droped unnecessary `nents = 0` initialization (Claude Bot).

 drivers/dma-buf/dma-buf-mapping.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
index 794acff2546a..5bc769fc42ea 100644
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
-- 
2.54.0.794.g4f17f83d09-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

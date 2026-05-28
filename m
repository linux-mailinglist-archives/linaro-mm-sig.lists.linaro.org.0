Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBmKFZNmGGrcjggAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 18:00:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD945F4B94
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 18:00:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08B0B406B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 16:00:17 +0000 (UTC)
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com [209.85.160.202])
	by lists.linaro.org (Postfix) with ESMTPS id 3CE963F8F0
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 16:00:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=eVjHVPh+;
	spf=pass (lists.linaro.org: domain of 3hWYYaggKDQw96qtm0t6s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--xuehaohu.bounces.google.com designates 209.85.160.202 as permitted sender) smtp.mailfrom=3hWYYaggKDQw96qtm0t6s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--xuehaohu.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f202.google.com with SMTP id d75a77b69052e-516e0846095so103242201cf.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 09:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779984008; x=1780588808; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MmPFy91yuYd+9nLUOi1wu2JWcf7o4ksos6H5oNntzCU=;
        b=eVjHVPh+KN3o88H3aQq0JiMgGY2wtjmV0/f6jxhhv+DM476kVVwRpdjiFyUjotseH5
         7yA0JDhjDehm9vdl/yMQp9rD/6kQ2fSnatdmPUaoup0o19rnYtxx0l75oa343pbK0Eun
         w98CODRsuVArmYII7AyfYcN0+7ZvF61zpj6UNhPtR6NjLuFBeop31U0k/NwlDNhzMwzt
         HZtwvuOOKY2wcdR2qF1r9jkg+6rrBNhoo1wJ3HgN943Uno97/IxbY0qYAAfrypw6QdDn
         doBMUMJpK/yR+GXh4G9Ir0waVrrzgVWKXycfbPr88FZjrIS9wKBUB+3FsYObehl8aPK+
         PMAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779984008; x=1780588808;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MmPFy91yuYd+9nLUOi1wu2JWcf7o4ksos6H5oNntzCU=;
        b=aqyVnYEbiiklNLGox5NGoiNRMFwsuKw4iUMKu6lyErl0kBwRPa6/lc/l9VGeHATk4S
         RnDHeHTyIW8kSWltM0YwvVqjHBdWPFrG/MMhbqvhmM9Iqp96NEnCC8r804P1zP6SlvQo
         RKoP0Mml2n+JssQHKQHrvDlEX5JZC9+SvyiOUpffS6nVQU+1NoqTKk6Q8huws73gGSk+
         /+f8JFyysQdREA6dKf2EvzujTYh6jJEtHWXTMOU9atwJc6VET7I5x+OVV35+pL5Pr6wk
         D54Q7rXudJPWSrQaQlWuVpJG/kRxIy1HE2R2dm1/0F2j4+ASR875/G/0NwOJ6Q+x+Roh
         FpdQ==
X-Forwarded-Encrypted: i=1; AFNElJ9/zX7G8CT/hG/+gLA3qwVX5wPMcyWEbERuJG2gom7SDBqLGKu91XAk4/mugqepn3DpMvGQ43z4Pp0+UDv2@lists.linaro.org
X-Gm-Message-State: AOJu0YxJDLujXYTZxImTkf7uqfoa+FSgkFUtuCIjtNHbaSR7wlvH/3y8
	T+EKyN3AE7wYucSBgigcBpRENfdguimYSG1VVk0dNFZpIZvmeovLCKlUVWLim7C7aZjI91iFnNw
	KuzwiNuwld3dQ
X-Received: from qtxy12.prod.google.com ([2002:a05:622a:120c:b0:516:373e:a942])
 (user=xuehaohu job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:622a:1488:b0:516:d6a4:fd69 with SMTP id d75a77b69052e-516d6a4fe46mr371616761cf.12.1779984005890;
 Thu, 28 May 2026 09:00:05 -0700 (PDT)
Date: Thu, 28 May 2026 16:00:04 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.54.0.794.g4f17f83d09-goog
Message-ID: <20260528160004.2452461-1-xuehaohu@google.com>
From: David Hu <xuehaohu@google.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Bar: --
Message-ID-Hash: EGEX2GGJWY3Q2DRICAK6E45QDGANGZN5
X-Message-ID-Hash: EGEX2GGJWY3Q2DRICAK6E45QDGANGZN5
X-MailFrom: 3hWYYaggKDQw96qtm0t6s00sxq.o0yxuzm30-yy-4usxu454.xuzm30.03s@flex--xuehaohu.bounces.google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Jason Gunthorpe <jgg@ziepe.ca>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com, praan@google.com, David Hu <xuehaohu@google.com>, stable@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EGEX2GGJWY3Q2DRICAK6E45QDGANGZN5/>
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
	RCPT_COUNT_TWELVE(0.00)[17];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linux.dev:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: BFD945F4B94
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

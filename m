Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8237CF7AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:57:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B22840F1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:57:17 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 1499F3EAAF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Oct 2023 14:03:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ZkP4DcvH;
	spf=pass (lists.linaro.org: domain of gustavoars@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1557FB82134;
	Wed, 11 Oct 2023 14:03:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D101C433C8;
	Wed, 11 Oct 2023 14:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697033027;
	bh=Zh3bJ54D4zW63Ncr/mu6xJinQ4B8/2BBuvC0nnjCJ+c=;
	h=Date:From:To:Cc:Subject:From;
	b=ZkP4DcvHTv+CAU+Bxp7bY8mRMIANtm2V9mIigWhS4C7tKd8ksjtwI42hJdKV47med
	 Zbh8xz/Qia5Y0t4GtL+bAr4a4l8PKf5ZgCLjus2Zq+ODqvNMgmih9PufW6kUfk51mI
	 BZ2j/V/EkLskGGRbRjul2+hRAY8mXTUH+y05qVcxCZRllwFjc8O5kvg564yw6Vctkm
	 ZesOPr/II66swDL/BQ1+W5CawaE4hg0vrD8HdvBIFpSIZaSt82Px8k4kKlJeQRwDR6
	 Sz+vbYcmtVygTHd5vsfk0MRCm6zl/6eriAYykaLUak4pPitWYW56gTGnVIVmUAQGoo
	 c3iDm5VQFx7OQ==
Date: Wed, 11 Oct 2023 08:03:43 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Gustavo Padovan <gustavo@padovan.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Arvind Yadav <Arvind.Yadav@amd.com>
Message-ID: <ZSarP0/+hG8/87//@work>
MIME-Version: 1.0
Content-Disposition: inline
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	BLOCKLISTDE_FAIL(0.00)[145.40.68.75:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1499F3EAAF
X-MailFrom: gustavoars@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 77JHDB6GXHI6Q3JDXGCCG6HNYHPNBVNJ
X-Message-ID-Hash: 77JHDB6GXHI6Q3JDXGCCG6HNYHPNBVNJ
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:50:52 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH][next] dma-buf: Fix NULL pointer dereference in dma_fence_enable_sw_signaling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/77JHDB6GXHI6Q3JDXGCCG6HNYHPNBVNJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Currently, a NULL pointer dereference will happen in function
`dma_fence_enable_sw_signaling()` (at line 615), in case `chain`
is not allocated in `mock_chain()` and this function returns
`NULL` (at line 86). See below:

drivers/dma-buf/st-dma-fence-chain.c:
 86         chain = mock_chain(NULL, f, 1);
 87         if (!chain)
 88                 err = -ENOMEM;
 89
 90         dma_fence_enable_sw_signaling(chain);

drivers/dma-buf/dma-fence.c:
 611 void dma_fence_enable_sw_signaling(struct dma_fence *fence)
 612 {
 613         unsigned long flags;
 614
 615         spin_lock_irqsave(fence->lock, flags);
			       ^^^^^^^^^^^
				    |
			  NULL pointer reference
			  if fence == NULL

 616         __dma_fence_enable_signaling(fence);
 617         spin_unlock_irqrestore(fence->lock, flags);
 618 }

Fix this by adding a NULL check before dereferencing `fence` in
`dma_fence_enable_sw_signaling()`. This will prevent any other NULL
pointer dereference when the `fence` passed as an argument is `NULL`.

Addresses-Coverity: ("Dereference after null check")
Fixes: d62c43a953ce ("dma-buf: Enable signaling on fence for selftests")
Cc: stable@vger.kernel.org
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/dma-buf/dma-fence.c | 9 ++++++++-
 include/linux/dma-fence.h   | 2 +-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index 8aa8f8cb7071..4d2f13560d0f 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -607,14 +607,21 @@ static bool __dma_fence_enable_signaling(struct dma_fence *fence)
  * This will request for sw signaling to be enabled, to make the fence
  * complete as soon as possible. This calls &dma_fence_ops.enable_signaling
  * internally.
+ *
+ * Returns 0 on success and a negative error value when @fence is NULL.
  */
-void dma_fence_enable_sw_signaling(struct dma_fence *fence)
+int dma_fence_enable_sw_signaling(struct dma_fence *fence)
 {
 	unsigned long flags;
 
+	if (!fence)
+		return -EINVAL;
+
 	spin_lock_irqsave(fence->lock, flags);
 	__dma_fence_enable_signaling(fence);
 	spin_unlock_irqrestore(fence->lock, flags);
+
+	return 0;
 }
 EXPORT_SYMBOL(dma_fence_enable_sw_signaling);
 
diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
index ebe78bd3d121..1e4025e925e6 100644
--- a/include/linux/dma-fence.h
+++ b/include/linux/dma-fence.h
@@ -399,7 +399,7 @@ int dma_fence_add_callback(struct dma_fence *fence,
 			   dma_fence_func_t func);
 bool dma_fence_remove_callback(struct dma_fence *fence,
 			       struct dma_fence_cb *cb);
-void dma_fence_enable_sw_signaling(struct dma_fence *fence);
+int dma_fence_enable_sw_signaling(struct dma_fence *fence);
 
 /**
  * dma_fence_is_signaled_locked - Return an indication if the fence
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

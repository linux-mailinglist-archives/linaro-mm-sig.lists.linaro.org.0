Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNEDMuI072kw+AAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 12:05:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A815A4707C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 12:05:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BDDDF406AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 10:05:21 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 73995406AA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 10:05:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=EFEf02hj;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C180544521;
	Mon, 27 Apr 2026 10:05:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AABDC2BCB6;
	Mon, 27 Apr 2026 10:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777284314;
	bh=DVp9SIjZvLo7LHKT0aFcqmpT0ICBVAk6Lir7Cpdt3so=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EFEf02hjKJBrla5RxATE172pEWa4DwdUWoWua5gh3m2gOPQoJLW+WbrcmdAD3D3/1
	 v99gfpc4meaM+99m+qRj4h34CwSX5RVI5zESaihlunB+cjRqQ4ZY6CjIso9DrEiu5k
	 p4k/kcAxJjWOn4T3CVbTJ6U/a6sjPaeWykhDUU4NOSjDUDpnyOBC+KXnKoXA8YD5OD
	 WHetiPxgajNyAhjj0KEHbGBd638DwjLjOCr9NKwwTyusWQ6v5uH+9G11HwdJ67pmIm
	 WmVhOTB0btzdyI0xPowk3MtRXzGyWOrrCUMdDACeaFWP3xiG9SQviJx2tbBLzb9Asi
	 3zqiJ/wcrR8ug==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 Apr 2026 12:04:57 +0200
MIME-Version: 1.0
Message-Id: <20260427-dma-buf-heaps-as-modules-v5-1-b6f5678feefc@kernel.org>
References: <20260427-dma-buf-heaps-as-modules-v5-0-b6f5678feefc@kernel.org>
In-Reply-To: <20260427-dma-buf-heaps-as-modules-v5-0-b6f5678feefc@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1058; i=mripard@kernel.org;
 h=from:subject:message-id; bh=DVp9SIjZvLo7LHKT0aFcqmpT0ICBVAk6Lir7Cpdt3so=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJnvTS6tafvtvWv6mh+bl6Z8bN7Ru6CH7exr7qgFe/Z7H
 a2R+nKyuGMqC4MwJ4OsmCLLE5mw08vbF1c52K/8ATOHlQlkCAMXpwBMRN6WsT44uNxO4ATnvH+P
 vR0PGTDPVPP73xCyY9dW05dJv75PdZf9uMKjwPN4qpt7ys8zTwz2bWOszwvg/KmqaTpHLirus8l
 jZ6VL4n9ypinF5hj4vZJMWpPHuzHs4J6SlX0yOyc4lefe+lkAAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-Spamd-Bar: ----
Message-ID-Hash: S22SHHPY7BDOXBLZN6FZB5XT7VY2GDIO
X-Message-ID-Hash: S22SHHPY7BDOXBLZN6FZB5XT7VY2GDIO
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 1/4] dma-buf: heaps: Export mem_accounting parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S22SHHPY7BDOXBLZN6FZB5XT7VY2GDIO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A815A4707C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.934];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns]

The mem_accounting kernel parameter is used by heaps to know if they
should account allocations in their respective cgroup controllers.

Since we're going to allow heaps to compile as modules, we need to
export that variable.

Reviewed-by: T.J. Mercier <tjmercier@google.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/dma-buf/dma-heap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
index ac5f8685a649..a76bf3f8b071 100644
--- a/drivers/dma-buf/dma-heap.c
+++ b/drivers/dma-buf/dma-heap.c
@@ -51,10 +51,11 @@ static DEFINE_XARRAY_ALLOC(dma_heap_minors);
 
 bool __read_mostly mem_accounting;
 module_param(mem_accounting, bool, 0444);
 MODULE_PARM_DESC(mem_accounting,
 		 "Enable cgroup-based memory accounting for dma-buf heap allocations (default=false).");
+EXPORT_SYMBOL_NS_GPL(mem_accounting, "DMA_BUF_HEAP");
 
 static int dma_heap_buffer_alloc(struct dma_heap *heap, size_t len,
 				 u32 fd_flags,
 				 u64 heap_flags)
 {

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

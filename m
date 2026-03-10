Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CwIRIWBf5mksvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC1C430DD6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4AB440955
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:07:06 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id C63C73F7AE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 08:53:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HsB3nyr9;
	spf=pass (lists.linaro.org: domain of linusw@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=linusw@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5A96060097;
	Tue, 10 Mar 2026 08:53:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39112C19423;
	Tue, 10 Mar 2026 08:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773132796;
	bh=pwuUPVWLWGHgGRSRKZmh3n+gi0RBXfZl2/eGNbUr12k=;
	h=From:Subject:Date:To:Cc:From;
	b=HsB3nyr9Dh30UV9HshMqIwqkc2xVMC0pRI0LPWSc297yibRFLkjnHIZDGuR2u7nr1
	 xgDXbY+fvarSZIKRVLDX2+aZ2+3KlmfjyPhGyYl1m0QnKnPerpht1+pMO260PzALDt
	 6e3oaYU0Xb2YAHjSctUiM9R55EUWkvF2h00ftMQW1seEuBqe0y6WOTAmnXGoY+xsv4
	 fslP79k5//sVWGM0iUmaTtEY7ZjWdEsuiK1garWsVfw74rucGjmicgRT2KBBSvbYDw
	 pcKzU2++eqk0EaS7dTVnePteyo36lvbEOaCbIXe3c8+WSsfQmMK6HAybwjktF2q5Jx
	 g7GnkPo9LTl7Q==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 10 Mar 2026 09:53:10 +0100
Message-Id: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NQQqDMBBFryKz7pTERMWueo/iYkgmGmpVJkVax
 Ls3Fbrr8j3472+QWCInuBQbCK8xxXnKUJ4KcANNPWP0maFUZa2MMugehAPTgm5kElyo54SVVcG
 Qa0NjLOTpIhzi68jeusxDTM9Z3sfLqr/2F7T/g6tGjXUIVeup0bU31zvLxON5lh66fd8/3BOuU
 LkAAAA=
X-Change-ID: 20260303-cma-heap-clear-pages-540f3ac9f734
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Spamd-Bar: -----
X-MailFrom: linusw@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2MT3PRI7QTRNU5OOKWGFGRMQXLZ5YDGY
X-Message-ID-Hash: 2MT3PRI7QTRNU5OOKWGFGRMQXLZ5YDGY
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:06:32 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Linus Walleij <linusw@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/2] dma-buf: heaps: Use page clearing helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2MT3PRI7QTRNU5OOKWGFGRMQXLZ5YDGY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[992];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 4CC1C430DD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use clear_pages() and clear_highpage() properly in the
DMA heap allocator.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
Changes in v2:
- Added a second patch to use the clear_highpage() helper.
- Link to v1: https://lore.kernel.org/r/20260304-cma-heap-clear-pages-v1-1-6ff59da716d3@kernel.org

---
Linus Walleij (2):
      dma-buf: heaps: Clear CMA pages with clear_pages()
      dma-buf: heaps: Clear CMA highages using helper

 drivers/dma-buf/heaps/cma_heap.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260303-cma-heap-clear-pages-540f3ac9f734

Best regards,
-- 
Linus Walleij <linusw@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

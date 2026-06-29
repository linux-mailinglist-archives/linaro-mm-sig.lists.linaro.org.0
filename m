Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9iAYJVAlQmrT0wkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 09:57:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B906D73A8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 09:57:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=F1sbhZmQ;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B38A40A7D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Jun 2026 07:57:03 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 84E3F3F798
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Jun 2026 07:56:52 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D90CF408E7;
	Mon, 29 Jun 2026 07:56:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB7381F000E9;
	Mon, 29 Jun 2026 07:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782719811;
	bh=S30NeagpEcZhtovpS5SpHMBaBOG2K6LplFkgTolUfE4=;
	h=From:To:Cc:Subject:Date;
	b=F1sbhZmQZWS0SZb2g0JeIHYjjl5aFLCfW6JZLHanihsXud50pPNQEZb3sC3/f67O/
	 nHxmpvHm6FWqtxHHr7rYzl0sT538qJjr83vA98z5jjrqP5ZOg0zSCP0vuCbBcJD11I
	 VtnAPOF0fqXMfxKHkb+KNlKOLjY3SJxPE+D+/jb1OaP6lA5EdCaeG4aoFGkyk7oLRq
	 ocrvFFMBLuUiXdErJdrO0MY8GMoAK6WXXdGEwyeiftvFs8lls0uRJxKaTXn05L6FIA
	 IHqFGZu8M6Tb5+MB1D5Ky+6GyKYXoynWW821t7IrZH4nI+rpEqLE2pgfwu6Pzjb6EB
	 GK2PWYw3f2sLQ==
From: Philipp Stanner <phasta@kernel.org>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Gary Guo <gary@garyguo.net>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Boqun Feng <boqun@kernel.org>
Date: Mon, 29 Jun 2026 09:56:37 +0200
Message-ID: <20260629075636.2513214-2-phasta@kernel.org>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spamd-Bar: -----
Message-ID-Hash: LUAYV2XL5DD5K4VT4GIOSRYVH4DVMPR5
X-Message-ID-Hash: LUAYV2XL5DD5K4VT4GIOSRYVH4DVMPR5
X-MailFrom: phasta@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Philipp Stanner <phasta@kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: dma-fence: Fix potential NULL pointer dereference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LUAYV2XL5DD5K4VT4GIOSRYVH4DVMPR5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:boris.brezillon@collabora.com,m:tvrtko.ursulin@igalia.com,m:andre.draszik@linaro.org,m:dakr@kernel.org,m:gary@garyguo.net,m:paulmck@kernel.org,m:boqun@kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:phasta@kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15B906D73A8

The commit mentioned in the fixes tag below introduced a mechanism
through which fence producers can fully decouple from fence consumers.
This, desirable, mechanism is based on the fence's signaled-bit as the
"decoupling point".

A sophisticated interaction between RCU and atomic instructions attempts
to ensure that fence consumers can still interact with fence producers
through the dma_fence_ops (callback pointers into the producer).

This is the desired behavior: to check for decoupling, the signaled-bit
is first checked. If it's not yet signaled, RCU ensures that the ops
pointer cannot yet be NULL.

Hereby, dma_fence_signal_timestamp_locked() first sets the signaled-bit,
and then sets the ops pointer to NULL. Readers first load the ops
pointer, and then check through the signaled-bit whether the pointer can
legally be accessed.

These set and load operations could occur out of order on weakly ordered
platforms. This problem can be solved very elegantly by using the ops
pointer itself as the synchronization point. The pointer is either NULL,
or cannot become NULL while it is being used thanks to RCU.

Replace the signaled-bit check in dma_fence_timeline_name() and
dma_fence_driver_name().

Cc: stable@vger.kernel.org
Fixes: f4cc3ab824d6 ("dma-buf: protected fence ops by RCU v8")
Signed-off-by: Philipp Stanner <phasta@kernel.org>
---
Changes since v1:
  - Use ops pointer instead of memory barriers. (Christian)
  - Rephrase commit message.
---
 drivers/dma-buf/dma-fence.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index c7ea1e75d38a..0a025dfdf131 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -1170,7 +1170,7 @@ const char __rcu *dma_fence_driver_name(struct dma_fence *fence)
 
 	/* RCU protection is required for safe access to returned string */
 	ops = rcu_dereference(fence->ops);
-	if (!dma_fence_test_signaled_flag(fence))
+	if (ops)
 		return (const char __rcu *)ops->get_driver_name(fence);
 	else
 		return (const char __rcu *)"detached-driver";
@@ -1203,7 +1203,7 @@ const char __rcu *dma_fence_timeline_name(struct dma_fence *fence)
 
 	/* RCU protection is required for safe access to returned string */
 	ops = rcu_dereference(fence->ops);
-	if (!dma_fence_test_signaled_flag(fence))
+	if (ops)
 		return (const char __rcu *)ops->get_driver_name(fence);
 	else
 		return (const char __rcu *)"signaled-timeline";

base-commit: cdeb2ccd993ed8647adbbda2c3b103aa717fd6f7
-- 
2.54.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

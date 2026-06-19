Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZC6HFgUUNWrcmgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 12:03:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9036A51B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 12:03:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D87BF40AE4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2026 10:03:47 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 3A7E33F75F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2026 10:03:38 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A640243CB8;
	Fri, 19 Jun 2026 10:03:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E4F71F000E9;
	Fri, 19 Jun 2026 10:03:35 +0000 (UTC)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Fri, 19 Jun 2026 12:03:31 +0200
Message-ID: <16fb40ded203d1e2b72f4eeecad3fd0c0d23ad6f.1781863296.git.geert@linux-m68k.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spamd-Bar: -
Message-ID-Hash: DUV2NJFKAWRKXTNJA6WOR46TTV6XTNU5
X-Message-ID-Hash: DUV2NJFKAWRKXTNJA6WOR46TTV6XTNU5
X-MailFrom: SRS0=CK7Q=EP=linux-m68k.org=geert@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: driver-core@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] base: Remove unused DMA_FENCE_TRACE Kconfig symbol
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DUV2NJFKAWRKXTNJA6WOR46TTV6XTNU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:geert@linux-m68k.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,linux-m68k.org:mid,linux-m68k.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC9036A51B7

Commit d72277b6c37db66b ("dma-buf: nuke DMA_FENCE_TRACE macros v2") in
v5.16 removed all users of DMA_FENCE_TRACE on the premise that the
Kconfig symbol did not exist.  Apparently one failed to notice the
symbol did exist since almost five years before: it was renamed from
FENCE_TRACE to DMA_FENCE_TRACE in commit f54d1867005c3323 ("dma-buf:
Rename struct fence to dma_fence") in v4.10.

Time passed by, so remove the Kconfig symbol, as no one seems to have
missed the functionality.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 drivers/base/Kconfig | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index f7d385cbd3ba4b2b..43f20ca95a2a6ba9 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -222,15 +222,6 @@ config DMA_SHARED_BUFFER
 	  APIs extension; the file's descriptor can then be passed on to other
 	  driver.
 
-config DMA_FENCE_TRACE
-	bool "Enable verbose DMA_FENCE_TRACE messages"
-	depends on DMA_SHARED_BUFFER
-	help
-	  Enable the DMA_FENCE_TRACE printks. This will add extra
-	  spam to the console log, but will make it easier to diagnose
-	  lockup related problems for dma-buffers shared across multiple
-	  devices.
-
 config GENERIC_ARCH_TOPOLOGY
 	bool
 	help
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

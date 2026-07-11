Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id H40dKvpxVmq/5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:29:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C597576E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:29:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=collabora.com header.s=zohomail header.b=XjOct0D2;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=collabora.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FA0340470
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:29:29 +0000 (UTC)
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com [136.143.188.11])
	by lists.linaro.org (Postfix) with ESMTPS id BB3E03F900
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Jul 2026 14:48:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1783781328; cv=none;
	d=zohomail.com; s=zohoarc;
	b=BH4dZUWFXQTfpBTQhaOCxYSOrJSIBoAMYPL0GW2hOvxf8SPFEl3Jaz/BLUiAaj+YfT4mmi0BJKs0xDW7qcFSEn/NuISdleLOwOspZtx1lSCrkl5WkP2L6aGxdK4nswV6YvI7MZ+Vjs8wCBZJmm3on2Poj+K9s8ExjZDMiN6xaoQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1783781328; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=kGHh/6tYI5CXdwmaq9gUtobNs8A8Brc1JnxMpe3H3lc=;
	b=kscEkUlWDfYiPizyVcRM2SqCMaGPorOa1/2xfEC/oLBE9CmvrWgDCM9Wa4B/xLYvFP94zbCZRobizZETbC8R4XIyxog1/mQHqHZMGAj4a0QJG+A5qJdXsy6l/R5zpBgQCtBY41snFaMtJ/inbXYfSXiyo/wxUe91yEGOQeFlQc8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=robert.mader@collabora.com;
	dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783781328;
	s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=kGHh/6tYI5CXdwmaq9gUtobNs8A8Brc1JnxMpe3H3lc=;
	b=XjOct0D2Ll/nKAqt2RjQ+kSHU589TeaBxWRRs6xjdGy6+gpcnFZ/7kuq8FefC1ho
	o40rOta3xUV1OIgsZs8owLfrX0PyKtKO7HbD1sm/kgzZUl4+DY9jSy5mO2Qp6OfXlof
	nscyEV5UGpn1hAMcyZ2+X4qYIUq18BQHecMkNs2U=
Received: by mx.zohomail.com with SMTPS id 1783781326029184.89565228296215;
	Sat, 11 Jul 2026 07:48:46 -0700 (PDT)
From: Robert Mader <robert.mader@collabora.com>
To: dri-devel@lists.freedesktop.org
Date: Sat, 11 Jul 2026 16:48:12 +0200
Message-ID: <20260711144814.8205-1-robert.mader@collabora.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: robert.mader@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3LB5OFO3IB2XI3UIZXGXV5SHXZZIUI7T
X-Message-ID-Hash: 3LB5OFO3IB2XI3UIZXGXV5SHXZZIUI7T
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:21:04 +0000
CC: Robert Mader <robert.mader@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 1/2] dma-buf/udmabuf: Introduce CONFIG_UDMABUF_SIZE_LIMIT_MBYTES
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3LB5OFO3IB2XI3UIZXGXV5SHXZZIUI7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DATE_IN_PAST(1.00)[74];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[robert.mader@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:robert.mader@collabora.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.mader@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,collabora.com:from_mime,collabora.com:email,collabora.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38C597576E6

As udmabuf increasingly enjoys popularity - being used in projects like
libcamera, Gstreamer, Mesa and KWin - users more frequently encounter
cases where the current default size limit of 64MB is too low. Examples
include allocating video buffers at a 8K resolution - and even 4K is
affected when using non-subsampled video formats or high bit depths.

While the limit can already be changed via the kernel command line,
exposing it as a kernel config makes that easier and more discoverable
for distros. Thus let's do that.

Signed-off-by: Robert Mader <robert.mader@collabora.com>
---
 drivers/dma-buf/Kconfig   | 6 ++++++
 drivers/dma-buf/udmabuf.c | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
index 7efc0f0d0712..35f0779cdc80 100644
--- a/drivers/dma-buf/Kconfig
+++ b/drivers/dma-buf/Kconfig
@@ -40,6 +40,12 @@ config UDMABUF
 	  A driver to let userspace turn memfd regions into dma-bufs.
 	  Qemu can use this to create host dmabufs for guest framebuffers.
 
+config UDMABUF_SIZE_LIMIT_MBYTES
+	int "Size limit in Mega Bytes"
+	default 64
+	help
+	  Maximum size of a udmabuf, in megabytes. Default is 64.
+
 config DMABUF_DEBUG
 	bool "DMA-BUF debug checks"
 	depends on DMA_SHARED_BUFFER
diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index bced421c0d65..a83153326362 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -20,7 +20,11 @@ static int list_limit = 1024;
 module_param(list_limit, int, 0644);
 MODULE_PARM_DESC(list_limit, "udmabuf_create_list->count limit. Default is 1024.");
 
+#ifdef CONFIG_UDMABUF_SIZE_LIMIT_MBYTES
+static int size_limit_mb = CONFIG_UDMABUF_SIZE_LIMIT_MBYTES;
+#else
 static int size_limit_mb = 64;
+#endif
 module_param(size_limit_mb, int, 0644);
 MODULE_PARM_DESC(size_limit_mb, "Max size of a dmabuf, in megabytes. Default is 64.");
 
-- 
2.55.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

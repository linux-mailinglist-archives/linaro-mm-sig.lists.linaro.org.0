Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJHeEsZADGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:51:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BB857CDDA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:51:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67C92406A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:51:48 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B2E02406F4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 06:15:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=joYmzLSM;
	spf=pass (lists.linaro.org: domain of devnull+ekansh.gupta.oss.qualcomm.com@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=devnull+ekansh.gupta.oss.qualcomm.com@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BC1CE445CF;
	Tue, 19 May 2026 06:15:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A86C2BCF6;
	Tue, 19 May 2026 06:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171355;
	bh=82PERNwXYXUr/vmLjJhbxfvenuBMmsRqM+7I8R4lFg4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=joYmzLSM/n4J95p9QTrhVsYairbUswXSoIC3+K4RHu/yRRk1lPwS6Vys3qsKkREdv
	 RqwueXhwPKgKbJtTdbChQsyLfV0dzU0ZxDD/Cn8RzavV7cpQGfk/A37Li2SBKdB6GN
	 eh32hvjLw3Arm9t4o9ClBRXp629xD4cdcxYhz6X/763S+Xh631ey5qZCuLOr2p+Jkm
	 oJ3jSPSVEUuyJNiIffVC2fTOfDkuuErCqxyU9o64LhOIbc+u5Z5sDQepLHhsMLp0YP
	 r38/GCD3T+RPfSWWLihQO4F7yGibfPznusareo/BeJEG2wsOC066cmgvviDH4mOBgH
	 ehvIxN2Soj7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E869CD4F3C;
	Tue, 19 May 2026 06:15:55 +0000 (UTC)
From: Ekansh Gupta via B4 Relay <devnull+ekansh.gupta.oss.qualcomm.com@kernel.org>
Date: Tue, 19 May 2026 11:45:55 +0530
MIME-Version: 1.0
Message-Id: <20260519-qda-series-v1-5-b2d984c297f8@oss.qualcomm.com>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
In-Reply-To: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
To: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779171352; l=1333;
 i=ekansh.gupta@oss.qualcomm.com; s=20260223; h=from:subject:message-id;
 bh=uUmOwV+DxDbxkc3JtD4SpX7nMMHY6cmwwdM752V2UQo=;
 b=sWmxYA9PWmgSpEQZgsn/THebk6tqrwjcomkyWVJ5lcZBwi/uzxjCYRnirmsd0UVT8+C/fvUbJ
 zmNUcHVkHcxChaxEfSFUhoiIFcB0zBUOb/1yYxX890kLSc6FeTxpCiF
X-Developer-Key: i=ekansh.gupta@oss.qualcomm.com; a=ed25519;
 pk=n0SepARizye+pYjhjg1RA5J+Nq4+IJbyRcBybU+/ERQ=
X-Endpoint-Received: by B4 Relay for ekansh.gupta@oss.qualcomm.com/20260223
 with auth_id=647
X-Original-From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Spamd-Bar: ---
X-MailFrom: devnull+ekansh.gupta.oss.qualcomm.com@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2XRC7DC3R4HJLOJI4H7BEK7GUDCBV74Q
X-Message-ID-Hash: 2XRC7DC3R4HJLOJI4H7BEK7GUDCBV74Q
X-Mailman-Approved-At: Tue, 19 May 2026 10:49:57 +0000
CC: Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, dmitry.baryshkov@oss.qualcomm.com, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: ekansh.gupta@oss.qualcomm.com
Subject: [Linaro-mm-sig] [PATCH 05/15] iommu: Add QDA compute context bank bus to iommu_buses
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2XRC7DC3R4HJLOJI4H7BEK7GUDCBV74Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de,ekansh.gupta.oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ekansh.gupta@oss.qualcomm.com];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:replyto,qualcomm.com:email]
X-Rspamd-Queue-Id: E0BB857CDDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>

Register the QDA compute context bank bus (qda-compute-cb) with the
IOMMU subsystem by adding it to the iommu_buses[] array.

The QDA driver creates synthetic devices on this bus to represent
IOMMU context banks (CBs). Each CB device needs its own IOMMU domain
so that the DSP memory manager can enforce per-session address space
isolation. Without this registration, the IOMMU subsystem does not
probe CB devices for IOMMU groups and of_dma_configure() in the bus
dma_configure callback has no IOMMU domain to attach to.

Assisted-by: Claude:claude-4-6-sonnet
Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
---
 drivers/iommu/iommu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index e8f13dcebbde..7d39050a8848 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -26,6 +26,7 @@
 #include <linux/bitops.h>
 #include <linux/platform_device.h>
 #include <linux/property.h>
+#include <linux/qda_compute_bus.h>
 #include <linux/fsl/mc.h>
 #include <linux/module.h>
 #include <linux/cc_platform.h>
@@ -200,6 +201,9 @@ static const struct bus_type * const iommu_buses[] = {
 #ifdef CONFIG_CDX_BUS
 	&cdx_bus_type,
 #endif
+#ifdef CONFIG_DRM_ACCEL_QDA_COMPUTE_BUS
+	&qda_cb_bus_type,
+#endif
 };
 
 /*

-- 
2.34.1


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

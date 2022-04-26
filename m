Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A93B9512AE8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 07:30:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB68947FC5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 05:30:26 +0000 (UTC)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
	by lists.linaro.org (Postfix) with ESMTPS id 0A1A13E829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 06:08:57 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1650953335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zao150YBGdFw8Onc7+4B9NytRjAm8jq3ZHbXVPaTjMk=;
	b=tLhu9UMsCtTxGJysFnitSixFxYr9+U5ooN+pPsDZNG4kVMc+8tCkOiWJVMwYJ3fFnrcV1m
	xpAZAhOI/VqMXLeW8CXZpNISfPMRuxZiT0qgpGQuO7U2rm8iWMn/LtzBdmpcIbWebQRmYn
	bC3M0X528tjfLQUDcMZvU89SbGNpYbw=
From: Cai Huoqing <cai.huoqing@linux.dev>
To: cai.huoqing@linux.dev
Date: Tue, 26 Apr 2022 14:07:58 +0800
Message-Id: <20220426060808.78225-2-cai.huoqing@linux.dev>
In-Reply-To: <20220426060808.78225-1-cai.huoqing@linux.dev>
References: <20220426060808.78225-1-cai.huoqing@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: linux.dev
X-MailFrom: cai.huoqing@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VLQW5ZTNT665YBY57DE7F4NDCRLRZ3RF
X-Message-ID-Hash: VLQW5ZTNT665YBY57DE7F4NDCRLRZ3RF
X-Mailman-Approved-At: Thu, 28 Apr 2022 05:30:17 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/4] MAINTAINERS: Add the driver info of the NVDLA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VLQW5ZTNT665YBY57DE7F4NDCRLRZ3RF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The NVIDIA Deep Learning Accelerator (NVDLA) is an open source IP
which is integrated into Jetson AGX Xavier. After adding the driver
support for it, I add the driver info of the NVDLA to MAINTAINERS file.

Signed-off-by: Cai Huoqing <cai.huoqing@linux.dev>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cc73bd02b36a..9cf6af4986b6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6485,6 +6485,13 @@ T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	Documentation/devicetree/bindings/display/panel/samsung,lms380kf01.yaml
 F:	drivers/gpu/drm/panel/panel-widechips-ws2401.c
 
+DRM DRIVER FOR NVDLA
+M:	Cai Huoqing <cai.huoqing@linux.dev>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+T:	git git://anongit.freedesktop.org/drm/drm-misc
+F:	drivers/gpu/drm/nvdla/
+
 DRM DRIVERS
 M:	David Airlie <airlied@linux.ie>
 M:	Daniel Vetter <daniel@ffwll.ch>
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

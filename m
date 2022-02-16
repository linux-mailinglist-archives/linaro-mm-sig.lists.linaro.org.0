Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBAF4B8300
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 09:39:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F5803EE8D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 08:39:04 +0000 (UTC)
Received: from out199-12.us.a.mail.aliyun.com (out199-12.us.a.mail.aliyun.com [47.90.199.12])
	by lists.linaro.org (Postfix) with ESMTPS id 0A6D13EE58
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Feb 2022 08:38:59 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R151e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04394;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=15;SR=0;TI=SMTPD_---0V4cKwYt_1645000730;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0V4cKwYt_1645000730)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 16 Feb 2022 16:38:55 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: jani.nikula@linux.intel.com
Date: Wed, 16 Feb 2022 16:38:49 +0800
Message-Id: <20220216083849.91239-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Message-ID-Hash: KPNSNCE7RAZ5VZGJ7OQYHOHMYYVZQQIU
X-Message-ID-Hash: KPNSNCE7RAZ5VZGJ7OQYHOHMYYVZQQIU
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch, christian.koenig@amd.com, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/i915/gt: fix unsigned integer to signed assignment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KPNSNCE7RAZ5VZGJ7OQYHOHMYYVZQQIU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Eliminate the follow smatch warning:

drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4640
guc_create_virtual() warn: assigning (-2) to unsigned variable
've->base.instance'.

drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4641
guc_create_virtual() warn: assigning (-2) to unsigned variable
've->base.uabi_instance'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 36365bdbe1ee..dc7cc06c68e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -328,10 +328,10 @@ struct intel_engine_cs {
 	intel_engine_mask_t logical_mask;
 
 	u8 class;
-	u8 instance;
+	s8 instance;
 
 	u16 uabi_class;
-	u16 uabi_instance;
+	s16 uabi_instance;
 
 	u32 uabi_capabilities;
 	u32 context_size;
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

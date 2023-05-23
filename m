Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2FC70D103
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 04:18:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D61E44E2F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 02:18:38 +0000 (UTC)
Received: from out30-119.freemail.mail.aliyun.com (out30-119.freemail.mail.aliyun.com [115.124.30.119])
	by lists.linaro.org (Postfix) with ESMTPS id C062C3E9D4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 02:18:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.119 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
	dmarc=pass (policy=none) header.from=alibaba.com
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R151e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046049;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=13;SR=0;TI=SMTPD_---0VjI8heJ_1684808293;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VjI8heJ_1684808293)
          by smtp.aliyun-inc.com;
          Tue, 23 May 2023 10:18:29 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: alexander.deucher@amd.com
Date: Tue, 23 May 2023 10:18:11 +0800
Message-Id: <20230523021811.122014-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Spamd-Result: default: False [-9.30 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[alibaba.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:115.124.30.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[115.124.30.119:server fail];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:37963, ipnet:115.124.24.0/21, country:CN];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linux.alibaba.com];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.463];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C062C3E9D4
X-Spamd-Bar: ---------
Message-ID-Hash: W3HCIMXW5AER2B336HXZLRAFAW2D3NSG
X-Message-ID-Hash: W3HCIMXW5AER2B336HXZLRAFAW2D3NSG
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amdgpu: Remove duplicate include
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W3HCIMXW5AER2B336HXZLRAFAW2D3NSG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

./drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c: amdgpu_xcp.h is included more than once.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=5281
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c
index e5cfb3adb3b3..7fb2d38b010a 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c
@@ -23,7 +23,6 @@
 #include <linux/firmware.h>
 
 #include "amdgpu.h"
-#include "amdgpu_xcp.h"
 #include "amdgpu_gfx.h"
 #include "soc15.h"
 #include "soc15d.h"
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

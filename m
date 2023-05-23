Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 873D770D244
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 05:17:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6598743CB4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 03:17:23 +0000 (UTC)
Received: from out30-98.freemail.mail.aliyun.com (out30-98.freemail.mail.aliyun.com [115.124.30.98])
	by lists.linaro.org (Postfix) with ESMTPS id 0FAC93E9D4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 03:17:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.98 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
	dmarc=pass (policy=none) header.from=alibaba.com
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R201e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046050;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=17;SR=0;TI=SMTPD_---0VjIIOXp_1684811830;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VjIIOXp_1684811830)
          by smtp.aliyun-inc.com;
          Tue, 23 May 2023 11:17:13 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: alexander.deucher@amd.com
Date: Tue, 23 May 2023 11:17:09 +0800
Message-Id: <20230523031709.19673-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Spamd-Result: default: False [-9.30 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[alibaba.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:115.124.30.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:37963, ipnet:115.124.24.0/21, country:CN];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.378];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,kernel.org,google.com,redhat.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,linux.alibaba.com];
	RCVD_TLS_LAST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0FAC93E9D4
X-Spamd-Bar: ---------
Message-ID-Hash: 3PCO42WYFE4TREPHL2IWMZGSYEXMATBC
X-Message-ID-Hash: 3PCO42WYFE4TREPHL2IWMZGSYEXMATBC
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, nathan@kernel.org, ndesaulniers@google.com, trix@redhat.com, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, llvm@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amdgpu: Modify mismatched function name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PCO42WYFE4TREPHL2IWMZGSYEXMATBC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

No functional modification involved.

drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c:426: warning: expecting prototype for sdma_v4_4_2_gfx_stop(). Prototype was for sdma_v4_4_2_inst_gfx_stop() instead.
drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c:457: warning: expecting prototype for sdma_v4_4_2_rlc_stop(). Prototype was for sdma_v4_4_2_inst_rlc_stop() instead.
drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c:470: warning: expecting prototype for sdma_v4_4_2_page_stop(). Prototype was for sdma_v4_4_2_inst_page_stop() instead.
drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c:506: warning: expecting prototype for sdma_v4_4_2_ctx_switch_enable(). Prototype was for sdma_v4_4_2_inst_ctx_switch_enable() instead.
drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c:561: warning: expecting prototype for sdma_v4_4_2_enable(). Prototype was for sdma_v4_4_2_inst_enable() instead.
drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c:798: warning: expecting prototype for sdma_v4_4_2_rlc_resume(). Prototype was for sdma_v4_4_2_inst_rlc_resume() instead.
drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c:814: warning: expecting prototype for sdma_v4_4_2_load_microcode(). Prototype was for sdma_v4_4_2_inst_load_microcode() instead.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=5283
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c b/drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c
index bf47eb33c12e..590b08585901 100644
--- a/drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c
+++ b/drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c
@@ -415,7 +415,7 @@ static void sdma_v4_4_2_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64
 
 
 /**
- * sdma_v4_4_2_gfx_stop - stop the gfx async dma engines
+ * sdma_v4_4_2_inst_gfx_stop - stop the gfx async dma engines
  *
  * @adev: amdgpu_device pointer
  *
@@ -446,7 +446,7 @@ static void sdma_v4_4_2_inst_gfx_stop(struct amdgpu_device *adev,
 }
 
 /**
- * sdma_v4_4_2_rlc_stop - stop the compute async dma engines
+ * sdma_v4_4_2_inst_rlc_stop - stop the compute async dma engines
  *
  * @adev: amdgpu_device pointer
  *
@@ -459,7 +459,7 @@ static void sdma_v4_4_2_inst_rlc_stop(struct amdgpu_device *adev,
 }
 
 /**
- * sdma_v4_4_2_page_stop - stop the page async dma engines
+ * sdma_v4_4_2_inst_page_stop - stop the page async dma engines
  *
  * @adev: amdgpu_device pointer
  *
@@ -494,7 +494,7 @@ static void sdma_v4_4_2_inst_page_stop(struct amdgpu_device *adev,
 }
 
 /**
- * sdma_v4_4_2_ctx_switch_enable - stop the async dma engines context switch
+ * sdma_v4_4_2_inst_ctx_switch_enable - stop the async dma engines context switch
  *
  * @adev: amdgpu_device pointer
  * @enable: enable/disable the DMA MEs context switch.
@@ -548,7 +548,7 @@ static void sdma_v4_4_2_inst_ctx_switch_enable(struct amdgpu_device *adev,
 }
 
 /**
- * sdma_v4_4_2_enable - stop the async dma engines
+ * sdma_v4_4_2_inst_enable - stop the async dma engines
  *
  * @adev: amdgpu_device pointer
  * @enable: enable/disable the DMA MEs.
@@ -786,7 +786,7 @@ static void sdma_v4_4_2_init_pg(struct amdgpu_device *adev)
 }
 
 /**
- * sdma_v4_4_2_rlc_resume - setup and start the async dma engines
+ * sdma_v4_4_2_inst_rlc_resume - setup and start the async dma engines
  *
  * @adev: amdgpu_device pointer
  *
@@ -802,7 +802,7 @@ static int sdma_v4_4_2_inst_rlc_resume(struct amdgpu_device *adev,
 }
 
 /**
- * sdma_v4_4_2_load_microcode - load the sDMA ME ucode
+ * sdma_v4_4_2_inst_load_microcode - load the sDMA ME ucode
  *
  * @adev: amdgpu_device pointer
  *
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

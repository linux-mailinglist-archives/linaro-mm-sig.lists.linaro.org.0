Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9356C08C1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 02:59:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 919D03E96A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 01:59:16 +0000 (UTC)
Received: from out30-118.freemail.mail.aliyun.com (out30-118.freemail.mail.aliyun.com [115.124.30.118])
	by lists.linaro.org (Postfix) with ESMTPS id D7FE03E928
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 01:59:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.118 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
	dmarc=pass (policy=none) header.from=alibaba.com
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R171e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046051;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=13;SR=0;TI=SMTPD_---0Ve9jPBi_1679277511;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0Ve9jPBi_1679277511)
          by smtp.aliyun-inc.com;
          Mon, 20 Mar 2023 09:59:00 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: maarten.lankhorst@linux.intel.com
Date: Mon, 20 Mar 2023 09:58:29 +0800
Message-Id: <20230320015829.52988-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D7FE03E928
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.30 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[alibaba.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:115.124.30.0/24];
	MIME_GOOD(-0.10)[text/plain];
	R_DKIM_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,linux.alibaba.com];
	ASN(0.00)[asn:37963, ipnet:115.124.24.0/21, country:CN];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[115.124.30.118:from]
Message-ID-Hash: BBHESJD6PIVDDJDTSSAONLPO5LLGIPUB
X-Message-ID-Hash: BBHESJD6PIVDDJDTSSAONLPO5LLGIPUB
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: mripard@kernel.org, tzimmermann@suse.de, daniel@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/shmem-helper: Remove duplicate include
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BBHESJD6PIVDDJDTSSAONLPO5LLGIPUB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

./drivers/gpu/drm/drm_gem_shmem_helper.c: linux/module.h is included more than once.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=4567
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 4ea6507a77e5..f401df26facf 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -10,7 +10,6 @@
 #include <linux/shmem_fs.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
-#include <linux/module.h>
 
 #ifdef CONFIG_X86
 #include <asm/set_memory.h>
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

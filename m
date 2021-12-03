Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 316CB467421
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 10:32:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C459561A36
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Dec 2021 09:32:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C4BEA61A45; Fri,  3 Dec 2021 09:32:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6530061A36;
	Fri,  3 Dec 2021 09:32:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A9216056A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 09:32:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 581D661A36; Fri,  3 Dec 2021 09:32:11 +0000 (UTC)
Received: from out30-133.freemail.mail.aliyun.com
 (out30-133.freemail.mail.aliyun.com [115.124.30.133])
 by lists.linaro.org (Postfix) with ESMTPS id DDA516056A
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Dec 2021 09:32:08 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R151e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04400;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=13; SR=0;
 TI=SMTPD_---0UzGGkdh_1638523919; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0UzGGkdh_1638523919) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 03 Dec 2021 17:32:03 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: Felix.Kuehling@amd.com
Date: Fri,  3 Dec 2021 17:31:53 +0800
Message-Id: <1638523913-117827-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH] drm/amdkfd: Use max() instead of doing it
 manually
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, airlied@linux.ie,
 Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, alexander.deucher@amd.com,
 christian.koenig@amd.com, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Fix following coccicheck warning:

./drivers/gpu/drm/amd/amdkfd/kfd_svm.c:2193:16-17: WARNING opportunity
for max().

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/amd/amdkfd/kfd_svm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c b/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
index f2db49c..4f7e7b1 100644
--- a/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
+++ b/drivers/gpu/drm/amd/amdkfd/kfd_svm.c
@@ -2190,7 +2190,7 @@ void schedule_deferred_list_work(struct svm_range_list *svms)
 
 	start = mni->interval_tree.start;
 	last = mni->interval_tree.last;
-	start = (start > range->start ? start : range->start) >> PAGE_SHIFT;
+	start = max(start, range->start) >> PAGE_SHIFT;
 	last = (last < (range->end - 1) ? last : range->end - 1) >> PAGE_SHIFT;
 	pr_debug("[0x%lx 0x%lx] range[0x%lx 0x%lx] notifier[0x%lx 0x%lx] %d\n",
 		 start, last, range->start >> PAGE_SHIFT,
-- 
1.8.3.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B75D4EB5B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Mar 2022 00:14:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A84C73EC1F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 22:14:38 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by lists.linaro.org (Postfix) with ESMTPS id C61583EBFA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 22:14:34 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id t25so32681043lfg.7
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 15:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6bUho4h3zzyg8mrHSXNWvfp6RptsEnl8G83mOpfY+8A=;
        b=bh7oMU8UPCqwbBrPRO6PPukc9f8hIRc+lb/bA8WWrXnuXulYF2BEAQFo14jUSUDx5s
         v/eUHNA5ayGfb5BqoNdiNDRyXPrC1kpH0/sYRj+1xjYsWuZRqw59J5mjFIRxTaeQILoI
         ocRVQEiF/frLG4RsG1ZpC51jWy3KK0satvkTzAMdkhAk01zHUUHXsKBI4N5zaQ63yagx
         +pP7SOPZ0AqLBbyBtQl7RM93hlDECYrq3hkLFEgYZ9s2pbU0vyGqNmK3JOP4ApjsQobO
         0VR9mde15FL1GZzs7GBEGpVvlUuPCqk8bBPtHlv5+7ul4Ehb5d0eFzkheJVgvZ+O2OSz
         jAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6bUho4h3zzyg8mrHSXNWvfp6RptsEnl8G83mOpfY+8A=;
        b=og/xXDOyVkKXIFg1g3qo9IYQzo0NecfhfrjZ/ItYXpyRLy+j4KGcX7J36aB30AWfpS
         kTSWWMehcR3eqCwapvVWz2wAHiF3ACSk4SYolFmF7hGrXeDPA6Bh/VwPCJ9nvxo9SQRd
         zOWnX+v53cX/WgyiC1oxNY6uOwmfDdzge9dXr0me2pIJQqxFsrdPOqW60PfoEaHTDL3A
         6FSx5T6Fh3kG67BH99Nf4gq0KNCsajtWh8qFwuGnL8rGlq3pYp+1rb7o7bGbGiYmaNPg
         XGef3O1iUwWqgzgB6t5/hizcNt5+nc7tT0ZcmGXgV7FL67OPshNW3Q3iNOcUU/fVZmtk
         Gx8g==
X-Gm-Message-State: AOAM532OtjMMYvY/gYfludeSVrzRIp7d9Oma7AhMwLRfsFsbFGkpBIRu
	ncrQlBFjvnrWfyRbkbtva7Y=
X-Google-Smtp-Source: ABdhPJw/Cx1HFbKNuVfKF/lbkCI8c5zDX6pAuLqHOq2y9eMru5aTEj+d6/wIaOiUwpZ/NAFJvnki7A==
X-Received: by 2002:a05:6512:13a1:b0:448:887e:da38 with SMTP id p33-20020a05651213a100b00448887eda38mr4661334lfa.298.1648592073440;
        Tue, 29 Mar 2022 15:14:33 -0700 (PDT)
Received: from localhost.localdomain ([94.103.225.225])
        by smtp.gmail.com with ESMTPSA id h16-20020ac24db0000000b0044aace47e83sm427397lfe.185.2022.03.29.15.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 15:14:33 -0700 (PDT)
From: Pavel Skripkin <paskripkin@gmail.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	christian.koenig@amd.com,
	daniel.vetter@ffwll.ch
Date: Wed, 30 Mar 2022 01:14:25 +0300
Message-Id: <20220329221425.22691-1-paskripkin@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Message-ID-Hash: RF75COOXXJ4GWJ2PMOZCQY2XFC6DPRME
X-Message-ID-Hash: RF75COOXXJ4GWJ2PMOZCQY2XFC6DPRME
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Pavel Skripkin <paskripkin@gmail.com>, syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH next] dma-buf/sync-file: do not allow zero size allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RF75COOXXJ4GWJ2PMOZCQY2XFC6DPRME/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

syzbot reported GPF in dma_fence_array_first(), which is caused by
dereferencing ZERO_PTR in dma-buf internals.

ZERO_PTR was generated in sync_file_merge(). This functuion tries to
reduce allocation size, but does not check if it reducing to 0.

Fix reported bug by validating `index` value before passing it to
krealloc_array().

Fail log:

general protection fault, probably for non-canonical address 0xdffffc0000000002: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000010-0x0000000000000017]
CPU: 1 PID: 3595 Comm: syz-executor814 Not tainted 5.17.0-next-20220328-syzkaller #0
...
RIP: 0010:dma_fence_array_first+0x78/0xb0 drivers/dma-buf/dma-fence-array.c:234
...
Call Trace:
 <TASK>
 __dma_fence_unwrap_array include/linux/dma-fence-unwrap.h:42 [inline]
 dma_fence_unwrap_first include/linux/dma-fence-unwrap.h:57 [inline]
 sync_file_ioctl_fence_info drivers/dma-buf/sync_file.c:414 [inline]
 sync_file_ioctl+0x248/0x22c0 drivers/dma-buf/sync_file.c:477
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:870 [inline]

There was same problem with initial kcalloc() allocation in same
function, so it's fixed as well.

Reported-and-tested-by: syzbot+5c943fe38e86d615cac2@syzkaller.appspotmail.com
Fixes: 519f490db07e ("dma-buf/sync-file: fix warning about fence containers")
Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---
 drivers/dma-buf/sync_file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index b8dea4ec123b..aa744f017008 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -212,7 +212,7 @@ static struct sync_file *sync_file_merge(const char *name, struct sync_file *a,
 	dma_fence_unwrap_for_each(b_fence, &b_iter, b->fence)
 		++num_fences;
 
-	if (num_fences > INT_MAX)
+	if (num_fences > INT_MAX || !num_fences)
 		goto err_free_sync_file;
 
 	fences = kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
@@ -264,7 +264,7 @@ static struct sync_file *sync_file_merge(const char *name, struct sync_file *a,
 	if (index == 0)
 		add_fence(fences, &index, dma_fence_get_stub());
 
-	if (num_fences > index) {
+	if (index && num_fences > index) {
 		struct dma_fence **tmp;
 
 		/* Keep going even when reducing the size failed */
-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

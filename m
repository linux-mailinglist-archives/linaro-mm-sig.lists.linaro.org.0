Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F224F52CB5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 07:06:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30AB9410B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 05:06:43 +0000 (UTC)
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
	by lists.linaro.org (Postfix) with ESMTPS id 207E448066
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 10:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652178244; x=1683714244;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=6VR3oeP5kAd2DRErHPuUEXFtXEbcDzDtOhkw+65RdIA=;
  b=LWBIGHTIMmQsVKJ5NYffAYxe7n2vZ/ArFTatcCx/8+N5AJHxkY0yjZEo
   VwTk/kSLYm8JSLwduCvj+0d8gZcC/jt3OCyEADMlAhimRsQXszRICI/dw
   vY2WIJEhs+umxorpsyZ963lMiXR6J5f2OJ/jmg8WAATn9Bx/468FOTxbY
   Q=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 10 May 2022 03:24:02 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2022 03:24:02 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 03:24:01 -0700
Received: from hu-charante-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 03:23:58 -0700
From: Charan Teja Kalla <quic_charante@quicinc.com>
To: <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
	<daniel.vetter@ffwll.ch>, <gregkh@linuxfoundation.org>,
	<tjmercier@google.com>
Date: Tue, 10 May 2022 15:53:32 +0530
Message-ID: <1652178212-22383-1-git-send-email-quic_charante@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6T7DGMDV3CGKLWG5WDBKXT2IZVWLMQKB
X-Message-ID-Hash: 6T7DGMDV3CGKLWG5WDBKXT2IZVWLMQKB
X-Mailman-Approved-At: Thu, 19 May 2022 05:06:38 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Charan Teja Kalla <quic_charante@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6T7DGMDV3CGKLWG5WDBKXT2IZVWLMQKB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The dmabuf file uses get_next_ino()(through dma_buf_getfile() ->
alloc_anon_inode()) to get an inode number and uses the same as a
directory name under /sys/kernel/dmabuf/buffers/<ino>. This directory is
used to collect the dmabuf stats and it is created through
dma_buf_stats_setup(). At current, failure to create this directory
entry can make the dma_buf_export() to fail.

Now, as the get_next_ino() can definitely give a repetitive inode no
causing the directory entry creation to fail with -EEXIST. This is a
problem on the systems where dmabuf stats functionality is enabled on
the production builds can make the dma_buf_export(), though the dmabuf
memory is allocated successfully, to fail just because it couldn't
create stats entry.

This issue we are able to see on the snapdragon system within 13 days
where there already exists a directory with inode no "122602" so
dma_buf_stats_setup() failed with -EEXIST as it is trying to create
the same directory entry.

To make the directory entry as unique, append the inode creation time to
the inode. With this change the stats directory entries will be in the
format of: /sys/kernel/dmabuf/buffers/<inode no>-<inode creation time in
secs>.

Signed-off-by: Charan Teja Kalla <quic_charante@quicinc.com>
---
 drivers/dma-buf/dma-buf-sysfs-stats.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.c b/drivers/dma-buf/dma-buf-sysfs-stats.c
index 2bba0ba..292cb31 100644
--- a/drivers/dma-buf/dma-buf-sysfs-stats.c
+++ b/drivers/dma-buf/dma-buf-sysfs-stats.c
@@ -192,7 +192,8 @@ int dma_buf_stats_setup(struct dma_buf *dmabuf)
 
 	/* create the directory for buffer stats */
 	ret = kobject_init_and_add(&sysfs_entry->kobj, &dma_buf_ktype, NULL,
-				   "%lu", file_inode(dmabuf->file)->i_ino);
+				   "%lu-%lu", file_inode(dmabuf->file)->i_ino,
+				   file_inode(dmabuf->file)->i_ctime.tv_sec);
 	if (ret)
 		goto err_sysfs_dmabuf;
 
-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

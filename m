Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AB140052D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 20:44:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A226623DB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Sep 2021 18:44:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4441C62166; Fri,  3 Sep 2021 18:44:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 244A161172;
	Fri,  3 Sep 2021 18:44:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 608FC62630
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E667163239; Fri,  3 Sep 2021 18:44:24 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by lists.linaro.org (Postfix) with ESMTPS id 5AABB61B00
 for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Sep 2021 18:44:21 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id v1so66423plo.10
 for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Sep 2021 11:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9nem1cpi4gOKpKGLCYjoRtQFtt8o9c5PZTImpcjZKvE=;
 b=LKAD83XB0VEg3l7w8sZ06HeYmjxV4js1ItmdE2f6y9JO4gI4Xl5oHH3qBHQbkY2e7Z
 kAA0mTLeqAxRybRes1bdaXCG8rrkjhf24fd+1uue33AfpYxDEBl9iMJSEehC4iIF7JcL
 PLogSYquqHGPPXzsLfP8RFJkjganM0XByZB/87im5Z60WzZqXz0EvZ6x1g82MSWj0xRO
 EkPjxSCyuDI8J7efwTyhQoxGg9Af+BA/93HQLJAlJKWEgzQUJ2sUXxfJbjg9t5/WA6lC
 YMxzBQFB7wEkVgSQlzGM/sg+MHzCAI9Ny2/b+3D14+W5oAw8kUoCQWrr0cRBhzLZzs5g
 pOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9nem1cpi4gOKpKGLCYjoRtQFtt8o9c5PZTImpcjZKvE=;
 b=iaQRpD5IHM3podfAZFCl7zI1bJ3W0hF2HpUTX3RYy9AhJIuQSVpdqXvaFYAFeh3wWD
 poD6o+Gmg1cXIYeGJd94OscuAx+1Qvnyc3VA1LRIQ1rT8zcDp+sjbrInyY1YXdqrJ3VR
 K9KdBWXKuZ6Aq9qjjicUPUpK0lWfnSLl4kBQEmhhDpq0fkBK7uVI/BSLWGaGnD0kEHXJ
 bj0nvoXZbvCV27HnyghS1nSYiRIu8CGSg4ePWR6ICtNPjUYQX5bieCddHpaXXr96a9mO
 Ilcc6qKNqsfPnX1vcjrD7nJuWEd3w6f6eaoz7N1w0w+yHYQ7LJE+Tj7GGrxB/qzwPJT1
 gtBQ==
X-Gm-Message-State: AOAM531CKj/nvFRK2ZOgjIWjMvDJIDDQ9BsyP8PgriQh7nj5U8rNtvjH
 RAdAAY/Sce2fIlMEwbg4Y9A=
X-Google-Smtp-Source: ABdhPJyGjeGwkXqEh5bQxSbpscn/Ym2q9Q5yOoGAKWphqGneFJ1WnxAItza/IWMRqPXAEWacgfqekA==
X-Received: by 2002:a17:902:e801:b0:138:8b70:b374 with SMTP id
 u1-20020a170902e80100b001388b70b374mr239531plg.0.1630694660413; 
 Fri, 03 Sep 2021 11:44:20 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 t186sm126836pfb.53.2021.09.03.11.44.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 11:44:19 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  3 Sep 2021 11:47:59 -0700
Message-Id: <20210903184806.1680887-9-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210903184806.1680887-1-robdclark@gmail.com>
References: <20210903184806.1680887-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH v3 8/9] dma-buf/sync_file: Add SET_DEADLINE
 ioctl
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
Cc: Rob Clark <robdclark@chromium.org>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Gustavo Padovan <gustavo@padovan.org>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

The initial purpose is for igt tests, but this would also be useful for
compositors that wait until close to vblank deadline to make decisions
about which frame to show.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
 include/uapi/linux/sync_file.h | 20 ++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index 394e6e1e9686..f295772d5169 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -459,6 +459,22 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
 	return ret;
 }
 
+static int sync_file_ioctl_set_deadline(struct sync_file *sync_file,
+					unsigned long arg)
+{
+	struct sync_set_deadline ts;
+
+	if (copy_from_user(&ts, (void __user *)arg, sizeof(ts)))
+		return -EFAULT;
+
+	if (ts.pad)
+		return -EINVAL;
+
+	dma_fence_set_deadline(sync_file->fence, ktime_set(ts.tv_sec, ts.tv_nsec));
+
+	return 0;
+}
+
 static long sync_file_ioctl(struct file *file, unsigned int cmd,
 			    unsigned long arg)
 {
@@ -471,6 +487,9 @@ static long sync_file_ioctl(struct file *file, unsigned int cmd,
 	case SYNC_IOC_FILE_INFO:
 		return sync_file_ioctl_fence_info(sync_file, arg);
 
+	case SYNC_IOC_SET_DEADLINE:
+		return sync_file_ioctl_set_deadline(sync_file, arg);
+
 	default:
 		return -ENOTTY;
 	}
diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
index ee2dcfb3d660..f67d4ffe7566 100644
--- a/include/uapi/linux/sync_file.h
+++ b/include/uapi/linux/sync_file.h
@@ -67,6 +67,18 @@ struct sync_file_info {
 	__u64	sync_fence_info;
 };
 
+/**
+ * struct sync_set_deadline - set a deadline on a fence
+ * @tv_sec:	seconds elapsed since epoch
+ * @tv_nsec:	nanoseconds elapsed since the time given by the tv_sec
+ * @pad:	must be zero
+ */
+struct sync_set_deadline {
+	__s64	tv_sec;
+	__s32	tv_nsec;
+	__u32	pad;
+};
+
 #define SYNC_IOC_MAGIC		'>'
 
 /**
@@ -95,4 +107,12 @@ struct sync_file_info {
  */
 #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
 
+
+/**
+ * DOC: SYNC_IOC_SET_DEADLINE - set a deadline on a fence
+ *
+ * Allows userspace to set a deadline on a fence, see dma_fence_set_deadline()
+ */
+#define SYNC_IOC_SET_DEADLINE	_IOW(SYNC_IOC_MAGIC, 5, struct sync_set_deadline)
+
 #endif /* _UAPI_LINUX_SYNC_H */
-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

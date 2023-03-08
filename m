Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D63126B0DC8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 16:55:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDB543F0B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Mar 2023 15:55:50 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by lists.linaro.org (Postfix) with ESMTPS id 9CE363F0A8
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 15:53:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Qgty6Jem;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.214.175 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id ky4so18088121plb.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 07:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678290822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4y5b+VjWsIZ7/aQ28FJAoXhXCRI/6ay8CYDf5UDrIsQ=;
        b=Qgty6JemmqndPzrOvTFjpdZYq4HTDRC1Nb/6xQ9mwOXXVtHYWblss0rZOXOun+0brb
         Vn0VmVgiIHeYoANUhgQneDplGRLe/AEM8ojrFvDAhScrvRUu2RNv1ewj/sRzCcWDeKCS
         LXeDrQzld7Y3CdcYFPQv6Dg02+FAgWqYzNO/JlsBqPvAQGP1eiMDM5kWekKp+ikzSBlJ
         RrpAMk86oSm9njXvxu4e4i58S06IwH+lg5lWOovDQRj/dLi+Hq6NGWki5mO3eDwlLD1z
         e0J19KOhAleiZWrrGMWpUk62X8VmJj21NldYbcCgixQ/aXm5mKLM/9tKWEDZugaqhZ1G
         Fagg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678290822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4y5b+VjWsIZ7/aQ28FJAoXhXCRI/6ay8CYDf5UDrIsQ=;
        b=0kGbp3a60TgnG04D5o8EAz1bmKHrMfqZ63KEMJTSygJH/w74mgXEFf22w28RsfG8II
         MwxRgZjHjFI1bNyMweqDgUFCj0Kuq0/o8OMMXeUKNhSQj1s2dzFTtSAudY6AOCpOo053
         aLrd2cxMgeBLUfLih8cnBZL+LaDNKluK+CWQUalmhG2qniowPc8I+MipMbQ4oHA4MmNH
         WLZNbW0j4bmBQ7Z7Gx/x9wpDHtMYfCUn4aI7EUXWNLKgRmoKmxOWE6EUjYPLTxRFpuL7
         v3KqDgLo/3/XOFEejLq/9f3Qgn64tx/y0zgc8btd1sUEb5p9nppGcEPROQFRGyRwq/ls
         fAKQ==
X-Gm-Message-State: AO0yUKV1oJ7cgIPO6UomqzM5ye8C73JJfyM2xxKwO1eIk/e4vm5am1yO
	pJ8jYjgno2dFK5BI9pfyMRU=
X-Google-Smtp-Source: AK7set+slEwuyhiM7J+t4oZEWiZ6d/QJzILZsLHwV9a8j3akEhhWZmIVSvWagsgajmw3hvccg7AyNQ==
X-Received: by 2002:a17:90b:3a82:b0:237:c5cc:15bf with SMTP id om2-20020a17090b3a8200b00237c5cc15bfmr18947277pjb.13.1678290821736;
        Wed, 08 Mar 2023 07:53:41 -0800 (PST)
Received: from localhost ([2a00:79e1:abd:4a00:61b:48ed:72ab:435b])
        by smtp.gmail.com with ESMTPSA id h9-20020a17090acf0900b00219752c8ea5sm8987481pju.37.2023.03.08.07.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 07:53:41 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Mar 2023 07:52:57 -0800
Message-Id: <20230308155322.344664-7-robdclark@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308155322.344664-1-robdclark@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9CE363F0A8
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.175:from];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,gmail.com,intel.com,basnieuwenhuizen.nl,chromium.org,collabora.com,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: M4AE4U5V3ASYAOCN6FROSZLDWKHECZ2N
X-Message-ID-Hash: M4AE4U5V3ASYAOCN6FROSZLDWKHECZ2N
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Turner <mattst88@gmail.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Rob Clark <robdclark@chromium.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v10 06/15] dma-buf/sync_file: Add SET_DEADLINE ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M4AE4U5V3ASYAOCN6FROSZLDWKHECZ2N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

The initial purpose is for igt tests, but this would also be useful for
compositors that wait until close to vblank deadline to make decisions
about which frame to show.

The igt tests can be found at:

https://gitlab.freedesktop.org/robclark/igt-gpu-tools/-/commits/fence-deadline

v2: Clarify the timebase, add link to igt tests
v3: Use u64 value in ns to express deadline.
v4: More doc

Signed-off-by: Rob Clark <robdclark@chromium.org>
Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
---
 drivers/dma-buf/dma-fence.c    |  3 ++-
 drivers/dma-buf/sync_file.c    | 19 +++++++++++++++++++
 include/uapi/linux/sync_file.h | 22 ++++++++++++++++++++++
 3 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
index f177c56269bb..74e36f6d05b0 100644
--- a/drivers/dma-buf/dma-fence.c
+++ b/drivers/dma-buf/dma-fence.c
@@ -933,7 +933,8 @@ EXPORT_SYMBOL(dma_fence_wait_any_timeout);
  *   the GPU's devfreq to reduce frequency, when in fact the opposite is what is
  *   needed.
  *
- * To this end, deadline hint(s) can be set on a &dma_fence via &dma_fence_set_deadline.
+ * To this end, deadline hint(s) can be set on a &dma_fence via &dma_fence_set_deadline
+ * (or indirectly via userspace facing ioctls like &sync_set_deadline).
  * The deadline hint provides a way for the waiting driver, or userspace, to
  * convey an appropriate sense of urgency to the signaling driver.
  *
diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index af57799c86ce..418021cfb87c 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -350,6 +350,22 @@ static long sync_file_ioctl_fence_info(struct sync_file *sync_file,
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
+	dma_fence_set_deadline(sync_file->fence, ns_to_ktime(ts.deadline_ns));
+
+	return 0;
+}
+
 static long sync_file_ioctl(struct file *file, unsigned int cmd,
 			    unsigned long arg)
 {
@@ -362,6 +378,9 @@ static long sync_file_ioctl(struct file *file, unsigned int cmd,
 	case SYNC_IOC_FILE_INFO:
 		return sync_file_ioctl_fence_info(sync_file, arg);
 
+	case SYNC_IOC_SET_DEADLINE:
+		return sync_file_ioctl_set_deadline(sync_file, arg);
+
 	default:
 		return -ENOTTY;
 	}
diff --git a/include/uapi/linux/sync_file.h b/include/uapi/linux/sync_file.h
index 7e42a5b7558b..d61752dca4c6 100644
--- a/include/uapi/linux/sync_file.h
+++ b/include/uapi/linux/sync_file.h
@@ -76,6 +76,27 @@ struct sync_file_info {
 	__u64	sync_fence_info;
 };
 
+/**
+ * struct sync_set_deadline - SYNC_IOC_SET_DEADLINE - set a deadline hint on a fence
+ * @deadline_ns: absolute time of the deadline
+ * @pad:	must be zero
+ *
+ * Allows userspace to set a deadline on a fence, see &dma_fence_set_deadline
+ *
+ * The timebase for the deadline is CLOCK_MONOTONIC (same as vblank).  For
+ * example
+ *
+ *     clock_gettime(CLOCK_MONOTONIC, &t);
+ *     deadline_ns = (t.tv_sec * 1000000000L) + t.tv_nsec + ns_until_deadline
+ */
+struct sync_set_deadline {
+	__u64	deadline_ns;
+	/* Not strictly needed for alignment but gives some possibility
+	 * for future extension:
+	 */
+	__u64	pad;
+};
+
 #define SYNC_IOC_MAGIC		'>'
 
 /*
@@ -87,5 +108,6 @@ struct sync_file_info {
 
 #define SYNC_IOC_MERGE		_IOWR(SYNC_IOC_MAGIC, 3, struct sync_merge_data)
 #define SYNC_IOC_FILE_INFO	_IOWR(SYNC_IOC_MAGIC, 4, struct sync_file_info)
+#define SYNC_IOC_SET_DEADLINE	_IOW(SYNC_IOC_MAGIC, 5, struct sync_set_deadline)
 
 #endif /* _UAPI_LINUX_SYNC_H */
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

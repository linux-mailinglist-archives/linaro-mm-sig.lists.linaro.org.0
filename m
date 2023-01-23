Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1B1678610
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 20:18:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0303443F5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 19:18:45 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	by lists.linaro.org (Postfix) with ESMTPS id 9E94C443FB
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 19:18:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b="CLJ2JxK/";
	spf=pass (lists.linaro.org: domain of 3a93OYwkKDYY3two1mso1qyyqvo.mywvsxk1y-ww-2sqvs232.vsxk1y.y1q@flex--tjmercier.bounces.google.com designates 209.85.219.201 as permitted sender) smtp.mailfrom=3a93OYwkKDYY3two1mso1qyyqvo.mywvsxk1y-ww-2sqvs232.vsxk1y.y1q@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f201.google.com with SMTP id r8-20020a252b08000000b007b989d5e105so14080466ybr.11
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 11:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=9WOZzSEfhu/PT9TWBWMQDCCNsrofWV34oFDU/0sj1mQ=;
        b=CLJ2JxK/Tm4oa2T67r1/7AoCewa4cPoaCpXx/gVHbZ1m+FYlbdBISpcie92wke9qiT
         ywnZGTRRWgUyvtV2GeIN6CSF1A1BpACoPsOvCJSqkdka36IG7lwA9jHJB0/1Y37BiDn6
         UZyz4QR44eh7OHGKOjLnRuXG7qELlMRlfRNYaxnDlTMYAnQZZAKF7GLGFraikV5q7pPa
         PqEGE55YfXGgQoOaL42PCJmSLM5OLIrr2pXTamoSK+ZBJQZ3xablgI1e6ZxykShX+C1V
         OGCeujU9/+VSQurUIb0N4LKyFw0PX0Xvt3l2bOlWDy6qNiZqzVXsJcA5m/zeCrF4rUUR
         ohNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9WOZzSEfhu/PT9TWBWMQDCCNsrofWV34oFDU/0sj1mQ=;
        b=vO5GnTY+eR8Un/E3AEsdfGhUCxpsiahtZUog13/nvR7wZwpCDFNikN6bqD7SncPFC1
         ZBKPImDiJNoHMj2ZJbELT+w3CBiGotz+++UPUIoTPcAWPU6hSGh9BlGiK++VCo0EFiKY
         uxs9/W/gAHr9JiNHuipmjrZk55f3ZWKoy1LRGW/y6meHblvoDDWROSK9iwyz1D/2hfwi
         GgFeCB0Tizg6Opo3E95oOiEQyMXj60tC86sqrLNd6J8ePrUTxyEuX5LCvf1lW86pvief
         WMYej8UN/rjvYdPMessYhVWzb5OAi4JDI47/LhXBMYdP2Fm62IEkPK/byzI5nyoPvwQa
         HKxw==
X-Gm-Message-State: AFqh2kop6aunsaxY/GLIk52ldYKKSvRrXnxHFypGzsQ/g9t52auYPScv
	G0u+lsThdMv3uTp62OffuE65IzYrSCOLBjg=
X-Google-Smtp-Source: AMrXdXt5UsJV8XnGROzCqwUjMEtxGJTY0AAa2SUnm4rAwiP8wDQKiwcGvs1ceYITQIG6UCVtpU2h3/VNxLbuwi8=
X-Received: from tj.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:53a])
 (user=tjmercier job=sendgmr) by 2002:a25:dc92:0:b0:7b0:3379:9c00 with SMTP id
 y140-20020a25dc92000000b007b033799c00mr3149691ybe.359.1674501483256; Mon, 23
 Jan 2023 11:18:03 -0800 (PST)
Date: Mon, 23 Jan 2023 19:17:24 +0000
In-Reply-To: <20230123191728.2928839-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20230123191728.2928839-1-tjmercier@google.com>
X-Mailer: git-send-email 2.39.0.246.g2a6d74b583-goog
Message-ID: <20230123191728.2928839-3-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E94C443FB
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3a93OYwkKDYY3two1mso1qyyqvo.mywvsxk1y-ww-2sqvs232.vsxk1y.y1q@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.201:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3a93OYwkKDYY3two1mso1qyyqvo.mywvsxk1y-ww-2sqvs232.vsxk1y.y1q@flex--tjmercier.bounces.google.com];
	NEURAL_HAM(-0.00)[-0.985];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: KQT2FXJA2I3TTAMXG2WJ7X7LNSGV353O
X-Message-ID-Hash: KQT2FXJA2I3TTAMXG2WJ7X7LNSGV353O
X-MailFrom: 3a93OYwkKDYY3two1mso1qyyqvo.mywvsxk1y-ww-2sqvs232.vsxk1y.y1q@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: hannes@cmpxchg.org, android-mm@google.com, jstultz@google.com, jeffv@google.com, cmllamas@google.com, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, cgroups@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/4] dmabuf: Add cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KQT2FXJA2I3TTAMXG2WJ7X7LNSGV353O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The dma_buf_transfer_charge function provides a way for processes to
transfer charge of a buffer to a different cgroup. This is essential
for the cases where a central allocator process does allocations for
various subsystems, hands over the fd to the client who requested the
memory, and drops all references to the allocated memory.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 drivers/dma-buf/dma-buf.c  | 56 ++++++++++++++++++++++++++++++++++++++
 include/linux/dma-buf.h    |  1 +
 include/linux/memcontrol.h |  5 ++++
 3 files changed, 62 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index a6a8cb5cb32d..ac3d02a7ecf8 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -11,6 +11,7 @@
  * refining of this idea.
  */
 
+#include <linux/atomic.h>
 #include <linux/fs.h>
 #include <linux/slab.h>
 #include <linux/dma-buf.h>
@@ -1626,6 +1627,61 @@ void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_vunmap_unlocked, DMA_BUF);
 
+/**
+ * dma_buf_transfer_charge - Change the cgroup to which the provided dma_buf is charged.
+ * @dmabuf_file:	[in]	file for buffer whose charge will be migrated to a different cgroup
+ * @target:		[in]	the task_struct of the destination process for the cgroup charge
+ *
+ * Only tasks that belong to the same cgroup the buffer is currently charged to
+ * may call this function, otherwise it will return -EPERM.
+ *
+ * Returns 0 on success, or a negative errno code otherwise.
+ */
+int dma_buf_transfer_charge(struct file *dmabuf_file, struct task_struct *target)
+{
+	struct mem_cgroup *current_cg, *target_cg;
+	struct dma_buf *dmabuf;
+	unsigned int nr_pages;
+	int ret = 0;
+
+	if (!IS_ENABLED(CONFIG_MEMCG))
+		return 0;
+
+	if (WARN_ON(!dmabuf_file) || WARN_ON(!target))
+		return -EINVAL;
+
+	if (!is_dma_buf_file(dmabuf_file))
+		return -EBADF;
+	dmabuf = dmabuf_file->private_data;
+
+	nr_pages = PAGE_ALIGN(dmabuf->size) / PAGE_SIZE;
+	current_cg = mem_cgroup_from_task(current);
+	target_cg = get_mem_cgroup_from_mm(target->mm);
+
+	if (current_cg == target_cg)
+		goto skip_transfer;
+
+	if (!mem_cgroup_charge_dmabuf(target_cg, nr_pages, GFP_KERNEL)) {
+		ret = -ENOMEM;
+		goto skip_transfer;
+	}
+
+	if (cmpxchg(&dmabuf->memcg, current_cg, target_cg) != current_cg) {
+		/* Only the current owner can transfer the charge */
+		ret = -EPERM;
+		mem_cgroup_uncharge_dmabuf(target_cg, nr_pages);
+		goto skip_transfer;
+	}
+
+	mem_cgroup_uncharge_dmabuf(current_cg, nr_pages);
+	mem_cgroup_put(current_cg); /* unref from buffer - buffer keeps new ref to target_cg */
+	return 0;
+
+skip_transfer:
+	mem_cgroup_put(target_cg);
+	return ret;
+}
+
 #ifdef CONFIG_DEBUG_FS
 static int dma_buf_debug_show(struct seq_file *s, void *unused)
 {
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 1f0ffb8e4bf5..f25eb8e60fb2 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -634,4 +634,5 @@ int dma_buf_vmap(struct dma_buf *dmabuf, struct iosys_map *map);
 void dma_buf_vunmap(struct dma_buf *dmabuf, struct iosys_map *map);
 int dma_buf_vmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
 void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
+int dma_buf_transfer_charge(struct file *dmabuf_file, struct task_struct *target);
 #endif /* __DMA_BUF_H__ */
diff --git a/include/linux/memcontrol.h b/include/linux/memcontrol.h
index c10b8565fdbf..009298a446fe 100644
--- a/include/linux/memcontrol.h
+++ b/include/linux/memcontrol.h
@@ -1335,6 +1335,11 @@ struct mem_cgroup *mem_cgroup_from_css(struct cgroup_subsys_state *css)
 	return NULL;
 }
 
+static inline struct mem_cgroup *mem_cgroup_from_task(struct task_struct *p)
+{
+	return NULL;
+}
+
 static inline void obj_cgroup_put(struct obj_cgroup *objcg)
 {
 }
-- 
2.39.0.246.g2a6d74b583-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

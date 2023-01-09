Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0145E663336
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 22:39:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 117633F444
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 21:39:05 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	by lists.linaro.org (Postfix) with ESMTPS id 7B7D83F2CE
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Jan 2023 21:38:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=fvDtcLae;
	spf=pass (lists.linaro.org: domain of 3U4m8YwkKDXwyorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com designates 209.85.128.202 as permitted sender) smtp.mailfrom=3U4m8YwkKDXwyorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-46eb8a5a713so105024117b3.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Jan 2023 13:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=jsT6wq4yb7S+NdjklyWb1ngjMGzkBXwNX+64A3lfzpA=;
        b=fvDtcLaeN/uzP3qHT8MCEklfe9OhLf6lmImIfuCacJYjG57XiBued7S3DOodRE/TYJ
         zCKNDg3ctqd3Dd67SPwPhW8ysEt0WGDBME6NGDgBcM5YrM326jXvkSXkPWXqmZwxbxsz
         JlJKx2q3UL/4NVtdfwNCMCP7QlTJxXBQXsxWNIIGkTyzBjhTdHqnlRz7A6SrrXEGohYg
         Y1TskQ4j5YZqdyazr4xhq4xZW9Gypy/dhRHNo7P2nwjIq6XxOhFfSm8keT19RigyoUi+
         Lj952kU65FcH0FMfMGjpPdMsLkeIqjmWXAgeBMVlEt6SVmi5tV7uui22G7kOc9eQRFhz
         T4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jsT6wq4yb7S+NdjklyWb1ngjMGzkBXwNX+64A3lfzpA=;
        b=3dXnRc3bEjRjHXRv4LoTsw8lEo4cWfc8S2jZH9F9wVH54m5Pu9jlV5zzL/IUvvermU
         Oaah+zBE5Lo5Xcz7rrgliAQ2qGGNWJhQHzfTY92CGMJudJNQhhAdLZ6wpsKUiETNnfQP
         Zcjpy04RTNRuFkmg8qJcYYG6fYgFPwUx4/OVKCK9Zv86IqeXYKPzbsRN1F9h3Xj9D/66
         KNkNS7sW9kPuoIYJTMItGwCIRZkKI07a5SJECGd15Agm9rs7DNEsaB2VO9L13XhNbDA6
         e0l3vzx3aAaIrYqgmiADzV9mg7cIui9SizcqXanSSGpTXXR2GRR7V0Euwb5uBn0VA+I1
         U6fQ==
X-Gm-Message-State: AFqh2kpOdyZoNWMlYBELuIOXRNTDfnNykonX6JBLmdwri/dP+nLQ7Kj2
	8EClNvF9n3DILmJpMo/907DvYPThl91BJr0=
X-Google-Smtp-Source: AMrXdXtIpfaXFqcDGkNsmQctSMqXPQ/tLvykMkynrX+C5cGc1INOkvBaGX4j41udFUeKmd51zadys8k1Cp1SKbA=
X-Received: from tj.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:53a])
 (user=tjmercier job=sendgmr) by 2002:a0d:e241:0:b0:48f:a921:40f2 with SMTP id
 l62-20020a0de241000000b0048fa92140f2mr5685523ywe.275.1673300307137; Mon, 09
 Jan 2023 13:38:27 -0800 (PST)
Date: Mon,  9 Jan 2023 21:38:05 +0000
In-Reply-To: <20230109213809.418135-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20230109213809.418135-1-tjmercier@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20230109213809.418135-3-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>
X-Spamd-Result: default: False [-6.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3U4m8YwkKDXwyorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.202:from];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3U4m8YwkKDXwyorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.202:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.679];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7B7D83F2CE
X-Spamd-Bar: ------
Message-ID-Hash: 3SM436YXXFC4AD7KIGIQFDSOY53DCA4H
X-Message-ID-Hash: 3SM436YXXFC4AD7KIGIQFDSOY53DCA4H
X-MailFrom: 3U4m8YwkKDXwyorjwhnjwlttlqj.htrqnsfwt-rr-xnlqnxyx.qnsfwt.twl@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: hannes@cmpxchg.org, android-mm@google.com, jstultz@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/4] dmabuf: Add cgroup charge transfer function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3SM436YXXFC4AD7KIGIQFDSOY53DCA4H/>
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
 drivers/dma-buf/dma-buf.c  | 45 ++++++++++++++++++++++++++++++++++++++
 include/linux/dma-buf.h    |  1 +
 include/linux/memcontrol.h |  6 +++++
 3 files changed, 52 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index ac45dd101c4d..fd6c5002032b 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -11,6 +11,7 @@
  * refining of this idea.
  */
 
+#include <linux/atomic.h>
 #include <linux/fs.h>
 #include <linux/slab.h>
 #include <linux/dma-buf.h>
@@ -1618,6 +1619,50 @@ void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map)
 }
 EXPORT_SYMBOL_NS_GPL(dma_buf_vunmap_unlocked, DMA_BUF);
 
+/**
+ * dma_buf_transfer_charge - Change the cgroup to which the provided dma_buf is charged.
+ * @dmabuf:	[in]	buffer whose charge will be migrated to a different cgroup
+ * @target:	[in]	the task_struct of the destination process for the cgroup charge
+ *
+ * Only tasks that belong to the same cgroup the buffer is currently charged to
+ * may call this function, otherwise it will return -EPERM.
+ *
+ * Returns 0 on success, or a negative errno code otherwise.
+ */
+int dma_buf_transfer_charge(struct dma_buf *dmabuf, struct task_struct *target)
+{
+	struct mem_cgroup *current_cg, *target_cg;
+	int ret = 0;
+
+	if (!IS_ENABLED(CONFIG_MEMCG))
+		return 0;
+
+	if (WARN_ON(!dmabuf) || WARN_ON(!target))
+		return -EINVAL;
+
+	current_cg = mem_cgroup_from_task(current);
+	target_cg = get_mem_cgroup_from_mm(target->mm);
+
+	if (current_cg == target_cg)
+		goto skip_transfer;
+
+	if (cmpxchg(&dmabuf->memcg, current_cg, target_cg) != current_cg) {
+		/* Only the current owner can transfer the charge */
+		ret = -EPERM;
+		goto skip_transfer;
+	}
+
+	mod_memcg_state(current_cg, MEMCG_DMABUF, -dmabuf->size);
+	mod_memcg_state(target_cg, MEMCG_DMABUF, dmabuf->size);
+
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
index 1f0ffb8e4bf5..6aa128d76aa7 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -634,4 +634,5 @@ int dma_buf_vmap(struct dma_buf *dmabuf, struct iosys_map *map);
 void dma_buf_vunmap(struct dma_buf *dmabuf, struct iosys_map *map);
 int dma_buf_vmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
 void dma_buf_vunmap_unlocked(struct dma_buf *dmabuf, struct iosys_map *map);
+int dma_buf_transfer_charge(struct dma_buf *dmabuf, struct task_struct *target);
 #endif /* __DMA_BUF_H__ */
diff --git a/include/linux/memcontrol.h b/include/linux/memcontrol.h
index 1c1da2da20a6..e5aec27044c7 100644
--- a/include/linux/memcontrol.h
+++ b/include/linux/memcontrol.h
@@ -1298,6 +1298,12 @@ struct mem_cgroup *mem_cgroup_from_css(struct cgroup_subsys_state *css)
 	return NULL;
 }
 
+static inline
+struct mem_cgroup *mem_cgroup_from_task(struct task_struct *p)
+{
+	return NULL;
+}
+
 static inline void obj_cgroup_put(struct obj_cgroup *objcg)
 {
 }
-- 
2.39.0.314.g84b9a713c41-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

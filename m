Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FFCA88F90
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 00:53:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86B8F443A1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 22:53:20 +0000 (UTC)
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	by lists.linaro.org (Postfix) with ESMTPS id 405C64598E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 22:53:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=zJHchwRb;
	spf=pass (lists.linaro.org: domain of 3zpH9ZwkKDS8eUXPcNTPcRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--tjmercier.bounces.google.com designates 209.85.214.201 as permitted sender) smtp.mailfrom=3zpH9ZwkKDS8eUXPcNTPcRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-224347aef79so64360005ad.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 15:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744671182; x=1745275982; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=uJrdRumDqZ5uqDqo6HIvT1i7XS9qBKy2EYr2kcfYfkI=;
        b=zJHchwRbDb7T69/WQSDioKjURDTvG8V5JPXZymJ4e8Qgvl3EUYL4IqZ7HW5PdDGsYR
         MyGVlhWr7nfr2uDS//hlUvNq6bvKu1G2nVTwPa9J1bB6bUNQMGy50mANPRDLXmVRFxug
         KpNy3+bimQza8YZhSQ4t9fpcsqi98pT3pTqYpV2vf90dvv2TIhODEMxK7Htk3Kha4CLS
         uqPtXBL0NPD5b/P7n8lQSypdPSQy8RdTuxcPAilGXY2YbHavGEu0dACNzzVsR0hdzpOH
         fPORFrAX4maWifM++yuTPl4Mzr3U0gPBtTBTZ2o9DmRSwyKnRuHQEmWtaitJz3doQjF0
         BfRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744671182; x=1745275982;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uJrdRumDqZ5uqDqo6HIvT1i7XS9qBKy2EYr2kcfYfkI=;
        b=lPEuzD9NzM2XDqmZW848jlKafAKeu7n+C9w7l4YmKyPC9rvuMAjwlZ72ggWFiGhKYz
         bcYCgKeNDl6J4R/2YazDenqayCrAmz8XrTeqWRAAEh9Faxgu6V52mK2QKKeNfgvZdqw+
         CeVZM5XBAl9eXy4O0tsQYjWTPNCGL91o8KbWlg5eiTV+l/5OWQlY1zp52yJNUlc2kFY4
         ic7U2cIv6tIrQnjO7a4rIPvVB/ekMxdL09XzUJw+MqjyWZx0KdU+a5moPg8HcFlkcRJj
         qcAnhMuaKyOh8+AcePhsbIHND1RpZ80KE5CxhZ8RVDcjsxfB5LrUm6vLUtkfFo74Fj5R
         1s0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVYbqDYADOYHTb7HIlyjChYM44qyx+onABX6NOfDORbpMOe0LM+1HaWby4NyG1bU236cuVx80vwEoRimVaq@lists.linaro.org
X-Gm-Message-State: AOJu0YzTz+dgDuA/ZA0mFI8R55/o6Meywh9H147+n+hN5o/6/+32MWJn
	0Ihl6yIDutVSTabOX8poG05N2GAjQ1cK+MEq3aCt/EsGyHN5aCPHpj+Ye9CPaXD7qF6sXdTwqgx
	BUntCJF3VNEn/qQ==
X-Google-Smtp-Source: AGHT+IHdhGyVRFQrYACqs6CpKKEAPawP/7gzm2A4TvPbteK5I88D550DNb1nfh3BQI2ey0zXeU9GGoMDGDE66H8=
X-Received: from pllw4.prod.google.com ([2002:a17:902:7b84:b0:220:d668:ff81])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:903:1b2f:b0:215:a179:14ca with SMTP id d9443c01a7336-22bea49529cmr197698465ad.2.1744671182407;
 Mon, 14 Apr 2025 15:53:02 -0700 (PDT)
Date: Mon, 14 Apr 2025 22:52:24 +0000
In-Reply-To: <20250414225227.3642618-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250414225227.3642618-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org
X-Rspamd-Queue-Id: 405C64598E
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.214.201:from];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3zpH9ZwkKDS8eUXPcNTPcRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.201:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,kernel.org,linux.dev,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.214.201:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3zpH9ZwkKDS8eUXPcNTPcRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3PUGD3SJCJSLHQFSMQZU4RXCG53SNCOB
X-Message-ID-Hash: 3PUGD3SJCJSLHQFSMQZU4RXCG53SNCOB
X-MailFrom: 3zpH9ZwkKDS8eUXPcNTPcRZZRWP.NZXWTYLcZ-XX-dTRWTded.WTYLcZ.ZcR@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, song@kernel.org, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dma-buf: Rename and expose debugfs symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3PUGD3SJCJSLHQFSMQZU4RXCG53SNCOB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Expose the debugfs list and mutex so they are usable for the creation of
a BPF iterator for dmabufs. Rename the symbols so it's clear they
contain dmabufs and not some other type.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 drivers/dma-buf/dma-buf.c | 22 +++++++++++-----------
 include/linux/dma-buf.h   |  6 ++++++
 2 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 5baa83b85515..affb47eb8629 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -36,14 +36,14 @@
 static inline int is_dma_buf_file(struct file *);
 
 #if IS_ENABLED(CONFIG_DEBUG_FS)
-static DEFINE_MUTEX(debugfs_list_mutex);
-static LIST_HEAD(debugfs_list);
+DEFINE_MUTEX(dmabuf_debugfs_list_mutex);
+LIST_HEAD(dmabuf_debugfs_list);
 
 static void __dma_buf_debugfs_list_add(struct dma_buf *dmabuf)
 {
-	mutex_lock(&debugfs_list_mutex);
-	list_add(&dmabuf->list_node, &debugfs_list);
-	mutex_unlock(&debugfs_list_mutex);
+	mutex_lock(&dmabuf_debugfs_list_mutex);
+	list_add(&dmabuf->list_node, &dmabuf_debugfs_list);
+	mutex_unlock(&dmabuf_debugfs_list_mutex);
 }
 
 static void __dma_buf_debugfs_list_del(struct dma_buf *dmabuf)
@@ -51,9 +51,9 @@ static void __dma_buf_debugfs_list_del(struct dma_buf *dmabuf)
 	if (!dmabuf)
 		return;
 
-	mutex_lock(&debugfs_list_mutex);
+	mutex_lock(&dmabuf_debugfs_list_mutex);
 	list_del(&dmabuf->list_node);
-	mutex_unlock(&debugfs_list_mutex);
+	mutex_unlock(&dmabuf_debugfs_list_mutex);
 }
 #else
 static void __dma_buf_debugfs_list_add(struct dma_buf *dmabuf)
@@ -1630,7 +1630,7 @@ static int dma_buf_debug_show(struct seq_file *s, void *unused)
 	size_t size = 0;
 	int ret;
 
-	ret = mutex_lock_interruptible(&debugfs_list_mutex);
+	ret = mutex_lock_interruptible(&dmabuf_debugfs_list_mutex);
 
 	if (ret)
 		return ret;
@@ -1639,7 +1639,7 @@ static int dma_buf_debug_show(struct seq_file *s, void *unused)
 	seq_printf(s, "%-8s\t%-8s\t%-8s\t%-8s\texp_name\t%-8s\tname\n",
 		   "size", "flags", "mode", "count", "ino");
 
-	list_for_each_entry(buf_obj, &debugfs_list, list_node) {
+	list_for_each_entry(buf_obj, &dmabuf_debugfs_list, list_node) {
 
 		ret = dma_resv_lock_interruptible(buf_obj->resv, NULL);
 		if (ret)
@@ -1676,11 +1676,11 @@ static int dma_buf_debug_show(struct seq_file *s, void *unused)
 
 	seq_printf(s, "\nTotal %d objects, %zu bytes\n", count, size);
 
-	mutex_unlock(&debugfs_list_mutex);
+	mutex_unlock(&dmabuf_debugfs_list_mutex);
 	return 0;
 
 error_unlock:
-	mutex_unlock(&debugfs_list_mutex);
+	mutex_unlock(&dmabuf_debugfs_list_mutex);
 	return ret;
 }
 
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 36216d28d8bd..7754608453dc 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -18,6 +18,7 @@
 #include <linux/err.h>
 #include <linux/scatterlist.h>
 #include <linux/list.h>
+#include <linux/mutex.h>
 #include <linux/dma-mapping.h>
 #include <linux/fs.h>
 #include <linux/dma-fence.h>
@@ -556,6 +557,11 @@ struct dma_buf_export_info {
 	struct dma_buf_export_info name = { .exp_name = KBUILD_MODNAME, \
 					 .owner = THIS_MODULE }
 
+#if IS_ENABLED(CONFIG_DEBUG_FS)
+extern struct list_head dmabuf_debugfs_list;
+extern struct mutex dmabuf_debugfs_list_mutex;
+#endif
+
 /**
  * get_dma_buf - convenience wrapper for get_file.
  * @dmabuf:	[in]	pointer to dma_buf
-- 
2.49.0.604.gff1f9ca942-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

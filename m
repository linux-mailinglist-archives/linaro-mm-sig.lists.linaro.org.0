Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613DA88F96
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 00:53:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8028B4453C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 22:53:35 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id AC92E44A14
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 22:53:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="NmilD/cg";
	spf=pass (lists.linaro.org: domain of 305H9ZwkKDTQjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=305H9ZwkKDTQjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-3011bee1751so4147131a91.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 15:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744671188; x=1745275988; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Te3lUbwZ2e402n8prt5NUot7zPEUxb8izsCNx6llZ0U=;
        b=NmilD/cgA6OjTgj+QfPdYmainaZOW3yOZktFuizf0PVvMWcG5dHCfKHMfOiqJMwb+o
         hNeiTRmkB9o/TR0AAiv+EZOpp9lHQ48GCZXPAtwhl5duThZNlR3/YaSgTCa3TWji1rtK
         L1s+jZUJtIOAYO9fGveQe97Es4zIA07MBMWwXByldDiC7ruvKrxFsFml+hMnHr3WG37u
         intKq2aBWlRB1nmioiwbAZbxcaFqegr7x/q1THZMCUjvairVI9Xk1nAz5taaDMcgOZjB
         FcDUeBATxtsWWvFghcv5J5jtUqm6lie7pwQGeTSbj73hLIjWuBkJBFketHp33SGcKeUh
         KFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744671188; x=1745275988;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Te3lUbwZ2e402n8prt5NUot7zPEUxb8izsCNx6llZ0U=;
        b=hDF3SnD1T2k2DgO6QNdpvdD6bntw+xvrGxaTtA6EdT6vggU1oL5H93Am4OncLzWP8L
         D+0qfHbtvaeETYo90NU6xoYQV1LLmc+tHu9bHFHUyQAtlWyzm6lA92Xk4NqLJeyzuWUU
         O0Nj8UVrGwJsfQK/9HVA0xhU3rJqmbafE8xVG4QRJfOcKatIDt1NNBYPfTOx4QeWqICl
         10wdhXXJZEkuotNo4ttz++Kdv505ZbblzDLezA4VB1IQ453yScZ57x42U5OW7hRM5tc9
         rGyhaD+yA/AqmsiBPA776Dc7TGhmQ1qUBWMNP/aEYmb+LaX5H4c5lhd3wtiaFhSsUUgh
         inAA==
X-Forwarded-Encrypted: i=1; AJvYcCVnlJDUr5w9HHUg29A0bozEz5y4c0ki3/oOfnl/LE2gfz7i6DVOhE5RUoTALixkgFmlW/caX4f7nGnZM2cR@lists.linaro.org
X-Gm-Message-State: AOJu0YyCNRdierMMIV20/k7ygRQTfypArO+5myvFgrD0Cjd51J45lUmE
	xTFR/WqeCPHDs4vkW+0oK4EMRlJksXO8zsp/SLwjgzdpfkIgi3nw0FcGuCCejj7GW4H+U2QZGEz
	3b3hSwq2n7xwvfA==
X-Google-Smtp-Source: AGHT+IFby0+3fZ+dlbvnlnn/PuiXCtm12W3q3xJ1huaS9epNl9xvSzvIQXz19TFGLLtbJ8r7RNzWm6OwL70SRho=
X-Received: from pjvf15.prod.google.com ([2002:a17:90a:da8f:b0:2fc:2c9c:880])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90a:d64e:b0:301:1bce:c252 with SMTP id 98e67ed59e1d1-30823672e78mr19733269a91.27.1744671187842;
 Mon, 14 Apr 2025 15:53:07 -0700 (PDT)
Date: Mon, 14 Apr 2025 22:52:25 +0000
In-Reply-To: <20250414225227.3642618-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.604.gff1f9ca942-goog
Message-ID: <20250414225227.3642618-3-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org
X-Rspamd-Queue-Id: AC92E44A14
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.216.74:from];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,305H9ZwkKDTQjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,kernel.org,linux.dev,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.216.74:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,305H9ZwkKDTQjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: D66G3PLVAR7KSE4M4BKDG2V2Z7CIYHUR
X-Message-ID-Hash: D66G3PLVAR7KSE4M4BKDG2V2Z7CIYHUR
X-MailFrom: 305H9ZwkKDTQjZcUhSYUhWeeWbU.SecbYdQhe-cc-iYWbYiji.bYdQhe.ehW@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, song@kernel.org, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D66G3PLVAR7KSE4M4BKDG2V2Z7CIYHUR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The dmabuf iterator traverses the list of all DMA buffers. The list is
maintained only when CONFIG_DEBUG_FS is enabled.

DMA buffers are refcounted through their associated struct file. A
reference is taken on each buffer as the list is iterated to ensure each
buffer persists for the duration of the bpf program execution without
holding the list mutex.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 include/linux/btf_ids.h  |   1 +
 kernel/bpf/Makefile      |   3 +
 kernel/bpf/dmabuf_iter.c | 130 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 134 insertions(+)
 create mode 100644 kernel/bpf/dmabuf_iter.c

diff --git a/include/linux/btf_ids.h b/include/linux/btf_ids.h
index 139bdececdcf..899ead57d89d 100644
--- a/include/linux/btf_ids.h
+++ b/include/linux/btf_ids.h
@@ -284,5 +284,6 @@ extern u32 bpf_cgroup_btf_id[];
 extern u32 bpf_local_storage_map_btf_id[];
 extern u32 btf_bpf_map_id[];
 extern u32 bpf_kmem_cache_btf_id[];
+extern u32 bpf_dmabuf_btf_id[];
 
 #endif
diff --git a/kernel/bpf/Makefile b/kernel/bpf/Makefile
index 70502f038b92..5b30d37ef055 100644
--- a/kernel/bpf/Makefile
+++ b/kernel/bpf/Makefile
@@ -53,6 +53,9 @@ obj-$(CONFIG_BPF_SYSCALL) += relo_core.o
 obj-$(CONFIG_BPF_SYSCALL) += btf_iter.o
 obj-$(CONFIG_BPF_SYSCALL) += btf_relocate.o
 obj-$(CONFIG_BPF_SYSCALL) += kmem_cache_iter.o
+ifeq ($(CONFIG_DEBUG_FS),y)
+obj-$(CONFIG_BPF_SYSCALL) += dmabuf_iter.o
+endif
 
 CFLAGS_REMOVE_percpu_freelist.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_bpf_lru_list.o = $(CC_FLAGS_FTRACE)
diff --git a/kernel/bpf/dmabuf_iter.c b/kernel/bpf/dmabuf_iter.c
new file mode 100644
index 000000000000..b4b8be1d6aa4
--- /dev/null
+++ b/kernel/bpf/dmabuf_iter.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (c) 2025 Google LLC */
+#include <linux/bpf.h>
+#include <linux/btf_ids.h>
+#include <linux/dma-buf.h>
+#include <linux/kernel.h>
+#include <linux/seq_file.h>
+
+BTF_ID_LIST_GLOBAL_SINGLE(bpf_dmabuf_btf_id, struct, dma_buf)
+DEFINE_BPF_ITER_FUNC(dmabuf, struct bpf_iter_meta *meta, struct dma_buf *dmabuf)
+
+static void *dmabuf_iter_seq_start(struct seq_file *seq, loff_t *pos)
+{
+	struct dma_buf *dmabuf, *ret = NULL;
+
+	if (*pos) {
+		*pos = 0;
+		return NULL;
+	}
+	/* Look for the first buffer we can obtain a reference to.
+	 * The list mutex does not protect a dmabuf's refcount, so it can be
+	 * zeroed while we are iterating. Therefore we cannot call get_dma_buf()
+	 * since the caller of this program may not already own a reference to
+	 * the buffer.
+	 */
+	mutex_lock(&dmabuf_debugfs_list_mutex);
+	list_for_each_entry(dmabuf, &dmabuf_debugfs_list, list_node) {
+		if (file_ref_get(&dmabuf->file->f_ref)) {
+			ret = dmabuf;
+			break;
+		}
+	}
+	mutex_unlock(&dmabuf_debugfs_list_mutex);
+
+	return ret;
+}
+
+static void *dmabuf_iter_seq_next(struct seq_file *seq, void *v, loff_t *pos)
+{
+	struct dma_buf *dmabuf = v, *ret = NULL;
+
+	++*pos;
+
+	mutex_lock(&dmabuf_debugfs_list_mutex);
+	dma_buf_put(dmabuf);
+	while (!list_is_last(&dmabuf->list_node, &dmabuf_debugfs_list)) {
+		dmabuf = list_next_entry(dmabuf, list_node);
+		if (file_ref_get(&dmabuf->file->f_ref)) {
+			ret = dmabuf;
+			break;
+		}
+	}
+	mutex_unlock(&dmabuf_debugfs_list_mutex);
+
+	return ret;
+}
+
+struct bpf_iter__dmabuf {
+	__bpf_md_ptr(struct bpf_iter_meta *, meta);
+	__bpf_md_ptr(struct dma_buf *, dmabuf);
+};
+
+static int __dmabuf_seq_show(struct seq_file *seq, void *v, bool in_stop)
+{
+	struct bpf_iter_meta meta = {
+		.seq = seq,
+	};
+	struct bpf_iter__dmabuf ctx = {
+		.meta = &meta,
+		.dmabuf = v,
+	};
+	struct bpf_prog *prog = bpf_iter_get_info(&meta, in_stop);
+
+	if (prog)
+		return bpf_iter_run_prog(prog, &ctx);
+
+	return 0;
+}
+
+static int dmabuf_iter_seq_show(struct seq_file *seq, void *v)
+{
+	return __dmabuf_seq_show(seq, v, false);
+}
+
+static void dmabuf_iter_seq_stop(struct seq_file *seq, void *v)
+{
+	struct dma_buf *dmabuf = v;
+
+	if (dmabuf)
+		dma_buf_put(dmabuf);
+}
+
+static const struct seq_operations dmabuf_iter_seq_ops = {
+	.start	= dmabuf_iter_seq_start,
+	.next	= dmabuf_iter_seq_next,
+	.stop	= dmabuf_iter_seq_stop,
+	.show	= dmabuf_iter_seq_show,
+};
+
+static void bpf_iter_dmabuf_show_fdinfo(const struct bpf_iter_aux_info *aux,
+					struct seq_file *seq)
+{
+	seq_puts(seq, "dmabuf iter\n");
+}
+
+static const struct bpf_iter_seq_info dmabuf_iter_seq_info = {
+	.seq_ops		= &dmabuf_iter_seq_ops,
+	.init_seq_private	= NULL,
+	.fini_seq_private	= NULL,
+	.seq_priv_size		= 0,
+};
+
+static struct bpf_iter_reg bpf_dmabuf_reg_info = {
+	.target			= "dmabuf",
+	.show_fdinfo		= bpf_iter_dmabuf_show_fdinfo,
+	.ctx_arg_info_size	= 1,
+	.ctx_arg_info		= {
+		{ offsetof(struct bpf_iter__dmabuf, dmabuf),
+		  PTR_TO_BTF_ID_OR_NULL },
+	},
+	.seq_info		= &dmabuf_iter_seq_info,
+};
+
+static int __init dmabuf_iter_init(void)
+{
+	bpf_dmabuf_reg_info.ctx_arg_info[0].btf_id = bpf_dmabuf_btf_id[0];
+	return bpf_iter_reg_target(&bpf_dmabuf_reg_info);
+}
+
+late_initcall(dmabuf_iter_init);
-- 
2.49.0.604.gff1f9ca942-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0112AA89D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 00:43:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCB1745945
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 May 2025 22:43:09 +0000 (UTC)
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	by lists.linaro.org (Postfix) with ESMTPS id D5A4245949
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 May 2025 22:42:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=yyEQgEcH;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3Xu0XaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com designates 209.85.216.74 as permitted sender) smtp.mailfrom=3Xu0XaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-3055f2e1486so5896013a91.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 04 May 2025 15:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746398559; x=1747003359; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=i4UiHJytqyMBjkMUe4jiF7RJR+rLd9EB5rxLuUC9nlM=;
        b=yyEQgEcHty4hZ46jzTkfwhJ5WaiaEBpscJv7jxXovjs8sqjGhrchibS1G4wWXIRkVF
         rnHhnzYle/dJdYyl9SiKRvBzfWB9UW0za7tFUG1EvllIhEKGe79fgrPXJ7hrHE6Y5biF
         INrdcEGiofm8ist5kurmvcMbAKn4EI7/1L8eelLMwmtriE9CkplRDOIFlXeqiliCK1Ls
         c23nQFS6Lugv2rV4JKmNg8cRzWTi9+Q05T9REsqLXFmqB92LFN57OguochUkwdm2ckx1
         FN+XNuS7Qm98YqKTyjFxPU+BPXfK5cq+ThvjLB5cZ+BTCFQTFZe4fpC/GG+HKoCD4Aua
         vtsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746398559; x=1747003359;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i4UiHJytqyMBjkMUe4jiF7RJR+rLd9EB5rxLuUC9nlM=;
        b=kbxfAkTW6qocqp5jE/6lsvweWvgE7//Cyy4F68kY0HULonfS6Flx4khS5+szMzvm01
         OtYtNB2aHMyhRfqWmDubZdRUhufyTGAnH0xJ3qh2H7V3o6Q3Zic+Qpdd6djyfLZaUPud
         Y3lLYf7dOm7fbP+CUc5Q66/TVR5C9FdIBL8jdrjcT8nTeX/dNE97RkCu4pRkpeOVVLo9
         9Gr5ROPvWe4/9btAMEcBNzt8u2JnpcIO+DzCFOus0HtkaVeIFsiVHKlRwcWsckUam69N
         RYzfTFR6NaXT0D2A756HabssKYyISARMCioANzzmDbLWnZ87qLyYB5104vIYco/gJiO3
         XfTA==
X-Forwarded-Encrypted: i=1; AJvYcCW7+HvuqWySMEefJ8eIq0DyvS0qNlt8V6zY36YZeE/6uWZRSYYaXZVysP0hkhv01DnkmXTBRetgLkg6ls+M@lists.linaro.org
X-Gm-Message-State: AOJu0YwQ/U5iex6ju+l/4WtBpKgEDZsZeoWiJg1ANmFUjxOWWHcDfp4H
	uXO/bkzzLFeeMn7M0U05l+T16olMLlX6lvqEe0whC4LHY3SB61GVFhOpLlwgNX250U31Ks1hk8b
	dAZdSK9HjKuOKiw==
X-Google-Smtp-Source: AGHT+IHpmxI7uk2byAzLuOwzl/LvQ35S8UNuCQgWihS4iwBUZaso+FHslC8sl609nY7YVNmyP5x9fzMsax0/eCE=
X-Received: from pjxx6.prod.google.com ([2002:a17:90b:58c6:b0:301:4260:4d23])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:2f0e:b0:2ff:6608:78cd with SMTP id 98e67ed59e1d1-30a619769b0mr8600818a91.9.1746398558977;
 Sun, 04 May 2025 15:42:38 -0700 (PDT)
Date: Sun,  4 May 2025 22:41:38 +0000
In-Reply-To: <20250504224149.1033867-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250504224149.1033867-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.906.g1f30a19c02-goog
Message-ID: <20250504224149.1033867-3-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D5A4245949
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3Xu0XaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.216.74:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3Xu0XaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: L63SDBPUCAAHKVAV5LJNVD2BA4ACX6ZK
X-Message-ID-Hash: L63SDBPUCAAHKVAV5LJNVD2BA4ACX6ZK
X-MailFrom: 3Xu0XaAkKDd8UKNFSDJFSHPPHMF.DPNMJOBSP-NN-TJHMJTUT.MJOBSP.PSH@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/6] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L63SDBPUCAAHKVAV5LJNVD2BA4ACX6ZK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The dmabuf iterator traverses the list of all DMA buffers.

DMA buffers are refcounted through their associated struct file. A
reference is taken on each buffer as the list is iterated to ensure each
buffer persists for the duration of the bpf program execution without
holding the list mutex.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 kernel/bpf/Makefile      |   3 +
 kernel/bpf/dmabuf_iter.c | 134 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 137 insertions(+)
 create mode 100644 kernel/bpf/dmabuf_iter.c

diff --git a/kernel/bpf/Makefile b/kernel/bpf/Makefile
index 70502f038b92..3a335c50e6e3 100644
--- a/kernel/bpf/Makefile
+++ b/kernel/bpf/Makefile
@@ -53,6 +53,9 @@ obj-$(CONFIG_BPF_SYSCALL) += relo_core.o
 obj-$(CONFIG_BPF_SYSCALL) += btf_iter.o
 obj-$(CONFIG_BPF_SYSCALL) += btf_relocate.o
 obj-$(CONFIG_BPF_SYSCALL) += kmem_cache_iter.o
+ifeq ($(CONFIG_DMA_SHARED_BUFFER),y)
+obj-$(CONFIG_BPF_SYSCALL) += dmabuf_iter.o
+endif
 
 CFLAGS_REMOVE_percpu_freelist.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_bpf_lru_list.o = $(CC_FLAGS_FTRACE)
diff --git a/kernel/bpf/dmabuf_iter.c b/kernel/bpf/dmabuf_iter.c
new file mode 100644
index 000000000000..968762e11f73
--- /dev/null
+++ b/kernel/bpf/dmabuf_iter.c
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (c) 2025 Google LLC */
+#include <linux/bpf.h>
+#include <linux/btf_ids.h>
+#include <linux/dma-buf.h>
+#include <linux/kernel.h>
+#include <linux/seq_file.h>
+
+BTF_ID_LIST_SINGLE(bpf_dmabuf_btf_id, struct, dma_buf)
+DEFINE_BPF_ITER_FUNC(dmabuf, struct bpf_iter_meta *meta, struct dma_buf *dmabuf)
+
+static struct dma_buf *get_next_dmabuf(struct dma_buf *dmabuf)
+{
+	struct dma_buf *ret = NULL;
+
+	/*
+	 * Look for the first/next buffer we can obtain a reference to.
+	 *
+	 * The list mutex does not protect a dmabuf's refcount, so it can be
+	 * zeroed while we are iterating. We cannot call get_dma_buf() since the
+	 * caller of this program may not already own a reference to the buffer.
+	 */
+	mutex_lock(&dmabuf_list_mutex);
+	if (dmabuf) {
+		dma_buf_put(dmabuf);
+		list_for_each_entry_continue(dmabuf, &dmabuf_list, list_node) {
+			if (file_ref_get(&dmabuf->file->f_ref)) {
+				ret = dmabuf;
+				break;
+			}
+		}
+	} else {
+		list_for_each_entry(dmabuf, &dmabuf_list, list_node) {
+			if (file_ref_get(&dmabuf->file->f_ref)) {
+				ret = dmabuf;
+				break;
+			}
+		}
+	}
+	mutex_unlock(&dmabuf_list_mutex);
+	return ret;
+}
+
+static void *dmabuf_iter_seq_start(struct seq_file *seq, loff_t *pos)
+{
+	if (*pos)
+		return NULL;
+
+	return get_next_dmabuf(NULL);
+}
+
+static void *dmabuf_iter_seq_next(struct seq_file *seq, void *v, loff_t *pos)
+{
+	struct dma_buf *dmabuf = v;
+
+	++*pos;
+
+	return get_next_dmabuf(dmabuf);
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
+	.feature                = BPF_ITER_RESCHED,
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
2.49.0.906.g1f30a19c02-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

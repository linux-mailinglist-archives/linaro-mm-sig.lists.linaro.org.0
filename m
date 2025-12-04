Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE825CA2041
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 01:05:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 819EC3F690
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 00:05:37 +0000 (UTC)
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	by lists.linaro.org (Postfix) with ESMTPS id 6204D3F690
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 00:05:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=aESfPTys;
	spf=pass (lists.linaro.org: domain of 3QNAwaQkKDfMoehZmXdZmbjjbgZ.XjhgdiVmj-hh-ndbgdnon.gdiVmj.jmb@flex--tjmercier.bounces.google.com designates 209.85.214.201 as permitted sender) smtp.mailfrom=3QNAwaQkKDfMoehZmXdZmbjjbgZ.XjhgdiVmj-hh-ndbgdnon.gdiVmj.jmb@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-29b760316a8so4651745ad.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Dec 2025 16:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764806720; x=1765411520; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tG99E2G74NBlCqMFEbuJyuFU682bdGjo6IlyusySJck=;
        b=aESfPTysXb+LF15xkYq4qYRg8pV+GXTj3P5ppKgv1XanBUPrpdi7xa+Acy0A1bh6vg
         zO8tLVy8+mU9U63Aci5sRYEAUNkycfTkQRQY0jq2eoRz9fFY73UPSiRdyiqSeRBzU1uX
         aS4BD8H6LP3+C/JnSv0sCU0Mn5ybLE97/8skf1tDLh91vdbHhLFSo4puEcezO/KWp6cL
         C3nLnSUZIldpk+sq7qqaYmK2Kf5dEHuWB53fE9z0gBZpkYdhGVaTpQ+QojAYd30cIXav
         o59OHJuoOvNZSvXOdjdapRGHMcTOfPAYM5XVMl4vDnFYsCbbPhYkYSUTalxj18VODNRp
         4Ahw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764806720; x=1765411520;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tG99E2G74NBlCqMFEbuJyuFU682bdGjo6IlyusySJck=;
        b=GFdmUIT4WuxZRh3xu80kI2r/ICja/RxmZQsG3q6+wXwqMgzA0IFznwubpwqrOZi5n0
         5cQMRg718GgKC3VGWifJLiwD4MD9foJApkPPD4gLWXz17o8s7QnSuLo0lyAN6i02d4dN
         CBdLKfjgCZOHPFO1KVAs7RPJTMyVKMdzV8lC5yCWdZ13K021ipG/Es8k/zdGMznkluol
         d3WABnMrSlmXp0dPzCbtU0sPT9d0/7e3mMJwbt+kvmDT4RDk+OFU6/xYUbWXSj+knYzd
         SL5D28IhZnhVH/A5E/O39WRBziZbRT5Qn38aGVYfBtBA4OzOzl0jxRcKRR48OncGIqRn
         ez/g==
X-Forwarded-Encrypted: i=1; AJvYcCXYA93Ougi1A/E+zkrqS+SQoQOj0naX5ye4CoAAGQESd3HVymMVeLR2somKEAGAMu7s+ri9llFnqLHNaDQu@lists.linaro.org
X-Gm-Message-State: AOJu0YwRD+yChgOMXPlA9gZz72UokQFSKljKersO/iB7YYMNfx9tf7wb
	9TRNIsHL7QmYxBLH9Ya/RLH1m+faqEfVhzvUawboPB7gNzZ3MQ5M4B8PpO5IsB5SqZv3SvjvEL7
	9yugHzZiZG7rDLgLqLA==
X-Google-Smtp-Source: AGHT+IGeC714EhBu/T29Z7FIKq0MljnotPa6j758d1YJabmaYRlvO/lv9fc69gFjzEtkHLe56aPYXjQBQYBtJtQ=
X-Received: from plbbb9.prod.google.com ([2002:a17:902:bc89:b0:29d:5afa:2c4])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:e943:b0:296:5ea8:ed7c with SMTP id d9443c01a7336-29d68344bf3mr55170825ad.17.1764806720435;
 Wed, 03 Dec 2025 16:05:20 -0800 (PST)
Date: Wed,  3 Dec 2025 16:03:47 -0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.177.g9f829587af-goog
Message-ID: <20251204000348.1413593-1-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: yonghong.song@linux.dev, ast@kernel.org, daniel@iogearbox.net,
	andrii@kernel.org, martin.lau@linux.dev, eddyz87@gmail.com, song@kernel.org,
	john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me,
	haoluo@google.com, jolsa@kernel.org, shuah@kernel.org, bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	android-mm@google.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3QNAwaQkKDfMoehZmXdZmbjjbgZ.XjhgdiVmj-hh-ndbgdnon.gdiVmj.jmb@flex--tjmercier.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.201:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3QNAwaQkKDfMoehZmXdZmbjjbgZ.XjhgdiVmj-hh-ndbgdnon.gdiVmj.jmb@flex--tjmercier.bounces.google.com];
	FREEMAIL_TO(0.00)[linux.dev,kernel.org,iogearbox.net,gmail.com,fomichev.me,google.com,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	BLOCKLISTDE_FAIL(0.00)[209.85.214.201:server fail];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6204D3F690
X-Spamd-Bar: --
Message-ID-Hash: DG3YQBCTHUBLSFDEO3N53FMNG6X65NKX
X-Message-ID-Hash: DG3YQBCTHUBLSFDEO3N53FMNG6X65NKX
X-MailFrom: 3QNAwaQkKDfMoehZmXdZmbjjbgZ.XjhgdiVmj-hh-ndbgdnon.gdiVmj.jmb@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf 1/2] bpf: Fix truncated dmabuf iterator reads
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DG3YQBCTHUBLSFDEO3N53FMNG6X65NKX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If there is a large number (hundreds) of dmabufs allocated, the text
output generated from dmabuf_iter_seq_show can exceed common user buffer
sizes (e.g. PAGE_SIZE) necessitating multiple start/stop cycles to
iterate through all dmabufs. However the dmabuf iterator currently
returns NULL in dmabuf_iter_seq_start for all non-zero pos values, which
results in the truncation of the output before all dmabufs are handled.

After dma_buf_iter_begin / dma_buf_iter_next, the refcount of the buffer
is elevated so that the BPF iterator program can run without holding any
locks. When a stop occurs, instead of immediately dropping the reference
on the buffer, stash a pointer to the buffer in seq->priv until
either start is called or the iterator is released. This also enables
the resumption of iteration without first walking through the list of
dmabufs based on the pos value.

Fixes: 76ea95534995 ("bpf: Add dmabuf iterator")
Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 kernel/bpf/dmabuf_iter.c | 56 +++++++++++++++++++++++++++++++++++-----
 1 file changed, 49 insertions(+), 7 deletions(-)

diff --git a/kernel/bpf/dmabuf_iter.c b/kernel/bpf/dmabuf_iter.c
index 4dd7ef7c145c..cd500248abd9 100644
--- a/kernel/bpf/dmabuf_iter.c
+++ b/kernel/bpf/dmabuf_iter.c
@@ -6,10 +6,33 @@
 #include <linux/kernel.h>
 #include <linux/seq_file.h>
 
+struct dmabuf_iter_priv {
+	/*
+	 * If this pointer is non-NULL, the buffer's refcount is elevated to
+	 * prevent destruction between stop/start. If reading is not resumed and
+	 * start is never called again, then dmabuf_iter_seq_fini drops the
+	 * reference when the iterator is released.
+	 */
+	struct dma_buf *dmabuf;
+};
+
 static void *dmabuf_iter_seq_start(struct seq_file *seq, loff_t *pos)
 {
-	if (*pos)
-		return NULL;
+	struct dmabuf_iter_priv *p = seq->private;
+
+	if (*pos) {
+		struct dma_buf *dmabuf = p->dmabuf;
+
+		if (!dmabuf)
+			return NULL;
+
+		/*
+		 * Always resume from where we stopped, regardless of the value
+		 * of pos.
+		 */
+		p->dmabuf = NULL;
+		return dmabuf;
+	}
 
 	return dma_buf_iter_begin();
 }
@@ -54,8 +77,11 @@ static void dmabuf_iter_seq_stop(struct seq_file *seq, void *v)
 {
 	struct dma_buf *dmabuf = v;
 
-	if (dmabuf)
-		dma_buf_put(dmabuf);
+	if (dmabuf) {
+		struct dmabuf_iter_priv *p = seq->private;
+
+		p->dmabuf = dmabuf;
+	}
 }
 
 static const struct seq_operations dmabuf_iter_seq_ops = {
@@ -71,11 +97,27 @@ static void bpf_iter_dmabuf_show_fdinfo(const struct bpf_iter_aux_info *aux,
 	seq_puts(seq, "dmabuf iter\n");
 }
 
+static int dmabuf_iter_seq_init(void *priv, struct bpf_iter_aux_info *aux)
+{
+	struct dmabuf_iter_priv *p = (struct dmabuf_iter_priv *)priv;
+
+	p->dmabuf = NULL;
+	return 0;
+}
+
+static void dmabuf_iter_seq_fini(void *priv)
+{
+	struct dmabuf_iter_priv *p = (struct dmabuf_iter_priv *)priv;
+
+	if (p->dmabuf)
+		dma_buf_put(p->dmabuf);
+}
+
 static const struct bpf_iter_seq_info dmabuf_iter_seq_info = {
 	.seq_ops		= &dmabuf_iter_seq_ops,
-	.init_seq_private	= NULL,
-	.fini_seq_private	= NULL,
-	.seq_priv_size		= 0,
+	.init_seq_private	= dmabuf_iter_seq_init,
+	.fini_seq_private	= dmabuf_iter_seq_fini,
+	.seq_priv_size		= sizeof(struct dmabuf_iter_priv),
 };
 
 static struct bpf_iter_reg bpf_dmabuf_reg_info = {

base-commit: 30f09200cc4aefbd8385b01e41bde2e4565a6f0e
-- 
2.52.0.177.g9f829587af-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A74AB028F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 20:21:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE64144A3B
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 18:21:36 +0000 (UTC)
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	by lists.linaro.org (Postfix) with ESMTPS id F03C444A3B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 18:20:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=bIBWXHjq;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3BfYcaAkKDawfVYQdOUQdSaaSXQ.OaYXUZMda-YY-eUSXUefe.XUZMda.adS@flex--tjmercier.bounces.google.com designates 209.85.214.201 as permitted sender) smtp.mailfrom=3BfYcaAkKDawfVYQdOUQdSaaSXQ.OaYXUZMda-YY-eUSXUefe.XUZMda.adS@flex--tjmercier.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-22e327ff362so11824855ad.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 08 May 2025 11:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746728453; x=1747333253; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=OWA0exWT2PF9Bwdd6zODqvQVYBXl/Ht/Vugb+Sflr70=;
        b=bIBWXHjq7X0JZlhb9qSpq8Lx3ngd8sEZoiubDuCu8hqIj8rc7l+KL1RVXezMBF/NOt
         s17wzKdAOoKB9JqP+56P2a/FjaaveaD1+U8jpea/NmLwWiSPt+BdCb7CvgGCXBWritct
         eqQkWRPJd+zHYRTy+CAUbFKnO20b7LwYHp3tb9m0Flc2jVDNBvw6Ec4nzrc0bh7OeTF0
         EA3YO3JnydJ3L27AbzAYyMGcXTsSlAQSqVCCpXpO3YfkWouRzU8AysRgZ/C+nb8qhHWI
         EnP4PnMYtqa5sdkQBb/Ns+3u8uytWHms0LTB7OHXAXQl7CuEq78Z51Hc9hE5tuc2O+Ln
         SaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746728453; x=1747333253;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OWA0exWT2PF9Bwdd6zODqvQVYBXl/Ht/Vugb+Sflr70=;
        b=msO2p9HwPNyBhjErJ3M6lMWiOjn9qaOWVP3BMGzDBZpKYYzQVt/En6g26OSqDOXyMG
         6GbW2pEG8iXuDxvxd3gZuZyxE++kfRoW8IHBG75O8878imszCS+0Xh5MoRXEXa9dZgT6
         kbbs7Cg0VdvOQdCaTfJv2IhNHkVIyj86P5pejPOZQm3lY7O1bCdVv4vX2InqtHy6bLgO
         VfvTXkE4DcIkOIpiIJ/47DSmGwEid7gyoAUmyQwjJXNErThgu+vPgVN5UO1yCjaz+loi
         Qkf0dd8hskkWbWuMS5MABKyrsngqCdH66cb/FbPINn9c07TEs5/3i5wWPa279waFBk76
         YDLg==
X-Forwarded-Encrypted: i=1; AJvYcCWmqIgD683gzNYkO40VOJf1Fw7pR0cPisD07eraRDHBR0Z7FyUCehLC19iXABm4SrV5XRrEx2pyHgM/g5+j@lists.linaro.org
X-Gm-Message-State: AOJu0YxYplL9n6oboT0rUjsBNBS7HQj4lQns4G6JXKSsCGE12Zmi9695
	BCZzOFR2Urc0PaK8aj0XqjqUfdXzmSdVw4H/1LAyohWqqMyL/FVJ9npa8Fhgbx+Z1ZO6um3b4wE
	LKofUVOZjr/Cz1A==
X-Google-Smtp-Source: AGHT+IEeAsbdgzwNcuStC5o0lsQE+GcpWguKPjE5+maPyPUAIOXS6rnVv8L8CoEgWNh3XZFUrNpQz3jUw6fJs5g=
X-Received: from plb16.prod.google.com ([2002:a17:903:4410:b0:22f:b333:1bd9])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:ecc2:b0:211:e812:3948 with SMTP id d9443c01a7336-22fc8946f85mr6138175ad.0.1746728453022;
 Thu, 08 May 2025 11:20:53 -0700 (PDT)
Date: Thu,  8 May 2025 18:20:22 +0000
In-Reply-To: <20250508182025.2961555-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250508182025.2961555-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1015.ga840276032-goog
Message-ID: <20250508182025.2961555-4-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F03C444A3B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	FORGED_SENDER(0.30)[tjmercier@google.com,3BfYcaAkKDawfVYQdOUQdSaaSXQ.OaYXUZMda-YY-eUSXUefe.XUZMda.adS@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.201:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3BfYcaAkKDawfVYQdOUQdSaaSXQ.OaYXUZMda-YY-eUSXUefe.XUZMda.adS@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 7XR7N4ABUX4IZNPEC2UF4GFJ45AJXIJX
X-Message-ID-Hash: 7XR7N4ABUX4IZNPEC2UF4GFJ45AJXIJX
X-MailFrom: 3BfYcaAkKDawfVYQdOUQdSaaSXQ.OaYXUZMda-YY-eUSXUefe.XUZMda.adS@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v4 3/5] bpf: Add open coded dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7XR7N4ABUX4IZNPEC2UF4GFJ45AJXIJX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This open coded iterator allows for more flexibility when creating BPF
programs. It can support output in formats other than text. With an open
coded iterator, a single BPF program can traverse multiple kernel data
structures (now including dmabufs), allowing for more efficient analysis
of kernel data compared to multiple reads from procfs, sysfs, or
multiple traditional BPF iterator invocations.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 kernel/bpf/dmabuf_iter.c | 47 ++++++++++++++++++++++++++++++++++++++++
 kernel/bpf/helpers.c     |  5 +++++
 2 files changed, 52 insertions(+)

diff --git a/kernel/bpf/dmabuf_iter.c b/kernel/bpf/dmabuf_iter.c
index 96b4ba7f0b2c..8049bdbc9efc 100644
--- a/kernel/bpf/dmabuf_iter.c
+++ b/kernel/bpf/dmabuf_iter.c
@@ -100,3 +100,50 @@ static int __init dmabuf_iter_init(void)
 }
 
 late_initcall(dmabuf_iter_init);
+
+struct bpf_iter_dmabuf {
+	/* opaque iterator state; having __u64 here allows to preserve correct
+	 * alignment requirements in vmlinux.h, generated from BTF
+	 */
+	__u64 __opaque[1];
+} __aligned(8);
+
+/* Non-opaque version of bpf_iter_dmabuf */
+struct bpf_iter_dmabuf_kern {
+	struct dma_buf *dmabuf;
+} __aligned(8);
+
+__bpf_kfunc_start_defs();
+
+__bpf_kfunc int bpf_iter_dmabuf_new(struct bpf_iter_dmabuf *it)
+{
+	struct bpf_iter_dmabuf_kern *kit = (void *)it;
+
+	BUILD_BUG_ON(sizeof(*kit) > sizeof(*it));
+	BUILD_BUG_ON(__alignof__(*kit) != __alignof__(*it));
+
+	kit->dmabuf = NULL;
+	return 0;
+}
+
+__bpf_kfunc struct dma_buf *bpf_iter_dmabuf_next(struct bpf_iter_dmabuf *it)
+{
+	struct bpf_iter_dmabuf_kern *kit = (void *)it;
+
+	if (kit->dmabuf)
+		kit->dmabuf = dma_buf_iter_next(kit->dmabuf);
+	else
+		kit->dmabuf = dma_buf_iter_begin();
+
+	return kit->dmabuf;
+}
+
+__bpf_kfunc void bpf_iter_dmabuf_destroy(struct bpf_iter_dmabuf *it)
+{
+	struct bpf_iter_dmabuf_kern *kit = (void *)it;
+
+	if (kit->dmabuf)
+		dma_buf_put(kit->dmabuf);
+}
+
+__bpf_kfunc_end_defs();
diff --git a/kernel/bpf/helpers.c b/kernel/bpf/helpers.c
index 78cefb41266a..39fe63016868 100644
--- a/kernel/bpf/helpers.c
+++ b/kernel/bpf/helpers.c
@@ -3346,6 +3346,11 @@ BTF_ID_FLAGS(func, bpf_iter_kmem_cache_next, KF_ITER_NEXT | KF_RET_NULL | KF_SLE
 BTF_ID_FLAGS(func, bpf_iter_kmem_cache_destroy, KF_ITER_DESTROY | KF_SLEEPABLE)
 BTF_ID_FLAGS(func, bpf_local_irq_save)
 BTF_ID_FLAGS(func, bpf_local_irq_restore)
+#ifdef CONFIG_DMA_SHARED_BUFFER
+BTF_ID_FLAGS(func, bpf_iter_dmabuf_new, KF_ITER_NEW | KF_SLEEPABLE)
+BTF_ID_FLAGS(func, bpf_iter_dmabuf_next, KF_ITER_NEXT | KF_RET_NULL | KF_SLEEPABLE)
+BTF_ID_FLAGS(func, bpf_iter_dmabuf_destroy, KF_ITER_DESTROY | KF_SLEEPABLE)
+#endif
 BTF_KFUNCS_END(common_btf_ids)
 
 static const struct btf_kfunc_id_set common_kfunc_set = {
-- 
2.49.0.1015.ga840276032-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

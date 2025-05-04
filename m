Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C10AA89D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 00:43:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41A2C450C1
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  4 May 2025 22:43:24 +0000 (UTC)
Received: from mail-pg1-f201.google.com (mail-pg1-f201.google.com [209.85.215.201])
	by lists.linaro.org (Postfix) with ESMTPS id 3A5114594B
	for <linaro-mm-sig@lists.linaro.org>; Sun,  4 May 2025 22:42:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=XZhky2CI;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3Y-0XaAkKDeQZPSKXIOKXMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--tjmercier.bounces.google.com designates 209.85.215.201 as permitted sender) smtp.mailfrom=3Y-0XaAkKDeQZPSKXIOKXMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--tjmercier.bounces.google.com
Received: by mail-pg1-f201.google.com with SMTP id 41be03b00d2f7-b1fc15c795eso678492a12.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 04 May 2025 15:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746398563; x=1747003363; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=DXDdbmilM6kw4tmaPJb1OY6Nmv5TWjsHKnabAlzq4nA=;
        b=XZhky2CIRCn6Gl5LuySxrTh0alvg4I9yDlma2dsp6nkWCBwavU8+aWuBVMGGtKVZar
         AmdYScYuYC2+ZEZVK/KkWw+LYurD11t7WD7/nku8apyIUZ0fbH/m6xvbbS/DbYqxFgBT
         CAOfGICFXTQNiLcj16gMHeVC3WlPlqb1xqnOeyjbimgHUEodMBynlUGhK7J0FPKH3ZDv
         Qllkap/LnJGXs5Tkz3OFbkkpIB4wRnUGG218ZjpN9wORL1kWCay280QgwtXvqaO6mVRc
         AWW7KvGLqHL3xC3j/Hdn3iBD0oxNV1a2oLJLE+Ha5BsDPk919w54cFhSxzahVytIouTD
         chnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746398563; x=1747003363;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DXDdbmilM6kw4tmaPJb1OY6Nmv5TWjsHKnabAlzq4nA=;
        b=mhN11UvsZqTRDL/d6n1/gHnsMbEVYwFFDTR6cKOPfjef96gEAkPVxcH5+czpZEal8M
         VSOeSMgX1Y3MLMXsD7YJ4JeLWCZ38MM4Y3Kv+clZntne53jbWcztECQarOfNB98Xk7qw
         sxrb10UBKP+Qr2MVbmbgXTUc4R9R5QudAG47sthgU3Hd/XKxWk3NiCWJGek/qE4eJgI9
         iTxx9Yj8vJXIE656f0+++w59/j8WCqQSJaXTvJXdugFysmE31HEA2fYqjyIgdLGEdH7j
         QkaMP5LfvIBDaGXBMsaRv+Q8DQFm2CyefbOKEnIpDnqrnTiLnkCw7Q4Ayc7XWp4hubqV
         c4ow==
X-Forwarded-Encrypted: i=1; AJvYcCUI2myQZxcLQxm4GiSVTDxhBjKBufoebvGsOlsRwmxTT9ZcUgI5WLYlNV+IXpGmlI1HWUh4FKkAXXDtBIrR@lists.linaro.org
X-Gm-Message-State: AOJu0YyAzqQlphSSEy/3H34uDHXna19arc4o37kz+W9OVk/6yG1yJmbd
	bljNgGXWsjcc6KXjPHHZaIaoS6Rrim2nzMtJLId+fQCDz4i0D3WCP+LDWcTj2PowByDYSn+JrCJ
	Ej6y061952bhelg==
X-Google-Smtp-Source: AGHT+IHeuhPkqCORnCnlODfZEgoM3mxo+4Qkj5bGxDZDkA2AvS1Wg0vNaQ4AA42Kn2PJNuaQSmzdVlm4/hxRO/Q=
X-Received: from pjbee11.prod.google.com ([2002:a17:90a:fc4b:b0:2fb:fa85:1678])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:1f8c:b0:305:5f32:d9f0 with SMTP id 98e67ed59e1d1-30a4e5c5e9dmr15101935a91.19.1746398563275;
 Sun, 04 May 2025 15:42:43 -0700 (PDT)
Date: Sun,  4 May 2025 22:41:39 +0000
In-Reply-To: <20250504224149.1033867-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250504224149.1033867-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.906.g1f30a19c02-goog
Message-ID: <20250504224149.1033867-4-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, song@kernel.org, alexei.starovoitov@gmail.com
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3A5114594B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3Y-0XaAkKDeQZPSKXIOKXMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3Y-0XaAkKDeQZPSKXIOKXMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--tjmercier.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.215.201:from];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: FF3YOT2JLNWPGLODIKY46CDIHM5XUULD
X-Message-ID-Hash: FF3YOT2JLNWPGLODIKY46CDIHM5XUULD
X-MailFrom: 3Y-0XaAkKDeQZPSKXIOKXMUUMRK.IUSROTGXU-SS-YOMROYZY.ROTGXU.UXM@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 3/6] bpf: Add open coded dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FF3YOT2JLNWPGLODIKY46CDIHM5XUULD/>
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
 kernel/bpf/dmabuf_iter.c | 43 ++++++++++++++++++++++++++++++++++++++++
 kernel/bpf/helpers.c     |  5 +++++
 2 files changed, 48 insertions(+)

diff --git a/kernel/bpf/dmabuf_iter.c b/kernel/bpf/dmabuf_iter.c
index 968762e11f73..ebf9794241ef 100644
--- a/kernel/bpf/dmabuf_iter.c
+++ b/kernel/bpf/dmabuf_iter.c
@@ -132,3 +132,46 @@ static int __init dmabuf_iter_init(void)
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
+	kit->dmabuf = get_next_dmabuf(kit->dmabuf);
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
index e3a2662f4e33..49de5eae44da 100644
--- a/kernel/bpf/helpers.c
+++ b/kernel/bpf/helpers.c
@@ -3294,6 +3294,11 @@ BTF_ID_FLAGS(func, bpf_iter_kmem_cache_next, KF_ITER_NEXT | KF_RET_NULL | KF_SLE
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
2.49.0.906.g1f30a19c02-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

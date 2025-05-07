Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B17FCAAD1F3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 02:11:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CDC1044A4C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 00:11:45 +0000 (UTC)
Received: from mail-pl1-f202.google.com (mail-pl1-f202.google.com [209.85.214.202])
	by lists.linaro.org (Postfix) with ESMTPS id EE025463E5
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 00:10:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=tiGlxXYf;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3CaUaaAkKDQYzpskxiokxmuumrk.iusrotgxu-ss-yomroyzy.rotgxu.uxm@flex--tjmercier.bounces.google.com designates 209.85.214.202 as permitted sender) smtp.mailfrom=3CaUaaAkKDQYzpskxiokxmuumrk.iusrotgxu-ss-yomroyzy.rotgxu.uxm@flex--tjmercier.bounces.google.com
Received: by mail-pl1-f202.google.com with SMTP id d9443c01a7336-22651aca434so51274495ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 May 2025 17:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746576650; x=1747181450; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=SkxID+WP7mb4sg4ZUV6PaZg3RytzLGPGnjFriQZ17Hk=;
        b=tiGlxXYfn282UPGdHHV4BgsRi9Cm19Fx1Mq4Lp54SalXCccLoeuG/6tVDX9F6VAdSY
         zLsU6CvZwVvGMgvGYD7olClds1D4ENiAZsgP23RcuTldnAKkOpLaoZ2WkRJeNeak+BpT
         QhwdiiR6Fdjkiqpx20uOi2KL9Ns6W+RUyw8UaMr3tT5w6RKRnOsl3FTIgQd3Ta5fc1l3
         fCBmnqjDICPV326lFC88cnkVbbl+XxC31MLsgdQgqgYnN+Z4ZAjhaDdqmMV8uhJnBcAq
         P9T2mXYgd6s7Z+JAinuu3/WnBBA01jh/8tDaWnKvJ06fBgoG10sJmBVXdiBhOx7Im1jd
         uuHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746576650; x=1747181450;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SkxID+WP7mb4sg4ZUV6PaZg3RytzLGPGnjFriQZ17Hk=;
        b=Gib9HLv62vRxY+YiEDf7jiVE7ZtIDnp7WOnj5t8xJ+UdMXORpcWE1MIM2muJi9WzsW
         dvBzKnj4jSyN+S95TaDAF9ddl47j3agBqUjgn8hwWNCxy1LDsN5CcJBJH6YX3lDDUOFn
         Rl1czmoRLpD8o88WG+0U7Wmv1J/G2Pd4iJ03SVOkFyTlxaF8YdxsA9FHLGCnAdjKgOU3
         LClMBWKo8qx5qAdT247Pj1F8jSgYV9bMTfhCYnacyRpBApQOwKYw6MiHoXOqoVDWyn/o
         srBbksFVxkots0P7Mx14vSwcbLOm7rpDwL4Yo2GJ6zmFPruQhhE4pgAi4pWKA88ljWDG
         odTA==
X-Forwarded-Encrypted: i=1; AJvYcCXscv6LJ2CrGMvv/8f6iL27W0Uqp+EcZGHG79ll9nys6wKfU0JDq2ZbWj5KWxT0D+B7V/0Py7tTPOT2dEXZ@lists.linaro.org
X-Gm-Message-State: AOJu0Yxcot1JHTA6/niu8t9imTNiQTo9XnQz74/BpX3baXk9EfKItAij
	hG30WiyW/V6m18Ik+LOBC2tPUg7QLrJPDbuZLtoBYPQso6YcKDwDDHt40BmcUHy5NKX6y0RR4Q5
	SwCYwEKGPY7SBlw==
X-Google-Smtp-Source: AGHT+IEx7hDcQzk8ELF2Wf/YDX+04BAayFsjqz8ketxueOqk4IMFJhrgD4+bT2AOspb/6AKarjrhAJ8dHZy5bPA=
X-Received: from pjbsi7.prod.google.com ([2002:a17:90b:5287:b0:2fb:fa85:1678])
 (user=tjmercier job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:902:ecc6:b0:22e:1740:e561 with SMTP id d9443c01a7336-22e5ea501ccmr19570925ad.19.1746576649869;
 Tue, 06 May 2025 17:10:49 -0700 (PDT)
Date: Wed,  7 May 2025 00:10:34 +0000
In-Reply-To: <20250507001036.2278781-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20250507001036.2278781-1-tjmercier@google.com>
X-Mailer: git-send-email 2.49.0.1045.g170613ef41-goog
Message-ID: <20250507001036.2278781-4-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev,
	skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, song@kernel.org
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EE025463E5
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.80 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[tjmercier@google.com,3CaUaaAkKDQYzpskxiokxmuumrk.iusrotgxu-ss-yomroyzy.rotgxu.uxm@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.202:from];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	DNSWL_BLOCKED(0.00)[209.85.214.202:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3CaUaaAkKDQYzpskxiokxmuumrk.iusrotgxu-ss-yomroyzy.rotgxu.uxm@flex--tjmercier.bounces.google.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TAGGED_RCPT(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: R4A6LTWC6CVKUSADIELLQMKRQPEXE3PW
X-Message-ID-Hash: R4A6LTWC6CVKUSADIELLQMKRQPEXE3PW
X-MailFrom: 3CaUaaAkKDQYzpskxiokxmuumrk.iusrotgxu-ss-yomroyzy.rotgxu.uxm@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH bpf-next v3 3/5] bpf: Add open coded dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R4A6LTWC6CVKUSADIELLQMKRQPEXE3PW/>
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
index 80bca8239c6d..b0478b4875ed 100644
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
+		kit->dmabuf = get_next_dmabuf(kit->dmabuf);
+	else
+		kit->dmabuf = get_first_dmabuf();
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
2.49.0.1045.g170613ef41-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

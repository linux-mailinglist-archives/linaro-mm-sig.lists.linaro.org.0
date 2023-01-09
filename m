Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2078D663335
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 22:38:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 303093F057
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Jan 2023 21:38:45 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id D72203F057
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Jan 2023 21:38:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=MIKhBBBn;
	spf=pass (lists.linaro.org: domain of 3UIm8YwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com designates 209.85.219.202 as permitted sender) smtp.mailfrom=3UIm8YwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f202.google.com with SMTP id i10-20020a25f20a000000b006ea4f43c0ddso10512167ybe.21
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Jan 2023 13:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZzZnon9AuhDOmqXXwy+4pPV98gk0DXyzNf2lwwH3FVc=;
        b=MIKhBBBnQ+bqQnJww8/fPsZhi0whxCGIUG6kEGUGMp4FOf1NaJ2uHO5gbQnelxNiQA
         /zZow36TcojzDwPLoUOvG98yay8W+H/pD2HMrI1l93vbQq7yL0EPGLWZQ0R6+VY7DRtV
         JNWPRrorFPERhG5pCoV73P8K4BeUX6WEsXjfyFLgqrSJKvyOp3o0siNMo696W/r6yKXU
         y8RJ2vfZCTDjh6Oi2w1rHjBj4wQlmL0t+ZRPOFSxOTrZS7vGovErpCiunYz6Rey8BJDi
         cncB+zuYtfJ9rQv3FhWwefPz3sWwVINattaPynPAVTeC+nbR6FJw+i6h1qaddB0J7iUL
         VYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZzZnon9AuhDOmqXXwy+4pPV98gk0DXyzNf2lwwH3FVc=;
        b=PDjfqqpXJFYgqVs7J3/DGtlhI2buL7p5Jcq+biThwHNzdURNeoUpjYuRo0cS6jJ2Xi
         nHx+GJkFLZBd7DFKghSc3zgXtw/uoHJf6xGg3ZmOb9lyxMrh2DILvWoL0RMz+KHvIdDc
         f3tTW57biBwYq5MX0+ViKxTOXAGna5FeUahwVgN7db15jotTXsaGCWMex4Wcb+nQKUez
         H/CtaHMK3nIXKwFr4LtKcaUdRxP9xMgIZANbV62GENK3rOXm45luM4AOsONSK9rbiDdD
         dNIg6tWj7SP30Jlx7XFxEPv74Go3y0l6qfahRnT/3lzQ1DYy6BCCV5YIOH/PWT84nSQf
         2f6w==
X-Gm-Message-State: AFqh2kqBPXu+CIqZEX6wRko9pi56G/8WnbsF+265b34VOZk2W5CzOr4p
	o1Cxu2VLGJSYXFHd0t0F5Sb2ZCHpFtICKoY=
X-Google-Smtp-Source: AMrXdXtOrlHW8ygC4EeYcDKs1WQIoeE3W+TEcqNZ/tFdoHO00Cnd/PEn3XI5TMhGx2JhnY0yguaIzWNDLrFIktg=
X-Received: from tj.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:53a])
 (user=tjmercier job=sendgmr) by 2002:a81:6784:0:b0:460:c029:6c76 with SMTP id
 b126-20020a816784000000b00460c0296c76mr2274300ywc.515.1673300304313; Mon, 09
 Jan 2023 13:38:24 -0800 (PST)
Date: Mon,  9 Jan 2023 21:38:04 +0000
In-Reply-To: <20230109213809.418135-1-tjmercier@google.com>
Mime-Version: 1.0
References: <20230109213809.418135-1-tjmercier@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20230109213809.418135-2-tjmercier@google.com>
From: "T.J. Mercier" <tjmercier@google.com>
To: tjmercier@google.com, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Jonathan Corbet <corbet@lwn.net>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Michal Hocko <mhocko@kernel.org>,
	Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeelb@google.com>,
	Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>
X-Spamd-Result: default: False [-7.70 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.219.202:from];
	FORGED_SENDER(0.30)[tjmercier@google.com,3UIm8YwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-yb1-f202.google.com:rdns,mail-yb1-f202.google.com:helo];
	NEURAL_HAM(-0.00)[-0.665];
	RCPT_COUNT_TWELVE(0.00)[22];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.202:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,3UIm8YwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D72203F057
X-Spamd-Bar: -------
Message-ID-Hash: D53ER6FYQAMMR367OHB65BBJQKWT6T4O
X-Message-ID-Hash: D53ER6FYQAMMR367OHB65BBJQKWT6T4O
X-MailFrom: 3UIm8YwkKDXkqgjboZfbodlldib.ZljifkXol-jj-pfdifpqp.ifkXol.lod@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: android-mm@google.com, jstultz@google.com, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] memcg: Track exported dma-buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D53ER6FYQAMMR367OHB65BBJQKWT6T4O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When a buffer is exported to userspace, use memcg to attribute the
buffer to the allocating cgroup until all buffer references are
released.

Unlike the dmabuf sysfs stats implementation, this memcg accounting
avoids contention over the kernfs_rwsem incurred when creating or
removing nodes.

Signed-off-by: T.J. Mercier <tjmercier@google.com>
---
 Documentation/admin-guide/cgroup-v2.rst | 4 ++++
 drivers/dma-buf/dma-buf.c               | 5 +++++
 include/linux/dma-buf.h                 | 3 +++
 include/linux/memcontrol.h              | 1 +
 mm/memcontrol.c                         | 4 ++++
 5 files changed, 17 insertions(+)

diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
index c8ae7c897f14..538ae22bc514 100644
--- a/Documentation/admin-guide/cgroup-v2.rst
+++ b/Documentation/admin-guide/cgroup-v2.rst
@@ -1455,6 +1455,10 @@ PAGE_SIZE multiple when read back.
 		Amount of memory used for storing in-kernel data
 		structures.
 
+	  dmabuf (npn)
+		Amount of memory used for exported DMA buffers allocated by the cgroup.
+		Stays with the allocating cgroup regardless of how the buffer is shared.
+
 	  workingset_refault_anon
 		Number of refaults of previously evicted anonymous pages.
 
diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index e6528767efc7..ac45dd101c4d 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -75,6 +75,8 @@ static void dma_buf_release(struct dentry *dentry)
 	 */
 	BUG_ON(dmabuf->cb_in.active || dmabuf->cb_out.active);
 
+	mod_memcg_state(dmabuf->memcg, MEMCG_DMABUF, -dmabuf->size);
+	mem_cgroup_put(dmabuf->memcg);
 	dma_buf_stats_teardown(dmabuf);
 	dmabuf->ops->release(dmabuf);
 
@@ -673,6 +675,9 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
 	if (ret)
 		goto err_dmabuf;
 
+	dmabuf->memcg = get_mem_cgroup_from_mm(current->mm);
+	mod_memcg_state(dmabuf->memcg, MEMCG_DMABUF, dmabuf->size);
+
 	file->private_data = dmabuf;
 	file->f_path.dentry->d_fsdata = dmabuf;
 	dmabuf->file = file;
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 6fa8d4e29719..1f0ffb8e4bf5 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -22,6 +22,7 @@
 #include <linux/fs.h>
 #include <linux/dma-fence.h>
 #include <linux/wait.h>
+#include <linux/memcontrol.h>
 
 struct device;
 struct dma_buf;
@@ -446,6 +447,8 @@ struct dma_buf {
 		struct dma_buf *dmabuf;
 	} *sysfs_entry;
 #endif
+	/* The cgroup to which this buffer is currently attributed */
+	struct mem_cgroup *memcg;
 };
 
 /**
diff --git a/include/linux/memcontrol.h b/include/linux/memcontrol.h
index d3c8203cab6c..1c1da2da20a6 100644
--- a/include/linux/memcontrol.h
+++ b/include/linux/memcontrol.h
@@ -37,6 +37,7 @@ enum memcg_stat_item {
 	MEMCG_KMEM,
 	MEMCG_ZSWAP_B,
 	MEMCG_ZSWAPPED,
+	MEMCG_DMABUF,
 	MEMCG_NR_STAT,
 };
 
diff --git a/mm/memcontrol.c b/mm/memcontrol.c
index ab457f0394ab..680189bec7e0 100644
--- a/mm/memcontrol.c
+++ b/mm/memcontrol.c
@@ -1502,6 +1502,7 @@ static const struct memory_stat memory_stats[] = {
 	{ "unevictable",		NR_UNEVICTABLE			},
 	{ "slab_reclaimable",		NR_SLAB_RECLAIMABLE_B		},
 	{ "slab_unreclaimable",		NR_SLAB_UNRECLAIMABLE_B		},
+	{ "dmabuf",			MEMCG_DMABUF			},
 
 	/* The memory events */
 	{ "workingset_refault_anon",	WORKINGSET_REFAULT_ANON		},
@@ -1519,6 +1520,7 @@ static int memcg_page_state_unit(int item)
 	switch (item) {
 	case MEMCG_PERCPU_B:
 	case MEMCG_ZSWAP_B:
+	case MEMCG_DMABUF:
 	case NR_SLAB_RECLAIMABLE_B:
 	case NR_SLAB_UNRECLAIMABLE_B:
 	case WORKINGSET_REFAULT_ANON:
@@ -4042,6 +4044,7 @@ static const unsigned int memcg1_stats[] = {
 	WORKINGSET_REFAULT_ANON,
 	WORKINGSET_REFAULT_FILE,
 	MEMCG_SWAP,
+	MEMCG_DMABUF,
 };
 
 static const char *const memcg1_stat_names[] = {
@@ -4057,6 +4060,7 @@ static const char *const memcg1_stat_names[] = {
 	"workingset_refault_anon",
 	"workingset_refault_file",
 	"swap",
+	"dmabuf",
 };
 
 /* Universal VM events cgroup1 shows, original sort order */
-- 
2.39.0.314.g84b9a713c41-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

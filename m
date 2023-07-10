Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CF679A8C0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:42:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0774A3F5B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:42:09 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	by lists.linaro.org (Postfix) with ESMTPS id A08C23EF47
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 22:33:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=HkBlwseb;
	spf=pass (lists.linaro.org: domain of 3UIesZAsKDT0ZklZrqxlhmZfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--almasrymina.bounces.google.com designates 209.85.128.201 as permitted sender) smtp.mailfrom=3UIesZAsKDT0ZklZrqxlhmZfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--almasrymina.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-577323ba3d5so87489467b3.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 15:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689028432; x=1691620432;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtAFtzT26HwoXDlgQMNRwGQzav+ArXt3GcR/tyBO9gA=;
        b=HkBlwsebRlph1pf39ww19ir3TXRKAaMo7qsHRnHvMwd7eaBtsd+aEsyn2PFrjYVPN/
         Q1m2zbfqNxMH7b2QmwqEmx7Hw8+0VDdPsjPbv5ClyeuSbRANbqwhxJwBlxKfNPSzGspo
         7yQorKtO9RR3lY8Caocl1cEReHVAh3gKZjRNe8K/5mwfYof1P1cHyHw8LwIbAtpadOQi
         xt/cqEvGCmmTBBOu377T/OItahks2lVVcdnKMKB3565gPdYG/TvH20z3G9f0jRiObQC7
         /Ikbp8b7IOidW9ZdGHVTIfQ7XQf/3jcuOVmetsVhHpuKf5wo9wt+kW67ruZRHH/8+c9U
         xfJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689028432; x=1691620432;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtAFtzT26HwoXDlgQMNRwGQzav+ArXt3GcR/tyBO9gA=;
        b=Kbm0H27slwU2GIiw/VZYIo5I7BuLFsKVPfX6vI/J+6DkYp87WenGLTGTBghYFpTs1u
         dXE9sRid7CrNVi5osPNmnvvyV5OxTIxYEB5sWPW2oD9aMdpuOa68mTFlDdbQd7bwGCq3
         qvh8QW+rjFi67pv8ZPJG1s5/Woot6W/4WhcOQG1qHiUU6RiqfJ5psKvRJStBbAqyC6BW
         WPG/mttXi6uUxS5rO9mqDbng2+sEq+anHg503euNgO+F2m+tGOz1iWC2aatNCPHk5b7R
         uqsRQMXPmsxyhbx1Z3WSMrTHDU+KAp+Jl468pRyZaPr24LXLVmnKYq8fydoAZzrwTYAE
         M1Og==
X-Gm-Message-State: ABy/qLYJ+/7bRsMz3OT8N1gsQ2j/vRN+ImlQTCoWfsP8ESJr3euSkks/
	OP6T6yhGKjgqmuC3IBfe4Me1sD/gyJsyRn80fQ==
X-Google-Smtp-Source: APBJJlHZU5kmoFW1exgCNXZVHrLAP9FADaXQZjpO/QBcTqC0+9vh1t2Y55mCZ3uaTrm2ya/0CivoRDUtK7ota9l6xA==
X-Received: from almasrymina.svl.corp.google.com ([2620:15c:2c4:200:4c0f:bfb6:9942:8c53])
 (user=almasrymina job=sendgmr) by 2002:a81:7e0c:0:b0:56c:e9fe:3cb4 with SMTP
 id o12-20020a817e0c000000b0056ce9fe3cb4mr204351ywn.1.1689028432231; Mon, 10
 Jul 2023 15:33:52 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:32:54 -0700
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
Mime-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
X-Mailer: git-send-email 2.41.0.390.g38632f3daf-goog
Message-ID: <20230710223304.1174642-4-almasrymina@google.com>
From: Mina Almasry <almasrymina@google.com>
To: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	netdev@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
X-Spamd-Result: default: False [-0.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	FORGED_SENDER(0.30)[almasrymina@google.com,3UIesZAsKDT0ZklZrqxlhmZfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--almasrymina.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.201:from];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,davemloft.net,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,3UIesZAsKDT0ZklZrqxlhmZfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--almasrymina.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A08C23EF47
X-Spamd-Bar: /
X-MailFrom: 3UIesZAsKDT0ZklZrqxlhmZfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--almasrymina.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TDVBT7QUIEE3VAYESWCTY2ZMBCB7XPWC
X-Message-ID-Hash: TDVBT7QUIEE3VAYESWCTY2ZMBCB7XPWC
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:41:04 +0000
CC: Mina Almasry <almasrymina@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 03/10] dma-buf: add support for NET_TX pages
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TDVBT7QUIEE3VAYESWCTY2ZMBCB7XPWC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Used the paged attachment mappings support to create NET_TX pages.
NET_TX pages can be used in the networking transmit path:

1. Create an iov_iter & bio_vec entries to represent this dmabuf.

2. Initialize the bio_vec with the backing dmabuf pages.

Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 drivers/dma-buf/dma-buf.c    | 47 ++++++++++++++++++++++++++++++++++++
 include/linux/dma-buf.h      |  7 ++++++
 include/uapi/linux/dma-buf.h |  1 +
 3 files changed, 55 insertions(+)

diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index acb86bf406f4..3ca71297b9b4 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -1683,6 +1683,7 @@ static void dma_buf_pages_destroy(struct percpu_ref *ref)
 }
 
 const struct dma_buf_pages_type_ops net_rx_ops;
+const struct dma_buf_pages_type_ops net_tx_ops;
 
 static long dma_buf_create_pages(struct file *file,
 				 struct dma_buf_create_pages_info *create_info)
@@ -1799,6 +1800,9 @@ static long dma_buf_create_pages(struct file *file,
 	case DMA_BUF_PAGES_NET_RX:
 		priv->type_ops = &net_rx_ops;
 		break;
+	case DMA_BUF_PAGES_NET_TX:
+		priv->type_ops = &net_tx_ops;
+		break;
 	default:
 		err = -EINVAL;
 		goto out_put_new_file;
@@ -2140,3 +2144,46 @@ struct page *dma_buf_pages_net_rx_alloc(struct dma_buf_pages *priv)
 	percpu_ref_get(&priv->pgmap.ref);
 	return pg;
 }
+
+/********************************
+ *	dma_buf_pages_net_tx	*
+ ********************************/
+
+static void dma_buf_pages_net_tx_release(struct dma_buf_pages *priv,
+					 struct file *file)
+{
+	int i;
+	for (i = 0; i < priv->num_pages; i++)
+		put_page(&priv->pages[i]);
+}
+
+static int dma_buf_pages_net_tx_init(struct dma_buf_pages *priv,
+				     struct file *file)
+{
+	int i;
+	priv->net_tx.tx_bv = kvmalloc_array(priv->num_pages,
+					    sizeof(struct bio_vec), GFP_KERNEL);
+	if (!priv->net_tx.tx_bv)
+		return -ENOMEM;
+
+	for (i = 0; i < priv->num_pages; i++) {
+		priv->net_tx.tx_bv[i].bv_page = &priv->pages[i];
+		priv->net_tx.tx_bv[i].bv_offset = 0;
+		priv->net_tx.tx_bv[i].bv_len = PAGE_SIZE;
+	}
+	percpu_ref_get_many(&priv->pgmap.ref, priv->num_pages);
+	iov_iter_bvec(&priv->net_tx.iter, WRITE, priv->net_tx.tx_bv,
+		      priv->num_pages, priv->dmabuf->size);
+	return 0;
+}
+
+static void dma_buf_pages_net_tx_free(struct dma_buf_pages *priv)
+{
+	kvfree(priv->net_tx.tx_bv);
+}
+
+const struct dma_buf_pages_type_ops net_tx_ops = {
+	.dma_buf_pages_init		= dma_buf_pages_net_tx_init,
+	.dma_buf_pages_release		= dma_buf_pages_net_tx_release,
+	.dma_buf_pages_destroy		= dma_buf_pages_net_tx_free,
+};
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index e8e66d6407d0..93228a2fec47 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -22,6 +22,7 @@
 #include <linux/fs.h>
 #include <linux/dma-fence.h>
 #include <linux/wait.h>
+#include <linux/uio.h>
 #include <linux/genalloc.h>
 #include <linux/xarray.h>
 #include <net/page_pool.h>
@@ -555,6 +556,11 @@ struct dma_buf_pages_type_ops {
 				  struct page *page);
 };
 
+struct dma_buf_pages_net_tx {
+	struct iov_iter iter;
+	struct bio_vec *tx_bv;
+};
+
 struct dma_buf_pages_net_rx {
 	struct gen_pool *page_pool;
 	struct xarray bound_rxq_list;
@@ -579,6 +585,7 @@ struct dma_buf_pages {
 
 	union {
 		struct dma_buf_pages_net_rx net_rx;
+		struct dma_buf_pages_net_tx net_tx;
 	};
 };
 
diff --git a/include/uapi/linux/dma-buf.h b/include/uapi/linux/dma-buf.h
index b392cef9d3c6..546f211a7556 100644
--- a/include/uapi/linux/dma-buf.h
+++ b/include/uapi/linux/dma-buf.h
@@ -187,6 +187,7 @@ struct dma_buf_create_pages_info {
 };
 
 #define DMA_BUF_PAGES_NET_RX		(1 << 0)
+#define DMA_BUF_PAGES_NET_TX		(2 << 0)
 
 #define DMA_BUF_CREATE_PAGES	_IOW(DMA_BUF_BASE, 4, struct dma_buf_create_pages_info)
 
-- 
2.41.0.390.g38632f3daf-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

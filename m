Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2A479A8D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:44:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C7723F52D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:44:32 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 6A8073EBCF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 22:34:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=CetzuFar;
	spf=pass (lists.linaro.org: domain of 3b4esZAsKDVw4FG4MLSGCH4AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--almasrymina.bounces.google.com designates 209.85.219.202 as permitted sender) smtp.mailfrom=3b4esZAsKDVw4FG4MLSGCH4AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--almasrymina.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-c83284edf0eso1866414276.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 15:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689028463; x=1691620463;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=oQJYRa4cYbFlxJ1mDmha+0HxPANtp6LWuy6ed2Yjbu4=;
        b=CetzuFarHJgPUiGBwDAWLpdzt0w3V9hQbqMPhuZfIenfXirykHD2HLGYdWQSkINvJh
         xJG2uW65yyAAb+o06RvuUp3WpLKZAzNYnV7EddNjt5dfXFCFq8AZmqCWdcr58enYZIQE
         n5JK8gg0yI5kVZJS/Tnc0gRJy7edUPwC0tcHLkojiMtzkNIt/J3L+ITk1kszc47h7Vz7
         7HfhvqbXuGyD3D189Y0m4jp9NOnOMRg/24QxNfglicfLYXQlHIKScA6XdF716DYeVEDF
         C2/NnZaF4OaiJaWHPvY80aoJTwZFVHVTEJFSi6QbKnAMO9h++YLyvxmo53PBx0z1bgkV
         UbJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689028463; x=1691620463;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oQJYRa4cYbFlxJ1mDmha+0HxPANtp6LWuy6ed2Yjbu4=;
        b=GZM2PD09BFt4jfTfYjFBEWDkf6CPbsXbO1JNDvl12ZpYMg/XvnNeX7nnWOGG9zxYnO
         2wuV7+D1pflCTVXT8J/vTlRYOBhLPLtrWdSAMLIsMpZ1hm4rjPWBH9Lt0nuD3uj+ajnk
         AnjJnKzulD0VGkfWxjhStp4deqFAgqf2Socb7hQ1P0hbZm3t87xuvoYfiTkTElcaEZyH
         wUsxLiuu+ygBghph/AJAuvb9OeOQw1zCJBSopAodyd25ILHp+AldlJ0lIFh2ZcpTa0YQ
         1lNGtJCVBuIDLK07Lf6lGVI0B/u0FRrEWwl26FoAMsHxX/AIffb59BAGm4rzzBU0XFir
         B6Dg==
X-Gm-Message-State: ABy/qLa306eIeNza3R77oAU1UGvTdbBP0Lrmdk3WdhXFPLC/7Afh98hc
	o/kBHJaNh/mp+Xh19ylMZx12y+EWQfaAFQub6g==
X-Google-Smtp-Source: APBJJlHJiw9FD0eEFF7lSrjMDR+hUHliNX9UFzA9i3ufkboc97+XMgqpqjgotP7HgV453EARzYkdxteZjWVekbKkug==
X-Received: from almasrymina.svl.corp.google.com ([2620:15c:2c4:200:4c0f:bfb6:9942:8c53])
 (user=almasrymina job=sendgmr) by 2002:a25:4252:0:b0:c6f:6ffe:f904 with SMTP
 id p79-20020a254252000000b00c6f6ffef904mr50579yba.9.1689028463039; Mon, 10
 Jul 2023 15:34:23 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:33:01 -0700
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
Mime-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
X-Mailer: git-send-email 2.41.0.390.g38632f3daf-goog
Message-ID: <20230710223304.1174642-11-almasrymina@google.com>
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
	FORGED_SENDER(0.30)[almasrymina@google.com,3b4esZAsKDVw4FG4MLSGCH4AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--almasrymina.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.202:from];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,davemloft.net,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,3b4esZAsKDVw4FG4MLSGCH4AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--almasrymina.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6A8073EBCF
X-Spamd-Bar: /
X-MailFrom: 3b4esZAsKDVw4FG4MLSGCH4AIIAF8.6IGFCH4LI-GG-MCAFCMNM.FCH4LI.ILA@flex--almasrymina.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LL5RUHGE7JACYTOHPJUA3UI7P2BVQANO
X-Message-ID-Hash: LL5RUHGE7JACYTOHPJUA3UI7P2BVQANO
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:41:23 +0000
CC: Mina Almasry <almasrymina@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 10/10] memory-provider: add dmabuf devmem provider
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LL5RUHGE7JACYTOHPJUA3UI7P2BVQANO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use Jakub's memory provider PoC API:
https://github.com/kuba-moo/linux/tree/pp-providers

To implement a dmabuf devmem memory provider. The provider allocates
NET_RX dmabuf pages to the page pool. This abstracts any custom memory
allocation or freeing changes for devmem TCP from drivers using the
page pool.

The memory provider allocates NET_RX pages from the
dmabuf pages provided by the driver. These pages are ZONE_DEVICE pages
with the sg dma_addrs stored in the zone_device_data entry in the page.
The page pool entries in struct page are in a union with the ZONE_DEVICE
entries, and - without special handling - the page pool would
accidentally overwrite the data in the ZONE_DEVICE fields.

To solve this, the memory provider converts the page from a ZONE_DEVICE
page to a ZONE_NORMAL page upon giving it to the page pool, and converts
it back to ZONE_DEVICE page upon getting it back from the page pool.
This is safe to do because the NET_RX pages are dmabuf pages created to
hold the dma_addr in the dma_buf_map_attachement sg_table entries, and
are only used with code that handles them specifically.

However, since dmabuf pages can now also be page pool page, we need
to update 2 places to detect this correctly:

1. is_dma_buf_page() needs to be updated to correctly detect dmabuf
   pages after they've been inserted into the pool.

2. dma_buf_page_to_dma_addr() needs to be updated. For page pool pages,
   the dma_addr exists in page->dma_addr. For non page pool pages, the
   dma_addr exists in page->zone_device_data.

Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 include/linux/dma-buf.h |  29 ++++++++++-
 include/net/page_pool.h |  20 ++++++++
 net/core/page_pool.c    | 104 ++++++++++++++++++++++++++++++++++++----
 3 files changed, 143 insertions(+), 10 deletions(-)

diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index 93228a2fec47..896359fa998d 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -692,15 +692,26 @@ static inline bool is_dma_buf_pages_file(struct file *file)
 
 struct page *dma_buf_pages_net_rx_alloc(struct dma_buf_pages *priv);
 
+static inline bool is_dma_buf_page_net_rx(struct page *page)
+{
+	struct dma_buf_pages *priv;
+
+	return (is_page_pool_page(page) && (priv = page->pp->mp_priv) &&
+		priv->pgmap.ops == &dma_buf_pgmap_ops);
+}
+
 static inline bool is_dma_buf_page(struct page *page)
 {
 	return (is_zone_device_page(page) && page->pgmap &&
-		page->pgmap->ops == &dma_buf_pgmap_ops);
+		page->pgmap->ops == &dma_buf_pgmap_ops) ||
+	       is_dma_buf_page_net_rx(page);
 }
 
 static inline dma_addr_t dma_buf_page_to_dma_addr(struct page *page)
 {
-	return (dma_addr_t)page->zone_device_data;
+	return is_dma_buf_page_net_rx(page) ?
+		       (dma_addr_t)page->dma_addr :
+		       (dma_addr_t)page->zone_device_data;
 }
 
 static inline int dma_buf_map_sg(struct device *dev, struct scatterlist *sg,
@@ -718,6 +729,16 @@ static inline int dma_buf_map_sg(struct device *dev, struct scatterlist *sg,
 
 	return nents;
 }
+
+static inline bool is_dma_buf_pages_priv(void *ptr)
+{
+	struct dma_buf_pages *priv = (struct dma_buf_pages *)ptr;
+
+	if (!priv || priv->pgmap.ops != &dma_buf_pgmap_ops)
+		return false;
+
+	return true;
+}
 #else
 static inline bool is_dma_buf_page(struct page *page)
 {
@@ -745,6 +766,10 @@ static inline struct page *dma_buf_pages_net_rx_alloc(struct dma_buf_pages *priv
 	return NULL;
 }
 
+static inline bool is_dma_buf_pages_priv(void *ptr)
+{
+	return false;
+}
 #endif
 
 
diff --git a/include/net/page_pool.h b/include/net/page_pool.h
index 7b6668479baf..a57757a13cc8 100644
--- a/include/net/page_pool.h
+++ b/include/net/page_pool.h
@@ -157,6 +157,7 @@ enum pp_memory_provider_type {
 	PP_MP_HUGE_SPLIT, /* 2MB, online page alloc */
 	PP_MP_HUGE, /* 2MB, all memory pre-allocated */
 	PP_MP_HUGE_1G, /* 1G pages, MEP, pre-allocated */
+	PP_MP_DMABUF_DEVMEM, /* dmabuf devmem provider */
 };
 
 struct pp_memory_provider_ops {
@@ -170,6 +171,7 @@ extern const struct pp_memory_provider_ops basic_ops;
 extern const struct pp_memory_provider_ops hugesp_ops;
 extern const struct pp_memory_provider_ops huge_ops;
 extern const struct pp_memory_provider_ops huge_1g_ops;
+extern const struct pp_memory_provider_ops dmabuf_devmem_ops;
 
 struct page_pool {
 	struct page_pool_params p;
@@ -420,4 +422,22 @@ static inline void page_pool_nid_changed(struct page_pool *pool, int new_nid)
 		page_pool_update_nid(pool, new_nid);
 }
 
+static inline bool is_page_pool_page(struct page *page)
+{
+	/* page->pp_magic is OR'ed with PP_SIGNATURE after the allocation
+	 * in order to preserve any existing bits, such as bit 0 for the
+	 * head page of compound page and bit 1 for pfmemalloc page, so
+	 * mask those bits for freeing side when doing below checking,
+	 * and page_is_pfmemalloc() is checked in __page_pool_put_page()
+	 * to avoid recycling the pfmemalloc page.
+	 */
+	if (unlikely((page->pp_magic & ~0x3UL) != PP_SIGNATURE))
+		return false;
+
+	if (!page->pp)
+		return false;
+
+	return true;
+}
+
 #endif /* _NET_PAGE_POOL_H */
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index df3f431fcff3..e626d4e309c1 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -236,6 +236,9 @@ static int page_pool_init(struct page_pool *pool,
 	case PP_MP_HUGE_1G:
 		pool->mp_ops = &huge_1g_ops;
 		break;
+	case PP_MP_DMABUF_DEVMEM:
+		pool->mp_ops = &dmabuf_devmem_ops;
+		break;
 	default:
 		err = -EINVAL;
 		goto free_ptr_ring;
@@ -975,14 +978,7 @@ bool page_pool_return_skb_page(struct page *page, bool napi_safe)
 
 	page = compound_head(page);
 
-	/* page->pp_magic is OR'ed with PP_SIGNATURE after the allocation
-	 * in order to preserve any existing bits, such as bit 0 for the
-	 * head page of compound page and bit 1 for pfmemalloc page, so
-	 * mask those bits for freeing side when doing below checking,
-	 * and page_is_pfmemalloc() is checked in __page_pool_put_page()
-	 * to avoid recycling the pfmemalloc page.
-	 */
-	if (unlikely((page->pp_magic & ~0x3UL) != PP_SIGNATURE))
+	if (!is_page_pool_page(page))
 		return false;
 
 	pp = page->pp;
@@ -1538,3 +1534,95 @@ const struct pp_memory_provider_ops huge_1g_ops = {
 	.alloc_pages		= mp_huge_1g_alloc_pages,
 	.release_page		= mp_huge_1g_release,
 };
+
+/*** "Dmabuf devmem page" ***/
+
+/* Dmabuf devmem memory provider allocates DMA_BUF_PAGES_NET_RX pages which are
+ * backing the dma_buf_map_attachment() from the NIC to the device memory.
+ *
+ * These pages are wrappers around the dma_addr of the sg entries in the
+ * sg_table returned from dma_buf_map_attachment(). They can be passed to the
+ * networking stack, which will generate devmem skbs from them and process them
+ * correctly.
+ */
+static int mp_dmabuf_devmem_init(struct page_pool *pool)
+{
+	struct dma_buf_pages *priv;
+
+	priv = pool->mp_priv;
+	if (!is_dma_buf_pages_priv(priv))
+		return -EINVAL;
+
+	return 0;
+}
+
+static void mp_dmabuf_devmem_destroy(struct page_pool *pool)
+{
+}
+
+static struct page *mp_dmabuf_devmem_alloc_pages(struct page_pool *pool,
+						 gfp_t gfp)
+{
+	struct dma_buf_pages *priv = pool->mp_priv;
+	dma_addr_t dma_addr;
+	struct page *page;
+
+	page = dma_buf_pages_net_rx_alloc(priv);
+	if (!page)
+		return page;
+
+	/* It shouldn't be possible for the allocation to give us a page not
+	 * belonging to this page_pool's pgmap.
+	 */
+	BUG_ON(page->pgmap != &priv->pgmap);
+
+	/* netdev_rxq_alloc_dma_buf_page() allocates a ZONE_DEVICE page.
+	 * Prepare to convert it into a page_pool page. We need to hold pgmap
+	 * and zone_device_data (which holds the dma_addr).
+	 *
+	 * DMA_BUF_PAGES_NET_RX are dmabuf pages created specifically to wrap
+	 * the dma_addr of the sg_table into a struct page. These pages are
+	 * used by code specifically equipped to handle them, so this
+	 * conversation from ZONE_DEVICE page to page pool page should be safe.
+	 */
+	dma_addr = (dma_addr_t)page->zone_device_data;
+
+	set_page_zone(page, ZONE_NORMAL);
+	page->pp_magic = 0;
+	page_pool_set_pp_info(pool, page);
+
+	page->dma_addr = dma_addr;
+
+	return page;
+}
+
+static bool mp_dmabuf_devmem_release_page(struct page_pool *pool,
+		struct page *page)
+{
+	struct dma_buf_pages *priv = pool->mp_priv;
+	unsigned long dma_addr = page->dma_addr;
+
+	page_pool_clear_pp_info(page);
+
+	/* As the page pool releases the page, restore it back to a ZONE_DEVICE
+	 * page so it gets freed according to the
+	 * page->pgmap->ops->page_free().
+	 */
+	set_page_zone(page, ZONE_DEVICE);
+	page->zone_device_data = (void*)dma_addr;
+	page->pgmap = &priv->pgmap;
+	put_page(page);
+
+	/* Return false here as we don't want the page pool touching the page
+	 * after it's released to us.
+	 */
+	return false;
+}
+
+const struct pp_memory_provider_ops dmabuf_devmem_ops = {
+	.init			= mp_dmabuf_devmem_init,
+	.destroy		= mp_dmabuf_devmem_destroy,
+	.alloc_pages		= mp_dmabuf_devmem_alloc_pages,
+	.release_page		= mp_dmabuf_devmem_release_page,
+};
+EXPORT_SYMBOL(dmabuf_devmem_ops);
-- 
2.41.0.390.g38632f3daf-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

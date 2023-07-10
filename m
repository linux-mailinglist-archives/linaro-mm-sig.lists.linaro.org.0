Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 894F079A8D0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:44:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98F4A3F52D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:44:13 +0000 (UTC)
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	by lists.linaro.org (Postfix) with ESMTPS id 695EE43C9D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 22:34:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b="ZycEIM/t";
	spf=pass (lists.linaro.org: domain of 3aoesZAsKDVczABzHGNB7Cz5DD5A3.1DBA7CzGD-BB-H75A7HIH.A7CzGD.DG5@flex--almasrymina.bounces.google.com designates 209.85.219.201 as permitted sender) smtp.mailfrom=3aoesZAsKDVczABzHGNB7Cz5DD5A3.1DBA7CzGD-BB-H75A7HIH.A7CzGD.DG5@flex--almasrymina.bounces.google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-bacfa4ef059so5900820276.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Jul 2023 15:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689028459; x=1691620459;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=UnMZL8UhzWb/0aBP8bCpuACSexb4BfJiKzPPZTajpks=;
        b=ZycEIM/tzN0od6DMdpG2ZBlkJqdG/YaEAiXfT+38tW9bimX5mFjLfnmha8sMd1FwJJ
         P1YTcXkuScRdFZ+6Nke3Sdy4NjMA2W+JEp3F6Wzh3QRgc3G5LGn1Zu1iHZ4RyIqBjoHq
         k9jtQN4DN+tPVpc1G/NOC+sNs6OMyg6jWMhgxeuaJcoDHd6HbM1Xh1fktrKhCJh7t8TZ
         2mOqQGiKrSnTwbDIJsz/RpKI8MeOMnJHXoAtfD0XSqgWhXjbLkfzJLjhD09BOkgZES0H
         docmIVXKHe4UX6CgXt/bh6mysKACg9wyOus054kiN2CxJmmkeSAQzjRyHNih7/Suny73
         Z7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689028459; x=1691620459;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UnMZL8UhzWb/0aBP8bCpuACSexb4BfJiKzPPZTajpks=;
        b=JTmw9sPQHwE5uaQJgbg6lRsXkubq8gLFZvzxIt1b4maUp/Qde+NTd8ukrWkwBFSSDV
         yznDZiHU/HsVxUnAWCH60DP2i+eh3BZUnyHWG2jx2PCgaEsYVbMPjPcZemNvJI+dHf1e
         2HPrrlTryn89lmshmdkZyAupwPXO6isOSgu3Xl8SKwd1zB73Nnk6g6/hwhctEKkaETpV
         GvDaG7J2I0YVlcPiNB2Lp7zVkgiuHJ9dkQVy4BD9R3llC43bCCY4mav4azAyxA3iaapa
         zk2P8mAD2VCxw4mX4FxVJCViJTA1NHkcbt52EwQkwrtoZ1tDBl6pPMuvmeWr3e8ISagG
         z98A==
X-Gm-Message-State: ABy/qLaHesbheH2lqxD665t8PzeTJw/IgZ8BNVNbxpOwyES01XEfFcfg
	CCOytoG7OAgLzLH6E6Crb2dT0OCGEcFW/7VXyA==
X-Google-Smtp-Source: APBJJlEXtctaXcsu/1jDVZnB9gs4bZSM839Y7nw3IybEX7aGlwuQfZwRkT28XLvKo+wcjjO6pG3pnxDTATxBbfxAfA==
X-Received: from almasrymina.svl.corp.google.com ([2620:15c:2c4:200:4c0f:bfb6:9942:8c53])
 (user=almasrymina job=sendgmr) by 2002:a25:11c6:0:b0:c85:934:7ad2 with SMTP
 id 189-20020a2511c6000000b00c8509347ad2mr21545ybr.8.1689028458996; Mon, 10
 Jul 2023 15:34:18 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:33:00 -0700
In-Reply-To: <20230710223304.1174642-1-almasrymina@google.com>
Mime-Version: 1.0
References: <20230710223304.1174642-1-almasrymina@google.com>
X-Mailer: git-send-email 2.41.0.390.g38632f3daf-goog
Message-ID: <20230710223304.1174642-10-almasrymina@google.com>
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
	FORGED_SENDER(0.30)[almasrymina@google.com,3aoesZAsKDVczABzHGNB7Cz5DD5A3.1DBA7CzGD-BB-H75A7HIH.A7CzGD.DG5@flex--almasrymina.bounces.google.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.201:from];
	DKIM_TRACE(0.00)[google.com:+];
	FREEMAIL_CC(0.00)[google.com,linaro.org,amd.com,davemloft.net,kernel.org,redhat.com,arndb.de,gmail.com,ziepe.ca];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[almasrymina@google.com,3aoesZAsKDVczABzHGNB7Cz5DD5A3.1DBA7CzGD-BB-H75A7HIH.A7CzGD.DG5@flex--almasrymina.bounces.google.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 695EE43C9D
X-Spamd-Bar: /
X-MailFrom: 3aoesZAsKDVczABzHGNB7Cz5DD5A3.1DBA7CzGD-BB-H75A7HIH.A7CzGD.DG5@flex--almasrymina.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: TDPED3FRXI25VHVM2CJFES637E3YUKXO
X-Message-ID-Hash: TDPED3FRXI25VHVM2CJFES637E3YUKXO
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:41:23 +0000
CC: Mina Almasry <almasrymina@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC PATCH 09/10] memory-provider: updates core provider API for devmem TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TDPED3FRXI25VHVM2CJFES637E3YUKXO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Implement a few updates to Jakub's RFC memory provider API to make it
suitable for device memory TCP:

1. Currently for devmem TCP the driver's netdev_rx_queue holds a reference to
   the dma_buf_pages struct and needs to pass that to the page_pool's memory
   provider somehow. For PoC purposes, create a pp->mp_priv field that is set
   by the driver. Likely needs a better API (likely dependant on the
   general memory provider API).

2. The current memory_provider API gives the memory_provider the option
   to override put_page(), but tries page_pool_clear_pp_info() after the
   memory provider has released the page. IMO if the page freeing is
   delegated to the provider then the page_pool should not modify the
   page after release_page() has been called.

Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 include/net/page_pool.h | 1 +
 net/core/page_pool.c    | 7 ++++---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/net/page_pool.h b/include/net/page_pool.h
index 364fe6924258..7b6668479baf 100644
--- a/include/net/page_pool.h
+++ b/include/net/page_pool.h
@@ -78,6 +78,7 @@ struct page_pool_params {
 	struct device	*dev; /* device, for DMA pre-mapping purposes */
 	struct napi_struct *napi; /* Sole consumer of pages, otherwise NULL */
 	u8		memory_provider; /* haaacks! should be user-facing */
+	void		*mp_priv; /* argument to pass to the memory provider */
 	enum dma_data_direction dma_dir; /* DMA mapping direction */
 	unsigned int	max_len; /* max DMA sync memory size */
 	unsigned int	offset;  /* DMA addr offset */
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index d50f6728e4f6..df3f431fcff3 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -241,6 +241,7 @@ static int page_pool_init(struct page_pool *pool,
 		goto free_ptr_ring;
 	}
 
+	pool->mp_priv = pool->p.mp_priv;
 	if (pool->mp_ops) {
 		err = pool->mp_ops->init(pool);
 		if (err) {
@@ -564,16 +565,16 @@ void page_pool_return_page(struct page_pool *pool, struct page *page)
 	else
 		__page_pool_release_page_dma(pool, page);
 
-	page_pool_clear_pp_info(page);
-
 	/* This may be the last page returned, releasing the pool, so
 	 * it is not safe to reference pool afterwards.
 	 */
 	count = atomic_inc_return_relaxed(&pool->pages_state_release_cnt);
 	trace_page_pool_state_release(pool, page, count);
 
-	if (put)
+	if (put) {
+		page_pool_clear_pp_info(page);
 		put_page(page);
+	}
 	/* An optimization would be to call __free_pages(page, pool->p.order)
 	 * knowing page is not part of page-cache (thus avoiding a
 	 * __page_cache_release() call).
-- 
2.41.0.390.g38632f3daf-goog

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

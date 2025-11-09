Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJnoEBn54GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BAE410065
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13BFE404EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:58:32 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 1A9393F719
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Nov 2025 21:38:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OUZcaulk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of rogerq@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=rogerq@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 881204369A;
	Sun,  9 Nov 2025 21:38:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 056F8C113D0;
	Sun,  9 Nov 2025 21:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762724328;
	bh=gIGT5LBe7L8md5oQjDH05tEQUXGSEFsCS5BXhErI/34=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=OUZcaulkOQYNXcO7TMmJPnjXonxkmYthF+VuP3vBb8wJc1g2Qmuew0M2fxAJgDHTw
	 /6iRIX+w6jL1l4Rp3fW74gOvMpU+zw/PGViNxeoM5k9A2c3D9UNjjagQPmqX05O6Om
	 m1wt9FnBr/EEWUGdQ9Si8QPCnjOZsP3GyUguet0FUQBXulapHRXzy/qxpOX0LTV3R/
	 fmMS2lT4PMEPb82FRFWeMHqSlVOeykXL69sVA6FqXp3z24EGkYI2tnH8cyKkluwm+c
	 sHdQ4IJPPAFjAxa+QeOV3DxGf/YlP85xiw7dPp2h9wm5s78gg7IbDpICVd8brz5S0w
	 UclccOg1y+yiw==
From: Roger Quadros <rogerq@kernel.org>
Date: Sun, 09 Nov 2025 23:37:52 +0200
MIME-Version: 1.0
Message-Id: <20251109-am65-cpsw-xdp-zc-v2-2-858f60a09d12@kernel.org>
References: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
In-Reply-To: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Simon Horman <horms@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4303; i=rogerq@kernel.org;
 h=from:subject:message-id; bh=gIGT5LBe7L8md5oQjDH05tEQUXGSEFsCS5BXhErI/34=;
 b=owEBbQKS/ZANAwAIAdJaa9O+djCTAcsmYgBpEQnZEgrhSGZzTKNQF5wrsKUoU8Mb/qZOqwVbB
 HmeIxtF37CJAjMEAAEIAB0WIQRBIWXUTJ9SeA+rEFjSWmvTvnYwkwUCaREJ2QAKCRDSWmvTvnYw
 kyAaEACtovfY4fmc96nxZTZPLeKHKdd2tyzoOJ9yiDpSjIcW4/MWpSGwAjpkZs0oY/lFtXRtJ2f
 13a9JsOaiF4cQO5kpuTMuTss0ooCuqcZJSi1/NYm8iCSK0qGxZhz9hhTIElmiqyJhvQfCTCBali
 LLGl4/oIrCinlDgiNf6BM4IM9KUChcCYU7TG4jGdseTskYgTYRIzvKyuyXFDHdJAho2foKQ/orE
 W8IOD+UPMz85veTz8OjxbQPA0ZcnIMoAQp2C6sJDPw/U3Kbb/UKsUeECTWF0zYctuAhFlJSu6yZ
 GdSjKbJrVryKVoh5GQcXfnTF0u8G1931FTdBuz72peeI2g8P8JJz8/WQ3jb+wPlBl0XugaCulci
 gOmeUjmQ8iUpl8nSsBWqdjD0H/kJyXftle98n5W9KHV4WThr3V9R7J9SugrC8LmmfPy8K9MnWaw
 ErkDehHGIBUSNF3iucDOmHsRHYyzNNkMhOrECkpeJQKDuBASjbCUv+nR+brGif4k5dy6mXN3hLT
 jxfHz9b+UY2uwb1GaY/XjMh8neX7txo3f0r8wapC8AVpdPjlQjQPLAFZ9ARvM06fvrsw+/lJO58
 +0ymplrGTe9xCkt+l5VdnndtRoQ9w+qgNkgWsD4v6/5KYBYgApmD9L2r+cDFcEcVcbAeUUEDSOH
 v6VdtOKfSUZzuTw==
X-Developer-Key: i=rogerq@kernel.org; a=openpgp;
 fpr=412165D44C9F52780FAB1058D25A6BD3BE763093
X-Spamd-Bar: --
X-MailFrom: rogerq@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: L322BSNHBHXNMCUULJUL5H322PISA7H6
X-Message-ID-Hash: L322BSNHBHXNMCUULJUL5H322PISA7H6
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:48 +0000
CC: srk@ti.com, Meghana Malladi <m-malladi@ti.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Roger Quadros <rogerq@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v2 2/7] net: ethernet: ti: am65-cpsw: Retain page_pool on XDP program exchange
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L322BSNHBHXNMCUULJUL5H322PISA7H6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[3785];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[ti.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,linaro.org,amd.com,fomichev.me];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.402];
	FROM_NEQ_ENVFROM(0.00)[rogerq@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 11BAE410065
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a new 'retain_page_pool' flag to am65_cpsw_destroy_rxq/s()
so that the page pool allocation is retained  while
switching XDP program. This will avoid requiring
any re-allocation and potential failures during low memory
conditions.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/net/ethernet/ti/am65-cpsw-nuss.c | 38 ++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index f8beb1735fb9cb75577e60f5b22111cb3a66acb9..f9e2286efa29bbb7056fda1fc82c38b479aae8bd 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -505,7 +505,7 @@ static inline void am65_cpsw_put_page(struct am65_cpsw_rx_flow *flow,
 static void am65_cpsw_nuss_rx_cleanup(void *data, dma_addr_t desc_dma);
 static void am65_cpsw_nuss_tx_cleanup(void *data, dma_addr_t desc_dma);
 
-static void am65_cpsw_destroy_rxq(struct am65_cpsw_common *common, int id)
+static void am65_cpsw_destroy_rxq(struct am65_cpsw_common *common, int id, bool retain_page_pool)
 {
 	struct am65_cpsw_rx_chn *rx_chn = &common->rx_chns;
 	struct am65_cpsw_rx_flow *flow;
@@ -528,13 +528,13 @@ static void am65_cpsw_destroy_rxq(struct am65_cpsw_common *common, int id)
 			xdp_rxq_info_unreg(rxq);
 	}
 
-	if (flow->page_pool) {
+	if (flow->page_pool && !retain_page_pool) {
 		page_pool_destroy(flow->page_pool);
 		flow->page_pool = NULL;
 	}
 }
 
-static void am65_cpsw_destroy_rxqs(struct am65_cpsw_common *common)
+static void am65_cpsw_destroy_rxqs(struct am65_cpsw_common *common, bool retain_page_pool)
 {
 	struct am65_cpsw_rx_chn *rx_chn = &common->rx_chns;
 	int id;
@@ -549,7 +549,7 @@ static void am65_cpsw_destroy_rxqs(struct am65_cpsw_common *common)
 	}
 
 	for (id = common->rx_ch_num_flows - 1; id >= 0; id--)
-		am65_cpsw_destroy_rxq(common, id);
+		am65_cpsw_destroy_rxq(common, id, retain_page_pool);
 
 	k3_udma_glue_disable_rx_chn(common->rx_chns.rx_chn);
 }
@@ -574,13 +574,18 @@ static int am65_cpsw_create_rxq(struct am65_cpsw_common *common, int id)
 
 	flow = &rx_chn->flows[id];
 	pp_params.napi = &flow->napi_rx;
-	pool = page_pool_create(&pp_params);
-	if (IS_ERR(pool)) {
-		ret = PTR_ERR(pool);
-		return ret;
-	}
 
-	flow->page_pool = pool;
+	if (!flow->page_pool) {
+		pool = page_pool_create(&pp_params);
+		if (IS_ERR(pool)) {
+			ret = PTR_ERR(pool);
+			return ret;
+		}
+
+		flow->page_pool = pool;
+	} else {
+		pool = flow->page_pool;
+	}
 
 	/* using same page pool is allowed as no running rx handlers
 	 * simultaneously for both ndevs
@@ -626,7 +631,7 @@ static int am65_cpsw_create_rxq(struct am65_cpsw_common *common, int id)
 	return 0;
 
 err:
-	am65_cpsw_destroy_rxq(common, id);
+	am65_cpsw_destroy_rxq(common, id, false);
 	return ret;
 }
 
@@ -653,7 +658,7 @@ static int am65_cpsw_create_rxqs(struct am65_cpsw_common *common)
 
 err:
 	for (--id; id >= 0; id--)
-		am65_cpsw_destroy_rxq(common, id);
+		am65_cpsw_destroy_rxq(common, id, false);
 
 	return ret;
 }
@@ -942,7 +947,7 @@ static int am65_cpsw_nuss_common_open(struct am65_cpsw_common *common)
 	return 0;
 
 cleanup_rx:
-	am65_cpsw_destroy_rxqs(common);
+	am65_cpsw_destroy_rxqs(common, false);
 
 	return ret;
 }
@@ -956,7 +961,7 @@ static int am65_cpsw_nuss_common_stop(struct am65_cpsw_common *common)
 			     ALE_PORT_STATE, ALE_PORT_STATE_DISABLE);
 
 	am65_cpsw_destroy_txqs(common);
-	am65_cpsw_destroy_rxqs(common);
+	am65_cpsw_destroy_rxqs(common, false);
 	cpsw_ale_stop(common->ale);
 
 	writel(0, common->cpsw_base + AM65_CPSW_REG_CTL);
@@ -1927,7 +1932,8 @@ static int am65_cpsw_xdp_prog_setup(struct net_device *ndev,
 	if (running) {
 		/* stop all queues */
 		am65_cpsw_destroy_txqs(common);
-		am65_cpsw_destroy_rxqs(common);
+		/* Retain page pool */
+		am65_cpsw_destroy_rxqs(common, true);
 	}
 
 	old_prog = xchg(&port->xdp_prog, prog);
@@ -1942,7 +1948,7 @@ static int am65_cpsw_xdp_prog_setup(struct net_device *ndev,
 
 		ret = am65_cpsw_create_txqs(common);
 		if (ret) {
-			am65_cpsw_destroy_rxqs(common);
+			am65_cpsw_destroy_rxqs(common, false);
 			return ret;
 		}
 	}

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

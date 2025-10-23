Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFZnOwL34GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE7C40FCB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:49:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6D59404FF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:49:37 +0000 (UTC)
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	by lists.linaro.org (Postfix) with ESMTPS id 350C03F77A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Oct 2025 09:40:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ti.com header.s=ti-com-17Q1 header.b=MyY39kXQ;
	dmarc=pass (policy=quarantine) header.from=ti.com;
	spf=pass (lists.linaro.org: domain of m-malladi@ti.com designates 198.47.23.235 as permitted sender) smtp.mailfrom=m-malladi@ti.com
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 59N9dchG501630;
	Thu, 23 Oct 2025 04:39:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1761212378;
	bh=qH3+uJ+5ckmRvkLm5ESje4aJmgxtn4Pg8ZgByogvE4w=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=MyY39kXQeXOUJ2Hdo/ZLocer7T2NxqqZQcfy7/7yMVlF/MjB9Xm2YPsbNdGtYnvzt
	 y666Ut9RR/r0WZJROft9t19+Hds3utvXJRSTd2teduk4e5XozxJlgMM6cGYr4mYfOg
	 TiFX6rG43x7xdU5u7IkPvMF5yNlkkA9mShUj68Vs=
Received: from DLEE214.ent.ti.com (dlee214.ent.ti.com [157.170.170.117])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 59N9dbMZ3036304
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Oct 2025 04:39:37 -0500
Received: from DLEE200.ent.ti.com (157.170.170.75) by DLEE214.ent.ti.com
 (157.170.170.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 23 Oct
 2025 04:39:37 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 23 Oct 2025 04:39:37 -0500
Received: from fllv0122.itg.ti.com (fllv0122.itg.ti.com [10.247.120.72])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 59N9db4b2657733;
	Thu, 23 Oct 2025 04:39:37 -0500
Received: from localhost (meghana-pc.dhcp.ti.com [10.24.69.13] (may be forged))
	by fllv0122.itg.ti.com (8.14.7/8.14.7) with ESMTP id 59N9daRt014013;
	Thu, 23 Oct 2025 04:39:37 -0500
From: Meghana Malladi <m-malladi@ti.com>
To: <horms@kernel.org>, <namcao@linutronix.de>, <vadim.fedorenko@linux.dev>,
        <jacob.e.keller@intel.com>, <m-malladi@ti.com>,
        <christian.koenig@amd.com>, <sumit.semwal@linaro.org>,
        <sdf@fomichev.me>, <john.fastabend@gmail.com>, <hawk@kernel.org>,
        <daniel@iogearbox.net>, <ast@kernel.org>, <pabeni@redhat.com>,
        <kuba@kernel.org>, <edumazet@google.com>, <davem@davemloft.net>,
        <andrew+netdev@lunn.ch>
Date: Thu, 23 Oct 2025 15:09:22 +0530
Message-ID: <20251023093927.1878411-2-m-malladi@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023093927.1878411-1-m-malladi@ti.com>
References: <20251023093927.1878411-1-m-malladi@ti.com>
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-Spamd-Bar: -
X-MailFrom: m-malladi@ti.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3SMQLA22UVZSPGAG7ALAANLVMALCFDGZ
X-Message-ID-Hash: 3SMQLA22UVZSPGAG7ALAANLVMALCFDGZ
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:19 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v4 1/6] net: ti: icssg-prueth: Add functions to create and destroy Rx/Tx queues
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3SMQLA22UVZSPGAG7ALAANLVMALCFDGZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[ti.com : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[4205];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[ti.com:s=ti-com-17Q1];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linutronix.de,linux.dev,intel.com,ti.com,amd.com,linaro.org,fomichev.me,gmail.com,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[28];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:mid,ti.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	DKIM_TRACE(0.00)[ti.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m-malladi@ti.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	NEURAL_HAM(-0.00)[-0.183];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: ABE7C40FCB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Each port for a given ICSSG instance has their own set of
Tx and Rx queues. Add functions to create and destroy these
queues, which will be further used while performing ndo_bpf
operations to set up XSK Tx/Rx queues for a given port.

In the destroy Rx queue sequence add teardown wait to ensure
that all the descriptors including the TDCM (teardown completion
marker) have been serviced and freed to avoid any sort of descriptor
leaks.

Signed-off-by: Meghana Malladi <m-malladi@ti.com>
---
 drivers/net/ethernet/ti/icssg/icssg_common.c |  10 +-
 drivers/net/ethernet/ti/icssg/icssg_prueth.c | 177 ++++++++++++-------
 drivers/net/ethernet/ti/icssg/icssg_prueth.h |   2 +
 3 files changed, 127 insertions(+), 62 deletions(-)

diff --git a/drivers/net/ethernet/ti/icssg/icssg_common.c b/drivers/net/ethernet/ti/icssg/icssg_common.c
index 0eed29d6187a..94021751b6b7 100644
--- a/drivers/net/ethernet/ti/icssg/icssg_common.c
+++ b/drivers/net/ethernet/ti/icssg/icssg_common.c
@@ -719,8 +719,10 @@ static int emac_rx_packet(struct prueth_emac *emac, u32 flow_id, u32 *xdp_state)
 		return ret;
 	}
 
-	if (cppi5_desc_is_tdcm(desc_dma)) /* Teardown ? */
+	if (cppi5_desc_is_tdcm(desc_dma)) {
+		complete(&emac->tdown_complete);
 		return 0;
+	}
 
 	desc_rx = k3_cppi_desc_pool_dma2virt(rx_chn->desc_pool, desc_dma);
 	swdata = cppi5_hdesc_get_swdata(desc_rx);
@@ -804,7 +806,7 @@ static int emac_rx_packet(struct prueth_emac *emac, u32 flow_id, u32 *xdp_state)
 	return ret;
 }
 
-static void prueth_rx_cleanup(void *data, dma_addr_t desc_dma)
+void prueth_rx_cleanup(void *data, dma_addr_t desc_dma)
 {
 	struct prueth_rx_chn *rx_chn = data;
 	struct cppi5_host_desc_t *desc_rx;
@@ -822,6 +824,7 @@ static void prueth_rx_cleanup(void *data, dma_addr_t desc_dma)
 
 	k3_cppi_desc_pool_free(rx_chn->desc_pool, desc_rx);
 }
+EXPORT_SYMBOL_GPL(prueth_rx_cleanup);
 
 static int prueth_tx_ts_cookie_get(struct prueth_emac *emac)
 {
@@ -1025,7 +1028,7 @@ enum netdev_tx icssg_ndo_start_xmit(struct sk_buff *skb, struct net_device *ndev
 }
 EXPORT_SYMBOL_GPL(icssg_ndo_start_xmit);
 
-static void prueth_tx_cleanup(void *data, dma_addr_t desc_dma)
+void prueth_tx_cleanup(void *data, dma_addr_t desc_dma)
 {
 	struct prueth_tx_chn *tx_chn = data;
 	struct cppi5_host_desc_t *desc_tx;
@@ -1051,6 +1054,7 @@ static void prueth_tx_cleanup(void *data, dma_addr_t desc_dma)
 
 	prueth_xmit_free(tx_chn, desc_tx);
 }
+EXPORT_SYMBOL_GPL(prueth_tx_cleanup);
 
 irqreturn_t prueth_rx_irq(int irq, void *dev_id)
 {
diff --git a/drivers/net/ethernet/ti/icssg/icssg_prueth.c b/drivers/net/ethernet/ti/icssg/icssg_prueth.c
index 1c1f4394ff1f..fa2d0bd329ab 100644
--- a/drivers/net/ethernet/ti/icssg/icssg_prueth.c
+++ b/drivers/net/ethernet/ti/icssg/icssg_prueth.c
@@ -735,6 +735,114 @@ static int icssg_update_vlan_mcast(struct net_device *vdev, int vid,
 	return 0;
 }
 
+static void prueth_destroy_txq(struct prueth_emac *emac)
+{
+	int ret, i;
+
+	atomic_set(&emac->tdown_cnt, emac->tx_ch_num);
+	/* ensure new tdown_cnt value is visible */
+	smp_mb__after_atomic();
+	/* tear down and disable UDMA channels */
+	reinit_completion(&emac->tdown_complete);
+	for (i = 0; i < emac->tx_ch_num; i++)
+		k3_udma_glue_tdown_tx_chn(emac->tx_chns[i].tx_chn, false);
+
+	ret = wait_for_completion_timeout(&emac->tdown_complete,
+					  msecs_to_jiffies(1000));
+	if (!ret)
+		netdev_err(emac->ndev, "tx teardown timeout\n");
+
+	for (i = 0; i < emac->tx_ch_num; i++) {
+		napi_disable(&emac->tx_chns[i].napi_tx);
+		hrtimer_cancel(&emac->tx_chns[i].tx_hrtimer);
+		k3_udma_glue_reset_tx_chn(emac->tx_chns[i].tx_chn,
+					  &emac->tx_chns[i],
+					  prueth_tx_cleanup);
+		k3_udma_glue_disable_tx_chn(emac->tx_chns[i].tx_chn);
+	}
+}
+
+static void prueth_destroy_rxq(struct prueth_emac *emac)
+{
+	int i, ret;
+
+	/* tear down and disable UDMA channels */
+	reinit_completion(&emac->tdown_complete);
+	k3_udma_glue_tdown_rx_chn(emac->rx_chns.rx_chn, true);
+
+	/* When RX DMA Channel Teardown is initiated, it will result in an
+	 * interrupt and a Teardown Completion Marker (TDCM) is queued into
+	 * the RX Completion queue. Acknowledging the interrupt involves
+	 * popping the TDCM descriptor from the RX Completion queue via the
+	 * RX NAPI Handler. To avoid timing out when waiting for the TDCM to
+	 * be popped, schedule the RX NAPI handler to run immediately.
+	 */
+	if (!napi_if_scheduled_mark_missed(&emac->napi_rx)) {
+		if (napi_schedule_prep(&emac->napi_rx))
+			__napi_schedule(&emac->napi_rx);
+	}
+
+	ret = wait_for_completion_timeout(&emac->tdown_complete,
+					  msecs_to_jiffies(1000));
+	if (!ret)
+		netdev_err(emac->ndev, "rx teardown timeout\n");
+
+	for (i = 0; i < PRUETH_MAX_RX_FLOWS; i++) {
+		napi_disable(&emac->napi_rx);
+		hrtimer_cancel(&emac->rx_hrtimer);
+		k3_udma_glue_reset_rx_chn(emac->rx_chns.rx_chn, i,
+					  &emac->rx_chns,
+					  prueth_rx_cleanup);
+	}
+
+	prueth_destroy_xdp_rxqs(emac);
+	k3_udma_glue_disable_rx_chn(emac->rx_chns.rx_chn);
+}
+
+static int prueth_create_txq(struct prueth_emac *emac)
+{
+	int ret, i;
+
+	for (i = 0; i < emac->tx_ch_num; i++) {
+		ret = k3_udma_glue_enable_tx_chn(emac->tx_chns[i].tx_chn);
+		if (ret)
+			goto reset_tx_chan;
+		napi_enable(&emac->tx_chns[i].napi_tx);
+	}
+	return 0;
+
+reset_tx_chan:
+	/* Since interface is not yet up, there is wouldn't be
+	 * any SKB for completion. So set false to free_skb
+	 */
+	prueth_reset_tx_chan(emac, i, false);
+	return ret;
+}
+
+static int prueth_create_rxq(struct prueth_emac *emac)
+{
+	int ret;
+
+	ret = prueth_prepare_rx_chan(emac, &emac->rx_chns, PRUETH_MAX_PKT_SIZE);
+	if (ret)
+		return ret;
+
+	ret = k3_udma_glue_enable_rx_chn(emac->rx_chns.rx_chn);
+	if (ret)
+		goto reset_rx_chn;
+
+	ret = prueth_create_xdp_rxqs(emac);
+	if (ret)
+		goto reset_rx_chn;
+
+	napi_enable(&emac->napi_rx);
+	return 0;
+
+reset_rx_chn:
+	prueth_reset_rx_chan(&emac->rx_chns, PRUETH_MAX_RX_FLOWS, false);
+	return ret;
+}
+
 /**
  * emac_ndo_open - EMAC device open
  * @ndev: network adapter device
@@ -746,7 +854,7 @@ static int icssg_update_vlan_mcast(struct net_device *vdev, int vid,
 static int emac_ndo_open(struct net_device *ndev)
 {
 	struct prueth_emac *emac = netdev_priv(ndev);
-	int ret, i, num_data_chn = emac->tx_ch_num;
+	int ret, num_data_chn = emac->tx_ch_num;
 	struct icssg_flow_cfg __iomem *flow_cfg;
 	struct prueth *prueth = emac->prueth;
 	int slice = prueth_emac_slice(emac);
@@ -819,28 +927,13 @@ static int emac_ndo_open(struct net_device *ndev)
 		goto stop;
 
 	/* Prepare RX */
-	ret = prueth_prepare_rx_chan(emac, &emac->rx_chns, PRUETH_MAX_PKT_SIZE);
+	ret = prueth_create_rxq(emac);
 	if (ret)
 		goto free_tx_ts_irq;
 
-	ret = prueth_create_xdp_rxqs(emac);
-	if (ret)
-		goto reset_rx_chn;
-
-	ret = k3_udma_glue_enable_rx_chn(emac->rx_chns.rx_chn);
+	ret = prueth_create_txq(emac);
 	if (ret)
-		goto destroy_xdp_rxqs;
-
-	for (i = 0; i < emac->tx_ch_num; i++) {
-		ret = k3_udma_glue_enable_tx_chn(emac->tx_chns[i].tx_chn);
-		if (ret)
-			goto reset_tx_chan;
-	}
-
-	/* Enable NAPI in Tx and Rx direction */
-	for (i = 0; i < emac->tx_ch_num; i++)
-		napi_enable(&emac->tx_chns[i].napi_tx);
-	napi_enable(&emac->napi_rx);
+		goto destroy_rxq;
 
 	/* start PHY */
 	phy_start(ndev->phydev);
@@ -851,15 +944,8 @@ static int emac_ndo_open(struct net_device *ndev)
 
 	return 0;
 
-reset_tx_chan:
-	/* Since interface is not yet up, there is wouldn't be
-	 * any SKB for completion. So set false to free_skb
-	 */
-	prueth_reset_tx_chan(emac, i, false);
-destroy_xdp_rxqs:
-	prueth_destroy_xdp_rxqs(emac);
-reset_rx_chn:
-	prueth_reset_rx_chan(&emac->rx_chns, max_rx_flows, false);
+destroy_rxq:
+	prueth_destroy_rxq(emac);
 free_tx_ts_irq:
 	free_irq(emac->tx_ts_irq, emac);
 stop:
@@ -889,9 +975,6 @@ static int emac_ndo_stop(struct net_device *ndev)
 {
 	struct prueth_emac *emac = netdev_priv(ndev);
 	struct prueth *prueth = emac->prueth;
-	int rx_flow = PRUETH_RX_FLOW_DATA;
-	int max_rx_flows;
-	int ret, i;
 
 	/* inform the upper layers. */
 	netif_tx_stop_all_queues(ndev);
@@ -905,32 +988,8 @@ static int emac_ndo_stop(struct net_device *ndev)
 	else
 		__dev_mc_unsync(ndev, icssg_prueth_del_mcast);
 
-	atomic_set(&emac->tdown_cnt, emac->tx_ch_num);
-	/* ensure new tdown_cnt value is visible */
-	smp_mb__after_atomic();
-	/* tear down and disable UDMA channels */
-	reinit_completion(&emac->tdown_complete);
-	for (i = 0; i < emac->tx_ch_num; i++)
-		k3_udma_glue_tdown_tx_chn(emac->tx_chns[i].tx_chn, false);
-
-	ret = wait_for_completion_timeout(&emac->tdown_complete,
-					  msecs_to_jiffies(1000));
-	if (!ret)
-		netdev_err(ndev, "tx teardown timeout\n");
-
-	prueth_reset_tx_chan(emac, emac->tx_ch_num, true);
-	for (i = 0; i < emac->tx_ch_num; i++) {
-		napi_disable(&emac->tx_chns[i].napi_tx);
-		hrtimer_cancel(&emac->tx_chns[i].tx_hrtimer);
-	}
-
-	max_rx_flows = PRUETH_MAX_RX_FLOWS;
-	k3_udma_glue_tdown_rx_chn(emac->rx_chns.rx_chn, true);
-
-	prueth_reset_rx_chan(&emac->rx_chns, max_rx_flows, true);
-	prueth_destroy_xdp_rxqs(emac);
-	napi_disable(&emac->napi_rx);
-	hrtimer_cancel(&emac->rx_hrtimer);
+	prueth_destroy_txq(emac);
+	prueth_destroy_rxq(emac);
 
 	cancel_work_sync(&emac->rx_mode_work);
 
@@ -943,10 +1002,10 @@ static int emac_ndo_stop(struct net_device *ndev)
 
 	free_irq(emac->tx_ts_irq, emac);
 
-	free_irq(emac->rx_chns.irq[rx_flow], emac);
+	free_irq(emac->rx_chns.irq[PRUETH_RX_FLOW_DATA], emac);
 	prueth_ndev_del_tx_napi(emac, emac->tx_ch_num);
 
-	prueth_cleanup_rx_chns(emac, &emac->rx_chns, max_rx_flows);
+	prueth_cleanup_rx_chns(emac, &emac->rx_chns, PRUETH_MAX_RX_FLOWS);
 	prueth_cleanup_tx_chns(emac);
 
 	prueth->emacs_initialized--;
diff --git a/drivers/net/ethernet/ti/icssg/icssg_prueth.h b/drivers/net/ethernet/ti/icssg/icssg_prueth.h
index f0fa9688d9a0..5cc90b66035a 100644
--- a/drivers/net/ethernet/ti/icssg/icssg_prueth.h
+++ b/drivers/net/ethernet/ti/icssg/icssg_prueth.h
@@ -501,5 +501,7 @@ u32 emac_xmit_xdp_frame(struct prueth_emac *emac,
 			struct xdp_frame *xdpf,
 			struct page *page,
 			unsigned int q_idx);
+void prueth_rx_cleanup(void *data, dma_addr_t desc_dma);
+void prueth_tx_cleanup(void *data, dma_addr_t desc_dma);
 
 #endif /* __NET_TI_ICSSG_PRUETH_H */
-- 
2.43.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFH0OR754GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:38 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7234D41006D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80A9240500
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:58:37 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id D4B673F719
	for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Nov 2025 21:38:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ZR+MunMO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of rogerq@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=rogerq@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 638F2600B0;
	Sun,  9 Nov 2025 21:38:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA498C2BCB3;
	Sun,  9 Nov 2025 21:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762724333;
	bh=mibZkYswiasKK6+RcCCdg62j5OqVExQt5C/Z60vtyvQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZR+MunMOHQWQsuqAk053NmVaE/nhJ26dJwG6p2a9rMPdOA5jcBwWlEjrYARlfD54G
	 iSGb1LAxLT1Dj8e5/xAKnjAuCBuVGbbz1fsuXPpjbnvA9CA5MlUkaMYLMK7c0K+s0n
	 DIcadp4hkUSvorMv0fFZ2dBFNxsf7bG4VmGtmT0plg8lvGpuS4Ynvpk+peUrfbK28b
	 jJcCdO5+P8MhUbQhfNYBfIFTTgs0EMwsweIfvMPTM0BTnJo1RVP+zZXVTV2Ti2DFbm
	 OdGrdqm3y26RELM7+OJoWBYyPU4sLhaI6WdNqcz6zTB21I9HAcONTczTfCiqrorCta
	 DHDWsBbzOG8ew==
From: Roger Quadros <rogerq@kernel.org>
Date: Sun, 09 Nov 2025 23:37:53 +0200
MIME-Version: 1.0
Message-Id: <20251109-am65-cpsw-xdp-zc-v2-3-858f60a09d12@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=10734; i=rogerq@kernel.org;
 h=from:subject:message-id; bh=mibZkYswiasKK6+RcCCdg62j5OqVExQt5C/Z60vtyvQ=;
 b=owEBbQKS/ZANAwAIAdJaa9O+djCTAcsmYgBpEQnZygN2YhJPuXvMzdOM+JvVDAIzxetchCdVe
 XVoOuwU1OOJAjMEAAEIAB0WIQRBIWXUTJ9SeA+rEFjSWmvTvnYwkwUCaREJ2QAKCRDSWmvTvnYw
 kwRLEADVH3RtMg8vVFmKybY7fazds8KI+xlEwsFxuTTVzPN4Y0H1UGrUaIjcUhGy77O5Fd8InoJ
 BI+2SlpZXeBvAI3DlVKSCd8Qf+CbvOV0JuT0nE+m3fSjY8zusZ3dxLBen3CaAzJwNOszrJWKS+g
 SabjGd0OvByDFiW1F2V1J/aZCHGBDuMaJNP7+f7oCnCi7Vtq7RTA3eJL2Bu2W3eDljue/TMU7J3
 5FoJvefIFjTxjqegO+5vYCYnAWFmjtbeT6cFVVLkq/YApc0tG0cU8KMTRO0QMGW+2CgXHv6VD+c
 DluUirzJjoSnVWPE9dJ5IqyOrleXsN2imcRW18OTqYfmMzDoJKHAPtdXUcAGlB375k8f9nxZ5xv
 ENdKYgsYSwZ68mRTRTbz82SDZ2mxWVjY1OxNlTyYfSQnQ03rqG3PBJ6wFhjhyZXZeDqiPfbXN3e
 h3+mDWbv/RjphxWXhqEN6kT0DYIyBj2LQGKW/Ws3/FDDwAttf3TLrO9N3ZVoWDrr0+/iAnUtVOK
 ocQ/EwLzOKcZRJEKIpTxfPJ5bOjy7TJGQiQU4UC01KQQfMny48iOCeK/sqHEkFqL8RMNzSwjS7H
 auZa4AMeLrJaKrHmjRlQKVlu84C/6+McfZ9DpZ4OrT2uj/z5M1VnLBJ1okK/oJki0rrSroLhbEU
 xi5yMUS52328thA==
X-Developer-Key: i=rogerq@kernel.org; a=openpgp;
 fpr=412165D44C9F52780FAB1058D25A6BD3BE763093
X-Spamd-Bar: --
X-MailFrom: rogerq@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KKM3ESFS5EXMX7ZXQ4RM4UWIAS4OT2UA
X-Message-ID-Hash: KKM3ESFS5EXMX7ZXQ4RM4UWIAS4OT2UA
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:52:49 +0000
CC: srk@ti.com, Meghana Malladi <m-malladi@ti.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Roger Quadros <rogerq@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next v2 3/7] net: ethernet: ti: am65-cpsw: add XSK pool helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KKM3ESFS5EXMX7ZXQ4RM4UWIAS4OT2UA/>
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
	NEURAL_HAM(-0.00)[-0.632];
	FROM_NEQ_ENVFROM(0.00)[rogerq@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,ti.com:url,linaro.org:email]
X-Rspamd-Queue-Id: 7234D41006D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

To prepare for XSK zero copy support, add XSK pool
helpers in a new file am65-cpsw-xdp.c

As queues are shared between ports we can no longer
support the case where zero copy (XSK Pool) is enabled
for the queue on one port but not for other ports.

Current solution is to drop the packet if Zero copy
is not enabled for that port + queue but enabled for
some other port + same queue.

xdp_zc_queues bitmap tracks if queue is setup as XSK
pool and xsk_port_id array tracks which port the XSK
queue is assigned to for zero copy.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/net/ethernet/ti/Makefile         |   2 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c |  21 ++++--
 drivers/net/ethernet/ti/am65-cpsw-nuss.h |  20 +++++
 drivers/net/ethernet/ti/am65-cpsw-xdp.c  | 122 +++++++++++++++++++++++++++++++
 4 files changed, 156 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/ti/Makefile b/drivers/net/ethernet/ti/Makefile
index 93c0a4d0e33a6fb725ad61c3ec0eab87d2d3f61a..96585a28fc7d73f61b888e5d1587d5123875db31 100644
--- a/drivers/net/ethernet/ti/Makefile
+++ b/drivers/net/ethernet/ti/Makefile
@@ -29,7 +29,7 @@ keystone_netcp_ethss-y := netcp_ethss.o netcp_sgmii.o netcp_xgbepcsr.o cpsw_ale.
 obj-$(CONFIG_TI_K3_CPPI_DESC_POOL) += k3-cppi-desc-pool.o
 
 obj-$(CONFIG_TI_K3_AM65_CPSW_NUSS) += ti-am65-cpsw-nuss.o
-ti-am65-cpsw-nuss-y := am65-cpsw-nuss.o cpsw_sl.o am65-cpsw-ethtool.o cpsw_ale.o
+ti-am65-cpsw-nuss-y := am65-cpsw-nuss.o cpsw_sl.o am65-cpsw-ethtool.o cpsw_ale.o am65-cpsw-xdp.o
 ti-am65-cpsw-nuss-$(CONFIG_TI_AM65_CPSW_QOS) += am65-cpsw-qos.o
 ti-am65-cpsw-nuss-$(CONFIG_TI_K3_AM65_CPSW_SWITCHDEV) += am65-cpsw-switchdev.o
 obj-$(CONFIG_TI_K3_AM65_CPTS) += am65-cpts.o
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
index f9e2286efa29bbb7056fda1fc82c38b479aae8bd..46523be93df27710be77b288c36c1a0f66d8ca8d 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c
@@ -58,9 +58,6 @@
 
 #define AM65_CPSW_MAX_PORTS	8
 
-#define AM65_CPSW_MIN_PACKET_SIZE	VLAN_ETH_ZLEN
-#define AM65_CPSW_MAX_PACKET_SIZE	2024
-
 #define AM65_CPSW_REG_CTL		0x004
 #define AM65_CPSW_REG_STAT_PORT_EN	0x014
 #define AM65_CPSW_REG_PTYPE		0x018
@@ -505,7 +502,7 @@ static inline void am65_cpsw_put_page(struct am65_cpsw_rx_flow *flow,
 static void am65_cpsw_nuss_rx_cleanup(void *data, dma_addr_t desc_dma);
 static void am65_cpsw_nuss_tx_cleanup(void *data, dma_addr_t desc_dma);
 
-static void am65_cpsw_destroy_rxq(struct am65_cpsw_common *common, int id, bool retain_page_pool)
+void am65_cpsw_destroy_rxq(struct am65_cpsw_common *common, int id, bool retain_page_pool)
 {
 	struct am65_cpsw_rx_chn *rx_chn = &common->rx_chns;
 	struct am65_cpsw_rx_flow *flow;
@@ -554,7 +551,7 @@ static void am65_cpsw_destroy_rxqs(struct am65_cpsw_common *common, bool retain_
 	k3_udma_glue_disable_rx_chn(common->rx_chns.rx_chn);
 }
 
-static int am65_cpsw_create_rxq(struct am65_cpsw_common *common, int id)
+int am65_cpsw_create_rxq(struct am65_cpsw_common *common, int id)
 {
 	struct am65_cpsw_rx_chn *rx_chn = &common->rx_chns;
 	struct page_pool_params pp_params = {
@@ -663,7 +660,7 @@ static int am65_cpsw_create_rxqs(struct am65_cpsw_common *common)
 	return ret;
 }
 
-static void am65_cpsw_destroy_txq(struct am65_cpsw_common *common, int id)
+void am65_cpsw_destroy_txq(struct am65_cpsw_common *common, int id)
 {
 	struct am65_cpsw_tx_chn *tx_chn = &common->tx_chns[id];
 
@@ -697,7 +694,7 @@ static void am65_cpsw_destroy_txqs(struct am65_cpsw_common *common)
 		am65_cpsw_destroy_txq(common, id);
 }
 
-static int am65_cpsw_create_txq(struct am65_cpsw_common *common, int id)
+int am65_cpsw_create_txq(struct am65_cpsw_common *common, int id)
 {
 	struct am65_cpsw_tx_chn *tx_chn = &common->tx_chns[id];
 	int ret;
@@ -1327,7 +1324,7 @@ static int am65_cpsw_nuss_rx_packets(struct am65_cpsw_rx_flow *flow,
 	dma_unmap_single(rx_chn->dma_dev, buf_dma, buf_dma_len, DMA_FROM_DEVICE);
 	k3_cppi_desc_pool_free(rx_chn->desc_pool, desc_rx);
 
-	if (port->xdp_prog) {
+	if (am65_cpsw_xdp_is_enabled(port)) {
 		xdp_init_buff(&xdp, PAGE_SIZE, &port->xdp_rxq[flow->id]);
 		xdp_prepare_buff(&xdp, page_addr, AM65_CPSW_HEADROOM,
 				 pkt_len, false);
@@ -1961,6 +1958,9 @@ static int am65_cpsw_ndo_bpf(struct net_device *ndev, struct netdev_bpf *bpf)
 	switch (bpf->command) {
 	case XDP_SETUP_PROG:
 		return am65_cpsw_xdp_prog_setup(ndev, bpf->prog);
+	case XDP_SETUP_XSK_POOL:
+		return am65_cpsw_xsk_setup_pool(ndev, bpf->xsk.pool,
+						bpf->xsk.queue_id);
 	default:
 		return -EINVAL;
 	}
@@ -3553,7 +3553,12 @@ static int am65_cpsw_nuss_probe(struct platform_device *pdev)
 	common = devm_kzalloc(dev, sizeof(struct am65_cpsw_common), GFP_KERNEL);
 	if (!common)
 		return -ENOMEM;
+
 	common->dev = dev;
+	common->xdp_zc_queues = devm_bitmap_zalloc(dev, AM65_CPSW_MAX_QUEUES,
+						   GFP_KERNEL);
+	if (!common->xdp_zc_queues)
+		return -ENOMEM;
 
 	of_id = of_match_device(am65_cpsw_nuss_of_mtable, dev);
 	if (!of_id)
diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.h b/drivers/net/ethernet/ti/am65-cpsw-nuss.h
index 917c37e4e89bd933d3001f6c35a62db01cd8da4c..31789b5e5e1fc96be20cce17234d0e16cdcea796 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-nuss.h
+++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.h
@@ -23,8 +23,14 @@ struct am65_cpts;
 
 #define AM65_CPSW_MAX_QUEUES	8	/* both TX & RX */
 
+#define AM65_CPSW_MIN_PACKET_SIZE	VLAN_ETH_ZLEN
+#define AM65_CPSW_MAX_PACKET_SIZE	2024
+
 #define AM65_CPSW_PORT_VLAN_REG_OFFSET	0x014
 
+#define AM65_CPSW_RX_DMA_ATTR	(DMA_ATTR_SKIP_CPU_SYNC |\
+				 DMA_ATTR_WEAK_ORDERING)
+
 struct am65_cpsw_slave_data {
 	bool				mac_only;
 	struct cpsw_sl			*mac_sl;
@@ -190,6 +196,9 @@ struct am65_cpsw_common {
 	unsigned char switch_id[MAX_PHYS_ITEM_ID_LEN];
 	/* only for suspend/resume context restore */
 	u32			*ale_context;
+	/* XDP Zero Copy */
+	unsigned long		*xdp_zc_queues;
+	int			xsk_port_id[AM65_CPSW_MAX_QUEUES];
 };
 
 struct am65_cpsw_ndev_priv {
@@ -228,4 +237,15 @@ int am65_cpsw_nuss_update_tx_rx_chns(struct am65_cpsw_common *common,
 
 bool am65_cpsw_port_dev_check(const struct net_device *dev);
 
+int am65_cpsw_create_rxq(struct am65_cpsw_common *common, int id);
+void am65_cpsw_destroy_rxq(struct am65_cpsw_common *common, int id, bool retain_page_pool);
+int am65_cpsw_create_txq(struct am65_cpsw_common *common, int id);
+void am65_cpsw_destroy_txq(struct am65_cpsw_common *common, int id);
+int am65_cpsw_xsk_setup_pool(struct net_device *ndev,
+			     struct xsk_buff_pool *pool, u16 qid);
+int am65_cpsw_xsk_wakeup(struct net_device *ndev, u32 qid, u32 flags);
+static inline bool am65_cpsw_xdp_is_enabled(struct am65_cpsw_port *port)
+{
+	return !!READ_ONCE(port->xdp_prog);
+}
 #endif /* AM65_CPSW_NUSS_H_ */
diff --git a/drivers/net/ethernet/ti/am65-cpsw-xdp.c b/drivers/net/ethernet/ti/am65-cpsw-xdp.c
new file mode 100644
index 0000000000000000000000000000000000000000..89f43f7c83db35dba96621bae930172e0fc85b6a
--- /dev/null
+++ b/drivers/net/ethernet/ti/am65-cpsw-xdp.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Texas Instruments K3 AM65 Ethernet Switch SubSystem Driver
+ *
+ * Copyright (C) 2025 Texas Instruments Incorporated - http://www.ti.com/
+ *
+ */
+
+#include <net/xsk_buff_pool.h>
+#include <net/xdp_sock_drv.h>
+#include "am65-cpsw-nuss.h"
+
+static int am65_cpsw_xsk_pool_enable(struct am65_cpsw_port *port,
+				     struct xsk_buff_pool *pool, u16 qid)
+{
+	struct am65_cpsw_common *common = port->common;
+	struct am65_cpsw_rx_chn *rx_chn;
+	bool need_update;
+	u32 frame_size;
+	int ret;
+
+	/*
+	 * As queues are shared between ports we can no longer
+	 * support the case where zero copy (XSK Pool) is enabled
+	 * for the queue on one port but not for other ports.
+	 *
+	 * Current solution is to drop the packet if Zero copy
+	 * is not enabled for that port + queue but enabled for
+	 * some other port + same queue.
+	 */
+	if (test_bit(qid, common->xdp_zc_queues))
+		return -EINVAL;
+
+	rx_chn = &common->rx_chns;
+	if (qid >= common->rx_ch_num_flows || qid >= common->tx_ch_num)
+		return -EINVAL;
+
+	frame_size = xsk_pool_get_rx_frame_size(pool);
+	if (frame_size < AM65_CPSW_MAX_PACKET_SIZE)
+		return -EOPNOTSUPP;
+
+	ret = xsk_pool_dma_map(pool, rx_chn->dma_dev, AM65_CPSW_RX_DMA_ATTR);
+	if (ret) {
+		netdev_err(port->ndev, "Failed to map xsk pool\n");
+		return ret;
+	}
+
+	need_update = common->usage_count &&
+		      am65_cpsw_xdp_is_enabled(port);
+	if (need_update) {
+		am65_cpsw_destroy_rxq(common, qid, true);
+		am65_cpsw_destroy_txq(common, qid);
+	}
+
+	set_bit(qid, common->xdp_zc_queues);
+	common->xsk_port_id[qid] = port->port_id;
+	if (need_update) {
+		am65_cpsw_create_rxq(common, qid);
+		am65_cpsw_create_txq(common, qid);
+	}
+
+	return 0;
+}
+
+static int am65_cpsw_xsk_pool_disable(struct am65_cpsw_port *port,
+				      struct xsk_buff_pool *pool, u16 qid)
+{
+	struct am65_cpsw_common *common = port->common;
+	bool need_update;
+
+	if (qid >= common->rx_ch_num_flows || qid >= common->tx_ch_num)
+		return -EINVAL;
+
+	if (!test_bit(qid, common->xdp_zc_queues))
+		return -EINVAL;
+
+	pool = xsk_get_pool_from_qid(port->ndev, qid);
+	if (!pool)
+		return -EINVAL;
+
+	need_update = common->usage_count && am65_cpsw_xdp_is_enabled(port);
+	if (need_update) {
+		am65_cpsw_destroy_rxq(common, qid, true);
+		am65_cpsw_destroy_txq(common, qid);
+		synchronize_rcu();
+	}
+
+	xsk_pool_dma_unmap(pool, AM65_CPSW_RX_DMA_ATTR);
+	clear_bit(qid, common->xdp_zc_queues);
+	common->xsk_port_id[qid] = -EINVAL;
+	if (need_update) {
+		am65_cpsw_create_rxq(common, qid);
+		am65_cpsw_create_txq(common, qid);
+	}
+
+	return 0;
+}
+
+int am65_cpsw_xsk_setup_pool(struct net_device *ndev,
+			     struct xsk_buff_pool *pool, u16 qid)
+{
+	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
+
+	return pool ? am65_cpsw_xsk_pool_enable(port, pool, qid) :
+		      am65_cpsw_xsk_pool_disable(port, pool, qid);
+}
+
+int am65_cpsw_xsk_wakeup(struct net_device *ndev, u32 qid, u32 flags)
+{
+	struct am65_cpsw_common *common = am65_ndev_to_common(ndev);
+	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
+
+	if (!netif_running(ndev) || !netif_carrier_ok(ndev))
+		return -ENETDOWN;
+
+	if (!am65_cpsw_xdp_is_enabled(port))
+		return -EINVAL;
+
+	if (qid >= common->rx_ch_num_flows || qid >= common->tx_ch_num)
+		return -EINVAL;
+
+	return 0;
+}

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

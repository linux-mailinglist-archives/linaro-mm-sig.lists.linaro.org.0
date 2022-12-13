Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E85864AE81
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Dec 2022 04:57:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 336AE3EECC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Dec 2022 03:57:25 +0000 (UTC)
Received: from out30-42.freemail.mail.aliyun.com (out30-42.freemail.mail.aliyun.com [115.124.30.42])
	by lists.linaro.org (Postfix) with ESMTPS id 943933E91F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Dec 2022 03:57:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiapeng.chong@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
	dmarc=pass (policy=none) header.from=alibaba.com
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R201e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045176;MF=jiapeng.chong@linux.alibaba.com;NM=0;PH=DS;RN=13;SR=0;TI=SMTPD_---0VXC615N_1670903828;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VXC615N_1670903828)
          by smtp.aliyun-inc.com;
          Tue, 13 Dec 2022 11:57:12 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: davem@davemloft.net
Date: Tue, 13 Dec 2022 11:57:07 +0800
Message-Id: <20221213035707.118309-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Rspamd-Queue-Id: 943933E91F
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.30 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[alibaba.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:115.124.30.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:37963, ipnet:115.124.24.0/21, country:CN];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.993];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[115.124.30.42:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: W42BVZLKSJVSKUO3TPIYQDQ5WZY4Z7DO
X-Message-ID-Hash: W42BVZLKSJVSKUO3TPIYQDQ5WZY4Z7DO
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, sumit.semwal@linaro.org, christian.koenig@amd.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] net: ksz884x: Remove some unused functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W42BVZLKSJVSKUO3TPIYQDQ5WZY4Z7DO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

These functions are defined in the ksz884x.c file, but not called
elsewhere, so delete these unused functions.

drivers/net/ethernet/micrel/ksz884x.c:2212:20: warning: unused function 'port_cfg_force_flow_ctrl'.

Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3418
Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
Changes in v2:
  -Delete more unused functions.

 drivers/net/ethernet/micrel/ksz884x.c | 89 ---------------------------
 1 file changed, 89 deletions(-)

diff --git a/drivers/net/ethernet/micrel/ksz884x.c b/drivers/net/ethernet/micrel/ksz884x.c
index e6acd1e7b263..5d6ed7a63e59 100644
--- a/drivers/net/ethernet/micrel/ksz884x.c
+++ b/drivers/net/ethernet/micrel/ksz884x.c
@@ -2209,102 +2209,13 @@ static inline void port_cfg_back_pressure(struct ksz_hw *hw, int p, int set)
 		KS8842_PORT_CTRL_2_OFFSET, PORT_BACK_PRESSURE, set);
 }
 
-static inline void port_cfg_force_flow_ctrl(struct ksz_hw *hw, int p, int set)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_FORCE_FLOW_CTRL, set);
-}
-
-static inline int port_chk_back_pressure(struct ksz_hw *hw, int p)
-{
-	return port_chk(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_BACK_PRESSURE);
-}
-
-static inline int port_chk_force_flow_ctrl(struct ksz_hw *hw, int p)
-{
-	return port_chk(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_FORCE_FLOW_CTRL);
-}
-
 /* Spanning Tree */
 
-static inline void port_cfg_rx(struct ksz_hw *hw, int p, int set)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_RX_ENABLE, set);
-}
-
-static inline void port_cfg_tx(struct ksz_hw *hw, int p, int set)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_TX_ENABLE, set);
-}
-
 static inline void sw_cfg_fast_aging(struct ksz_hw *hw, int set)
 {
 	sw_cfg(hw, KS8842_SWITCH_CTRL_1_OFFSET, SWITCH_FAST_AGING, set);
 }
 
-static inline void sw_flush_dyn_mac_table(struct ksz_hw *hw)
-{
-	if (!(hw->overrides & FAST_AGING)) {
-		sw_cfg_fast_aging(hw, 1);
-		mdelay(1);
-		sw_cfg_fast_aging(hw, 0);
-	}
-}
-
-/* VLAN */
-
-static inline void port_cfg_ins_tag(struct ksz_hw *hw, int p, int insert)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_1_OFFSET, PORT_INSERT_TAG, insert);
-}
-
-static inline void port_cfg_rmv_tag(struct ksz_hw *hw, int p, int remove)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_1_OFFSET, PORT_REMOVE_TAG, remove);
-}
-
-static inline int port_chk_ins_tag(struct ksz_hw *hw, int p)
-{
-	return port_chk(hw, p,
-		KS8842_PORT_CTRL_1_OFFSET, PORT_INSERT_TAG);
-}
-
-static inline int port_chk_rmv_tag(struct ksz_hw *hw, int p)
-{
-	return port_chk(hw, p,
-		KS8842_PORT_CTRL_1_OFFSET, PORT_REMOVE_TAG);
-}
-
-static inline void port_cfg_dis_non_vid(struct ksz_hw *hw, int p, int set)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_DISCARD_NON_VID, set);
-}
-
-static inline void port_cfg_in_filter(struct ksz_hw *hw, int p, int set)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_INGRESS_VLAN_FILTER, set);
-}
-
-static inline int port_chk_dis_non_vid(struct ksz_hw *hw, int p)
-{
-	return port_chk(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_DISCARD_NON_VID);
-}
-
-static inline int port_chk_in_filter(struct ksz_hw *hw, int p)
-{
-	return port_chk(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_INGRESS_VLAN_FILTER);
-}
-
 /* Mirroring */
 
 static inline void port_cfg_mirror_sniffer(struct ksz_hw *hw, int p, int set)
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

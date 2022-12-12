Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF99F64984C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Dec 2022 04:53:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EA283EEBD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Dec 2022 03:53:56 +0000 (UTC)
Received: from out199-13.us.a.mail.aliyun.com (out199-13.us.a.mail.aliyun.com [47.90.199.13])
	by lists.linaro.org (Postfix) with ESMTPS id CE91E3E954
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Dec 2022 03:53:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of jiapeng.chong@linux.alibaba.com designates 47.90.199.13 as permitted sender) smtp.mailfrom=jiapeng.chong@linux.alibaba.com;
	dmarc=pass (policy=none) header.from=alibaba.com
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R151e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045176;MF=jiapeng.chong@linux.alibaba.com;NM=0;PH=DS;RN=12;SR=0;TI=SMTPD_---0VX0wqHC_1670817191;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VX0wqHC_1670817191)
          by smtp.aliyun-inc.com;
          Mon, 12 Dec 2022 11:53:42 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: davem@davemloft.net
Date: Mon, 12 Dec 2022 11:53:09 +0800
Message-Id: <20221212035309.33507-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Rspamd-Queue-Id: CE91E3E954
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.80 / 15.00];
	WHITELIST_DMARC(-7.00)[alibaba.com:D:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[47.90.199.13:from];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[alibaba.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:47.90.199.0/24];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:45102, ipnet:47.90.192.0/18, country:CN];
	RCVD_COUNT_TWO(0.00)[2];
	R_DKIM_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[out199-13.us.a.mail.aliyun.com:rdns,out199-13.us.a.mail.aliyun.com:helo,openanolis.cn:url,alibaba.com:email];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_SPAM(0.00)[0.974];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NCUBBZZHSVRZ57BS6J6OARZGCT342UA5
X-Message-ID-Hash: NCUBBZZHSVRZ57BS6J6OARZGCT342UA5
X-MailFrom: jiapeng.chong@linux.alibaba.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kuba@kernel.org, pabeni@redhat.com, sumit.semwal@linaro.org, christian.koenig@amd.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] net: ksz884x: Remove the unused function port_cfg_force_flow_ctrl()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NCUBBZZHSVRZ57BS6J6OARZGCT342UA5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The function port_cfg_force_flow_ctrl() is defined in the ksz884x.c file,
but not called elsewhere, so remove this unused function.

drivers/net/ethernet/micrel/ksz884x.c:2212:20: warning: unused function 'port_cfg_force_flow_ctrl'.

Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3418
Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/net/ethernet/micrel/ksz884x.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/micrel/ksz884x.c b/drivers/net/ethernet/micrel/ksz884x.c
index e6acd1e7b263..46f1fbf58b5a 100644
--- a/drivers/net/ethernet/micrel/ksz884x.c
+++ b/drivers/net/ethernet/micrel/ksz884x.c
@@ -2209,12 +2209,6 @@ static inline void port_cfg_back_pressure(struct ksz_hw *hw, int p, int set)
 		KS8842_PORT_CTRL_2_OFFSET, PORT_BACK_PRESSURE, set);
 }
 
-static inline void port_cfg_force_flow_ctrl(struct ksz_hw *hw, int p, int set)
-{
-	port_cfg(hw, p,
-		KS8842_PORT_CTRL_2_OFFSET, PORT_FORCE_FLOW_CTRL, set);
-}
-
 static inline int port_chk_back_pressure(struct ksz_hw *hw, int p)
 {
 	return port_chk(hw, p,
-- 
2.20.1.7.g153144c

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

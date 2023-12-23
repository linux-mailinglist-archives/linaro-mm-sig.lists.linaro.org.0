Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B606581D5FA
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 Dec 2023 19:33:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B940F3F383
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 Dec 2023 18:33:19 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 851033F1B5
	for <linaro-mm-sig@lists.linaro.org>; Sat, 23 Dec 2023 18:29:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=r24UaKmH;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 3a82dd08a1c111eea5db2bebc7c28f94-20231224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=9Q8RSiyjSUfHILmoW4urj0AJtB2OmdXHTaWG7QUm9as=;
	b=r24UaKmH/FI/yIQky0l3ENlyXwCdAlVWFVRxAcU2CFEM6HPhL/NkoBDSrdO5hKb/R02Uxz3llbrDowVx7hdZEd1tQRz9jbjy+QBWFtlO2u4tWGXoF3o+Z55VjNf1Ioruchc4PanXjxC5hkc4U3qs0xmXga9tsQ/1A2YPUdlhhlU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:932576f9-4e5a-4c83-9471-840984a4b0bd,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:ba5d7f8d-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 3a82dd08a1c111eea5db2bebc7c28f94-20231224
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1170136593; Sun, 24 Dec 2023 02:29:37 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 24 Dec 2023 02:29:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sun, 24 Dec 2023 02:29:35 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Sun, 24 Dec 2023 02:29:32 +0800
Message-ID: <20231223182932.27683-12-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
References: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--0.491300-8.000000
X-TMASE-MatchedRID: hnk2xlnUc9YCNMj/7qB/g11tpWYE7Ops31GU/N5W5BDOb3+o8TfeDuLz
	NWBegCW2wgn7iDBesS0nRE+fI6etkuizN9J3NgBH8RJ/GoffvHkPcq5zA38+/6zzbOcnWu8Z9mP
	29bcY/jAyNkLr5kiba29MNrHNAnxNgFAkt5cKyJCWOeeZGiKp5ICE5xpCtDRTUbJFyh4XXyqYo/
	TPOlMB4bCh3zE4wqa8DUCRr8oin+k=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--0.491300-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	717D133535D00CDDC830E6143AA284E0754963BD2A23C955C3A4D68E41B2C6A02000:8
X-MTK: N
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[60.244.123.138:from];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mailgw01.mediatek.com:rdns,mailgw01.mediatek.com:helo,mediatek.com:email,mediatek.com:dkim,1c01a000:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 851033F1B5
X-Spamd-Bar: /
Message-ID-Hash: XOAXEX2HCBD7SI7OA4WOA5BWUKAVWJBW
X-Message-ID-Hash: XOAXEX2HCBD7SI7OA4WOA5BWUKAVWJBW
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 11/11] arm64: dts: mt8195: Add secure mbox settings for vdosys
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XOAXEX2HCBD7SI7OA4WOA5BWUKAVWJBW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add a secure mailbox channel to support secure video path on
vdosys0 and vdosys1.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index e0ac2e9f5b72..416d575be123 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -2621,7 +2621,8 @@
 		vdosys0: syscon@1c01a000 {
 			compatible = "mediatek,mt8195-vdosys0", "mediatek,mt8195-mmsys", "syscon";
 			reg = <0 0x1c01a000 0 0x1000>;
-			mboxes = <&gce0 0 CMDQ_THR_PRIO_4>;
+			mboxes = <&gce0 0 CMDQ_THR_PRIO_4>,
+				 <&gce0 8 CMDQ_THR_PRIO_4>; /* secure mbox */
 			#clock-cells = <1>;
 		};
 
@@ -2806,7 +2807,8 @@
 		vdosys1: syscon@1c100000 {
 			compatible = "mediatek,mt8195-vdosys1", "syscon";
 			reg = <0 0x1c100000 0 0x1000>;
-			mboxes = <&gce0 1 CMDQ_THR_PRIO_4>;
+			mboxes = <&gce0 1 CMDQ_THR_PRIO_4>,
+				 <&gce0 9 CMDQ_THR_PRIO_4>; /* secure mbox */;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c10XXXX 0x0000 0x1000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

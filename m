Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AA97D2976
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 06:49:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44A2B40B67
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Oct 2023 04:49:16 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 477F440202
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Oct 2023 04:45:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=Lm3B9f7f;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com
X-UUID: 0afc417e715f11ee8051498923ad61e6-20231023
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=39kGL5NkWGaC3OXMPROlYLU4jvzAqazPIktAWHAt8vA=;
	b=Lm3B9f7fHEcvRwF3VPN6m5O7LKQpTk34ek7qxRy7aRy1u5IENUUXy4RWDrdGWLfC6s+VTdmEUevdVk0n3upo0Uc+L/xnP8EzAtyVLtxo8rzbA3CIbMhmDws+LoHF0+DlzxRJAFkbsaWOsJMTvJilGnNxhxgxCbzOatov6JuhiF0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:0c9cec1f-75ac-4e6a-97f9-1d6bff86dca0,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:8bb5077d-ccd9-4df5-91ce-9df5fea3ae01,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 0afc417e715f11ee8051498923ad61e6-20231023
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1521338957; Mon, 23 Oct 2023 12:45:51 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 23 Oct 2023 12:45:50 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 23 Oct 2023 12:45:50 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Mon, 23 Oct 2023 12:45:39 +0800
Message-ID: <20231023044549.21412-3-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
References: <20231023044549.21412-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--4.394100-8.000000
X-TMASE-MatchedRID: uVuWzlu52RmXFGyE5q3nYAI0yP/uoH+DecN1rDssvvD01TdrRxjjBmHb
	a47C7iuKyEc5uvbs9jJory5Ze4fh3R8TzIzimOwPlpYqKNmWxsHZs3HUcS/scCq2rl3dzGQ1/tQ
	ArNcrq36iBTS2DfJ1UbCldBrzRhTQrp9blvR0bddbYsvRHb6TLN5iA70IIkTWQQXSVcOKGCV0bW
	LyirWxqTJs0PmiHVvMLeu9/Cix+Fl0BNB20+SxH7f8mJY57oZddJaBDYald1mHO0tVYDV4T0MMp
	rcbiest
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--4.394100-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	66FDBF0DFC55DCFB202E9A08950705DF06179435C113E991635781B50D4D19802000:8
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 477F440202
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32];
	MIME_GOOD(-0.10)[text/plain];
	BLOCKLISTDE_FAIL(0.00)[210.61.82.184:query timed out];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Action: no action
X-Spam-Level: *
Message-ID-Hash: 2PNQMG7NI5SNUSL47UQ4MC6RIDCZ6TXW
X-Message-ID-Hash: 2PNQMG7NI5SNUSL47UQ4MC6RIDCZ6TXW
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 02/11] drm/mediatek/uapi: Add DRM_MTK_GEM_CREATED_ENCRYPTTED flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2PNQMG7NI5SNUSL47UQ4MC6RIDCZ6TXW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add DRM_MTK_GEM_CREATED_ENCRYPTTED flag to allocate a secure buffer
to support secure video path feature.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 include/uapi/drm/mediatek_drm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/drm/mediatek_drm.h b/include/uapi/drm/mediatek_drm.h
index c050de320a84..93f25e0c21d7 100644
--- a/include/uapi/drm/mediatek_drm.h
+++ b/include/uapi/drm/mediatek_drm.h
@@ -48,6 +48,7 @@ struct drm_mtk_gem_map_off {
 
 #define DRM_MTK_GEM_CREATE		0x00
 #define DRM_MTK_GEM_MAP_OFFSET		0x01
+#define DRM_MTK_GEM_CREATE_ENCRYPTED	0x02
 
 #define DRM_IOCTL_MTK_GEM_CREATE	DRM_IOWR(DRM_COMMAND_BASE + \
 		DRM_MTK_GEM_CREATE, struct drm_mtk_gem_create)
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

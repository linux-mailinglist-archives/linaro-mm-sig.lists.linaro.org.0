Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2052481D5CE
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 Dec 2023 19:30:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC29343E77
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 23 Dec 2023 18:30:04 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 47C993F1B5
	for <linaro-mm-sig@lists.linaro.org>; Sat, 23 Dec 2023 18:29:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=nqqpei5f;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 393d5716a1c111eeba30773df0976c77-20231224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=xd+2WO9L3pcsQ8gq+8BvWBHvGNLSUJUNSJhwoT5EhA4=;
	b=nqqpei5fLHNXYAHPRZvKJiFbDJNBOeXXrJCmrUmO6BiONrY+dsyhsRQcHwRc1Z/NbADPChWFnQ8xIwy3MzXBzY3t/gjSobXlGFHZG6+JdVp0by5kr/Tl9HIp5PkL6dakEVmJ3+Bd6PNBmf1sTqkmtNuuj2vkgz3CXgAFI/qd/WI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:c5b610cb-7e2d-4968-b785-eb49cf11ae7d,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:70c0692e-1ab8-4133-9780-81938111c800,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 393d5716a1c111eeba30773df0976c77-20231224
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1801608358; Sun, 24 Dec 2023 02:29:35 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 24 Dec 2023 02:29:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sun, 24 Dec 2023 02:29:34 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Sun, 24 Dec 2023 02:29:23 +0800
Message-ID: <20231223182932.27683-3-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
References: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[210.61.82.184:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mailgw02.mediatek.com:rdns,mailgw02.mediatek.com:helo,mediatek.com:email,mediatek.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 47C993F1B5
X-Spamd-Bar: /
Message-ID-Hash: T6XMM472R4OHGFZMJWVVGEJL6LLSJNYC
X-Message-ID-Hash: T6XMM472R4OHGFZMJWVVGEJL6LLSJNYC
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jeffrey Kardatzke <jkardatzke@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 02/11] drm/mediatek/uapi: Add DRM_MTK_GEM_CREATE_ENCRYPTED flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T6XMM472R4OHGFZMJWVVGEJL6LLSJNYC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add DRM_MTK_GEM_CREATE_ENCRYPTED flag to allow user to allocate
a secure buffer to support secure video path feature.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 include/uapi/drm/mediatek_drm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/drm/mediatek_drm.h b/include/uapi/drm/mediatek_drm.h
index f4d47577c94e..189d20301205 100644
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

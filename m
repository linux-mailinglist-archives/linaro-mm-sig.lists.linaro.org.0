Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 779917CF764
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:49:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89A2940C3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:49:11 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 93A3D3E9F1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Sep 2023 03:18:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=iiVAUHvU;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 27353cfa569911ee8051498923ad61e6-20230919
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=oXsyJo1VmfxEd/RpIUBg1e3nF5UWAh822BaOaPLQSIY=;
	b=iiVAUHvUi08ZCLOOKS57KqVfHBvoD4peGiNyP070qdz3ULpPW633LWR7LZpi5yl5KNFvYbOQG3RCtaZXb4hSJZWfwz7NwB9p5OcMPJTVQUDPCGW6S2KqvG5VKJk6oKSRn2IQ/Vy1+eFxyVQ+1MNFu4KNGa/IcOs96m0bfEV+9kc=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:ef020b7c-878e-4fae-b690-a1ed559c2f7a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:0ad78a4,CLOUDID:128e1814-4929-4845-9571-38c601e9c3c9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: 27353cfa569911ee8051498923ad61e6-20230919
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 520481946; Tue, 19 Sep 2023 11:03:48 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 19 Sep 2023 11:03:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 19 Sep 2023 11:03:46 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Tue, 19 Sep 2023 11:03:35 +0800
Message-ID: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-Spamd-Bar: ++++
X-Spamd-Result: default: False [4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32:c];
	FROM_EQ_ENVFROM(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk];
	DKIM_TRACE(0.00)[mediatek.com:+]
X-Rspamd-Action: add header
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ****
X-Rspamd-Queue-Id: 93A3D3E9F1
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YWCD2KWBILCWIFJWME55HB7G7AGGUOID
X-Message-ID-Hash: YWCD2KWBILCWIFJWME55HB7G7AGGUOID
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:45:31 +0000
CC: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 00/10] Add mediate-drm secure flow for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YWCD2KWBILCWIFJWME55HB7G7AGGUOID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spam: Yes

The patch series provides drm driver support for enabling secure video
path (SVP) playback on MediaiTek hardware in the Linux kernel.

Memory Definitions:
secure memory - Memory allocated in the TEE (Trusted Execution
Environment) which is inaccessible in the REE (Rich Execution
Environment, i.e. linux kernel/userspace).
secure handle - Integer value which acts as reference to 'secure
memory'. Used in communication between TEE and REE to reference
'secure memory'.
secure buffer - 'secure memory' that is used to store decrypted,
compressed video or for other general purposes in the TEE.
secure surface - 'secure memory' that is used to store graphic buffers.

Memory Usage in SVP:
The overall flow of SVP starts with encrypted video coming in from an
outside source into the REE. The REE will then allocate a 'secure
buffer' and send the corresponding 'secure handle' along with the
encrypted, compressed video data to the TEE. The TEE will then decrypt
the video and store the result in the 'secure buffer'. The REE will
then allocate a 'secure surface'. The REE will pass the 'secure
handles' for both the 'secure buffer' and 'secure surface' into the
TEE for video decoding. The video decoder HW will then decode the
contents of the 'secure buffer' and place the result in the 'secure
surface'. The REE will then attach the 'secure surface' to the overlay
plane for rendering of the video.

Everything relating to ensuring security of the actual contents of the
'secure buffer' and 'secure surface' is out of scope for the REE and
is the responsibility of the TEE.

DRM driver handles allocation of gem objects that are backed by a 'secure
surface' and for displaying a 'secure surface' on the overlay plane.
This introduces a new flag for object creation called
DRM_MTK_GEM_CREATE_ENCRYPTED which indicates it should be a 'secure
surface'. All changes here are in MediaTek specific code.

---
Based on 2 series:
[1] Add CMDQ secure driver for SVP
- https://patchwork.kernel.org/project/linux-mediatek/list/?series=785332

[2] dma-buf: heaps: Add MediaTek secure heap
- https://patchwork.kernel.org/project/linux-mediatek/list/?series=782776
---

CK Hu (1):
  drm/mediatek: Add interface to allocate MediaTek GEM buffer.

Jason-JH.Lin (9):
  drm/mediatek/uapi: Add DRM_MTK_GEM_CREATED_ENCRYPTTED flag
  drm/mediatek: Add secure buffer control flow to mtk_drm_gem
  drm/mediatek: Add secure identify flag and funcution to mtk_drm_plane
  drm/mediatek: Add mtk_ddp_sec_write to config secure buffer info
  drm/mediatek: Add get_sec_port interface to mtk_ddp_comp
  drm/mediatek: Add secure layer config support for ovl
  drm/mediatek: Add secure layer config support for ovl_adaptor
  drm/mediatek: Add secure flow support to mediatek-drm
  arm64: dts: mt8195-cherry: Add secure mbox settings for vdosys

 .../boot/dts/mediatek/mt8195-cherry.dtsi      |  10 +
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |   3 +
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  31 +-
 .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   |  15 +
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c       | 271 +++++++++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h       |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |  14 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |  13 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  16 +-
 drivers/gpu/drm/mediatek/mtk_drm_gem.c        | 121 ++++++++
 drivers/gpu/drm/mediatek/mtk_drm_gem.h        |  16 ++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c      |   7 +
 drivers/gpu/drm/mediatek/mtk_drm_plane.h      |   2 +
 drivers/gpu/drm/mediatek/mtk_mdp_rdma.c       |  11 +-
 drivers/gpu/drm/mediatek/mtk_mdp_rdma.h       |   2 +
 include/uapi/drm/mediatek_drm.h               |  59 ++++
 16 files changed, 575 insertions(+), 17 deletions(-)
 create mode 100644 include/uapi/drm/mediatek_drm.h

-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

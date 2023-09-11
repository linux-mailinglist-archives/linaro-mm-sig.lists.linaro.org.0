Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E3679A953
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 17:03:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E52E3F4AC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 15:03:18 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 4AACD3E95C
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 02:30:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b="uf2/Wzg+";
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 36af3e00504b11eea33bb35ae8d461a2-20230911
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=+87uOL2WQvYvX9g5bStM5h9swQ1laB4yxiMeMo2iqXc=;
	b=uf2/Wzg+L7T9MTAwoxRWPDfyQUIyCXE0Hxfbpd3z4Ot7lzyqPcWbk4O4xh7hh9E8y45mJKqChOgOFP9EF9naY5Gdk/LEGyxBY3/4r3IOo4Os4WsSemPu36wTXwRLsVKa+x8NEqVQB2TXZtAhjvT8S2sZri8wfjQveu6OzbfAAG8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:2fcd4e6f-6799-4aa9-ab3f-fbfa01e6997a,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:0ad78a4,CLOUDID:1d59adbe-14cc-44ca-b657-2d2783296e72,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 36af3e00504b11eea33bb35ae8d461a2-20230911
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 141108311; Mon, 11 Sep 2023 10:30:46 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 11 Sep 2023 10:30:45 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 11 Sep 2023 10:30:44 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 11 Sep 2023 10:30:29 +0800
Message-ID: <20230911023038.30649-1-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Queue-Id: 4AACD3E95C
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailgw01.mediatek.com:helo,mailgw01.mediatek.com:rdns,mediatek.com:dkim]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: *
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: M6PVSFQ5BUGZ62Y35KZLMPH5R4JV4VMO
X-Message-ID-Hash: M6PVSFQ5BUGZ62Y35KZLMPH5R4JV4VMO
X-Mailman-Approved-At: Mon, 11 Sep 2023 15:03:14 +0000
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/9] dma-buf: heaps: Add MediaTek secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M6PVSFQ5BUGZ62Y35KZLMPH5R4JV4VMO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This patchset consists of two parts, the first is from John and TJ.
It adds some heap interfaces, then our kernel users could allocate buffer
from special heap. The second part is adding MTK secure heap for SVP
(Secure Video Path). A total of two heaps are added, one is mtk_svp and
the other is mtk_svp_cma. The mtk_svp buffer is reserved for the secure
world after bootup and it is used for ES/working buffer, while the
mtk_svp_cma buffer is dynamically reserved for the secure world and will
be get ready when we start playing secure videos, this heap is used for the
frame buffer. Once the security video playing is complete, the CMA will be
released.

For easier viewing, I've split the new heap file into several patches.

The consumers of new heap and new interfaces are our codec and drm which
will send upstream soon, probably this week.

Base on v6.6-rc1.

John Stultz (2):
  dma-heap: Add proper kref handling on dma-buf heaps
  dma-heap: Provide accessors so that in-kernel drivers can allocate
    dmabufs from specific heaps

T.J. Mercier (1):
  dma-buf: heaps: Deduplicate docs and adopt common format

Yong Wu (6):
  dma-buf: heaps: Initialise MediaTek secure heap
  dma-buf: heaps: mtk_sec_heap: Initialise tee session
  dma-buf: heaps: mtk_sec_heap: Add tee service call for buffer
    allocating/freeing
  dma-buf: heaps: mtk_sec_heap: Add dma_ops
  dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
  dma_buf: heaps: mtk_sec_heap: Add a new CMA heap

 .../mediatek,secure_cma_chunkmem.yaml         |  42 ++
 drivers/dma-buf/dma-heap.c                    | 127 +++--
 drivers/dma-buf/heaps/Kconfig                 |   8 +
 drivers/dma-buf/heaps/Makefile                |   1 +
 drivers/dma-buf/heaps/mtk_secure_heap.c       | 458 ++++++++++++++++++
 include/linux/dma-heap.h                      |  42 +-
 6 files changed, 630 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml
 create mode 100644 drivers/dma-buf/heaps/mtk_secure_heap.c

-- 
2.18.0


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

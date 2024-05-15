Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A288C6581
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 13:23:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87FEE441A4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 May 2024 11:23:35 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 913633F624
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 May 2024 11:23:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=Usr0NgOc;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 8718d35e12ad11ef8065b7b53f7091ad-20240515
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=IlFXmyf7lVuAjWzk0JCH44oxrlsC9DRFLFXea4JmH2Y=;
	b=Usr0NgOczddiJK1x0K+10CYnoxvbzY424Ra4VX6J7gFId6STXdZYuMMn4ZrjRbRlqmFkJj7FqHqkp5g5Wt9Tgr2zqGvg6ASJxAwdrV8tOfbJHUN7IajBhpPNCMepv95O7weSioKHkcjk0KHtE1vGBRpJ7zlvoyEAHaSayWtLxQI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:0eed5309-2624-4509-9591-a6f83ccca5f2,IP:0,U
	RL:0,TC:0,Content:-25,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACT
	ION:release,TS:-50
X-CID-META: VersionHash:82c5f88,CLOUDID:50c71ffc-ed05-4274-9204-014369d201e8,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:1|19,IP:nil
	,URL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:
	1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: 8718d35e12ad11ef8065b7b53f7091ad-20240515
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1604216258; Wed, 15 May 2024 19:23:17 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 15 May 2024 19:23:16 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 15 May 2024 19:23:14 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, <christian.koenig@amd.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 15 May 2024 19:22:59 +0800
Message-ID: <20240515112308.10171-1-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 913633F624
X-Spamd-Bar: +
X-Spamd-Result: default: False [1.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[210.61.82.184:from];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCPT_COUNT_TWELVE(0.00)[33];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,amd.com,linaro.org,linux-foundation.org];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,gmail.com,infradead.org,deltatee.com,ffwll.ch];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mediatek.com:+];
	FROM_HAS_DN(0.00)[]
X-Spam-Level: *
X-Rspamd-Action: no action
Message-ID-Hash: EPSOK2ZS7V3L4J33QSQLEGCYIOK3RMK7
X-Message-ID-Hash: EPSOK2ZS7V3L4J33QSQLEGCYIOK3RMK7
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, Pekka Paalanen <ppaalanen@gmail.com>, willy@infradead.org, Logan Gunthorpe <logang@deltatee.com>, Daniel Vetter <daniel@ffwll.ch>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@medi
 atek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 0/9] dma-buf: heaps: Add restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EPSOK2ZS7V3L4J33QSQLEGCYIOK3RMK7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The purpose of this patchset is for MediaTek secure video playback, and
also to enable other potential uses of this in the future. The 'restricted
dma-heap' will be used to allocate dma_buf objects that reference memory
in the secure world that is inaccessible/unmappable by the non-secure
(i.e. kernel/userspace) world.  That memory will be used by the secure/
trusted world to store secure information (i.e. decrypted media content).
The dma_bufs allocated from the kernel will be passed to V4L2 for video
decoding (as input and output). They will also be used by the drm
system for rendering of the content.

This patchset adds two MediaTek restricted heaps and they will be used in
v4l2[1] and drm[2].
1) restricted_mtk_cm: secure chunk memory for MediaTek SVP (Secure Video
   Path). The buffer is reserved for the secure world after bootup and it
   is used for vcodec's ES/working buffer;
2) restricted_mtk_cma: secure CMA memory for MediaTek SVP. This buffer is
   dynamically reserved for the secure world and will be got when we start
   playing secure videos. Once the security video playing is complete, the
   CMA will be released. This heap is used for the vcodec's frame buffer. 

[1] https://lore.kernel.org/linux-mediatek/20240412090851.24999-1-yunfei.dong@mediatek.com/
[2] https://lore.kernel.org/linux-mediatek/20240403102701.369-1-shawn.sung@mediatek.com/

Change note:
v5: 1) Reconstruct TEE commands to allow the kernel to obtain the PA of the
     TEE buffer to initialize a valid sg table.
    2) Previously, PA was hidden from the kernel. Then the kernel checks if
     this is restricted buffer by "if (sg_page(sg) == NULL)".
     In this version, we will add a new explicit interface
     (sg_dma_is_restricted) for users to determine whether this is a
     restricted buffer.
    3) some words improve, like using "rheap".
    Rebase on v6.9-rc7.

v4: https://lore.kernel.org/linux-mediatek/20240112092014.23999-1-yong.wu@mediatek.com/
    1) Rename the heap name from "secure" to "restricted". suggested from
     Simon/Pekka. There are still several "secure" string in MTK file
     since we use ARM platform in which we call this "secure world"/
     "secure command".

v3: https://lore.kernel.org/linux-mediatek/20231212024607.3681-1-yong.wu@mediatek.com/
    1) Separate the secure heap to a common file(secure_heap.c) and mtk
     special file (secure_heap_mtk.c),  and put all the tee related code
     into our special file.
    2) About dt-binding, Add "mediatek," prefix since this is Mediatek TEE
     firmware definition.
    3) Remove the normal CMA heap which is a draft for qcom.
    Rebase on v6.7-rc1.

v2: https://lore.kernel.org/linux-mediatek/20231111111559.8218-1-yong.wu@mediatek.com/
    1) Move John's patches into the vcodec patchset since they use the new
       dma heap interface directly.
       https://lore.kernel.org/linux-mediatek/20231106120423.23364-1-yunfei.dong@mediatek.com/
    2) Reword the dt-binding description.
    3) Rename the heap name from mtk_svp to secure_mtk_cm.
       This means the current vcodec/DRM upstream code doesn't match this.
    4) Add a normal CMA heap. currently it should be a draft version.
    5) Regarding the UUID, I still use hard code, but put it in a private
    data which allow the others could set their own UUID. What's more, UUID
    is necessary for the session with TEE. If we don't have it, we can't
    communicate with the TEE, including the get_uuid interface, which tries
    to make uuid more generic, not working. If there is other way to make
    UUID more general, please free to tell me.
    
v1: https://lore.kernel.org/linux-mediatek/20230911023038.30649-1-yong.wu@mediatek.com/
    Base on v6.6-rc1.

Yong Wu (9):
  dt-bindings: reserved-memory: Add mediatek,dynamic-restricted-region
  scatterlist: Add a flag for the restricted memory
  lib/scatterlist: Add sg_dup_table
  dma-buf: heaps: Initialize a restricted heap
  dma-buf: heaps: restricted_heap: Add private heap ops
  dma-buf: heaps: restricted_heap: Add dma_ops
  dma-buf: heaps: restricted_heap: Add MediaTek restricted heap and
    heap_init
  dma-buf: heaps: restricted_heap_mtk: Add TEE memory service call
  dma_buf: heaps: restricted_heap_mtk: Add a new CMA heap

 .../mediatek,dynamic-restricted-region.yaml   |  43 ++
 drivers/dma-buf/heaps/Kconfig                 |  16 +
 drivers/dma-buf/heaps/Makefile                |   4 +-
 drivers/dma-buf/heaps/restricted_heap.c       | 219 +++++++++
 drivers/dma-buf/heaps/restricted_heap.h       |  45 ++
 drivers/dma-buf/heaps/restricted_heap_mtk.c   | 423 ++++++++++++++++++
 drivers/dma-buf/heaps/system_heap.c           |  27 +-
 include/linux/scatterlist.h                   |  36 ++
 lib/scatterlist.c                             |  26 ++
 9 files changed, 812 insertions(+), 27 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,dynamic-restricted-region.yaml
 create mode 100644 drivers/dma-buf/heaps/restricted_heap.c
 create mode 100644 drivers/dma-buf/heaps/restricted_heap.h
 create mode 100644 drivers/dma-buf/heaps/restricted_heap_mtk.c

-- 
2.18.0


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

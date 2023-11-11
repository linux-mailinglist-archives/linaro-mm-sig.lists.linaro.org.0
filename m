Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4717E8A80
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 12:16:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EFB540D47
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 11:16:40 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 0121040CC4
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Nov 2023 11:16:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=ZYVp65ZK;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com
X-UUID: bb35b3e4808311ee8051498923ad61e6-20231111
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=D2tKsXiy0X+1JGV/GrDN1OLzUO3UG44bCa8GSOX5Eqc=;
	b=ZYVp65ZKL9ii//GMRU+3Tykq1kLMIacfXQ0nUO8RIrVzwDumVK/jnHAwyzRTIdCO350B7ZJCaScXLko1RgwVuKdL7aXewsLAdakY6gi0mB5K8pFqto0ZLA+RG7n66nS53yWTRj497ffjtTU2Ioy5z5VmrA+CbxLniS4hGITzO90=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33,REQID:1bb9f16c-58c5-49af-bcbe-52e6832c6786,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:364b77b,CLOUDID:9e818872-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: bb35b3e4808311ee8051498923ad61e6-20231111
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 384052900; Sat, 11 Nov 2023 19:16:16 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sat, 11 Nov 2023 19:16:15 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sat, 11 Nov 2023 19:16:14 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Sat, 11 Nov 2023 19:15:51 +0800
Message-ID: <20231111111559.8218-1-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0121040CC4
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
	RCPT_COUNT_TWELVE(0.00)[26];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,collabora.com,arm.com,google.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ndufresne.ca,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mediatek.com:+];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Spam-Level: *
Message-ID-Hash: SV33QOAJQGQOFBK3DVZ57LMYP7I5RRL7
X-Message-ID-Hash: SV33QOAJQGQOFBK3DVZ57LMYP7I5RRL7
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/8] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SV33QOAJQGQOFBK3DVZ57LMYP7I5RRL7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This patchset adds three secure heaps:
1) secure_mtk_cm: secure chunk memory for MediaTek SVP (Secure Video Path).
   The buffer is reserved for the secure world after bootup and it is used
   for vcodec's ES/working buffer;
2) secure_mtk_cma: secure CMA memory for MediaTek SVP. This buffer is
   dynamically reserved for the secure world and will be got when we start
   playing secure videos, Once the security video playing is complete, the
   CMA will be released. This heap is used for the vcodec's frame buffer. 
3) secure_cma: Use the kerne CMA ops as the allocation ops. 
   currently it is a draft version for Vijay and Jaskaran.

For the first two MediaTek heaps will be used v4l2[1] and drm[2], thus we
cannot put it in v4l2 or drm, and create a common heap for them. Meanwhile
We have a limited number of hardware entries to protect memory, we cannot
protect memory arbitrarily, thus the secure memory management is actually
inside OPTEE. The kernel just tells the TEE what size I want and the TEE
will return a "secure handle".

[1] https://lore.kernel.org/linux-mediatek/20231106120423.23364-1-yunfei.dong@mediatek.com/
[2] https://lore.kernel.org/linux-mediatek/20231023044549.21412-1-jason-jh.lin@mediatek.com/

Change note:
v2: 1) Move John's patches into the vcodec patchset since they use the new
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

Yong Wu (8):
  dma-buf: heaps: Initialize a secure heap
  dma-buf: heaps: secure_heap: Add private heap ops
  dma-buf: heaps: secure_heap: Initialize tee session
  dma-buf: heaps: secure_heap: Add tee memory service call
  dma-buf: heaps: secure_heap: Add dma_ops
  dt-bindings: reserved-memory: Add secure CMA reserved memory range
  dma_buf: heaps: secure_heap: Add a new MediaTek CMA heap
  dma-buf: heaps: secure_heap: Add normal CMA heap

 .../reserved-memory/secure_cma_region.yaml    |  44 ++
 drivers/dma-buf/heaps/Kconfig                 |   7 +
 drivers/dma-buf/heaps/Makefile                |   1 +
 drivers/dma-buf/heaps/secure_heap.c           | 602 ++++++++++++++++++
 4 files changed, 654 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/secure_cma_region.yaml
 create mode 100644 drivers/dma-buf/heaps/secure_heap.c

-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

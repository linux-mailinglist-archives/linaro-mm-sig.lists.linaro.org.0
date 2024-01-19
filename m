Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF2E8324AB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 07:33:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 362CE40BE5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jan 2024 06:33:30 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 84E4A3F006
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jan 2024 06:32:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b="Lz9Sm4/7";
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: 8305655eb69411ee9e680517dc993faa-20240119
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=z+415aCyhS8IhkpchW7BlN5Xto1S5/mHPUleRxDgbFY=;
	b=Lz9Sm4/729cjYehzy8BCXyZWLxQ64p5jTxtTxYpSJDkPaCY/FvhgeQ1YsT9AZHSryJdX/ezdvyJyOlwv2d0jyeKfEC1LwODPj2emZPQPDXceMILl1e+bNpUx7PvwAkNjur56QkHitvHUmGmHq6a+y9cD0664cg19u+v7IXQ0W4U=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.36,REQID:e2db8d5c-b6a1-481f-8a7d-5b29a50585a8,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6e16cf4,CLOUDID:bc1c572f-1ab8-4133-9780-81938111c800,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 8305655eb69411ee9e680517dc993faa-20240119
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 102036836; Fri, 19 Jan 2024 14:32:26 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 19 Jan 2024 14:32:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 19 Jan 2024 14:32:25 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Fri, 19 Jan 2024 14:32:21 +0800
Message-ID: <20240119063224.29671-1-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[60.244.123.138:from];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
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
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 84E4A3F006
X-Spamd-Bar: /
Message-ID-Hash: 4S6OHPKBHWANH65V37KXZ4HLIF7NSLWY
X-Message-ID-Hash: 4S6OHPKBHWANH65V37KXZ4HLIF7NSLWY
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 0/3] Add mediatek,gce-props.yaml for other bindings reference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4S6OHPKBHWANH65V37KXZ4HLIF7NSLWY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>

The property "mediatek,gce-events" is used for GCE event ID corresponding
to a hardware event signal sent by the hardware or a sofware driver.
If the mailbox providers or consumers want to manipulate the value of
the event ID, they need to know the specific event ID.

Since mediatek,gce-events property is used for both mailbox producers
and consumers, we add a mediatek,gce-props.yaml to place the common GCE
properties like mediatek,gce-events.

Change in v3:
1. Add more description and fix typo and grammar.
2. Fix $ref as full path.

Change in v2:
1. Add mediatek,gce-props.yaml for other binding reference.

Jason-JH.Lin (3):
  dt-bindings: mailbox: Add mediatek,gce-props.yaml
  dt-bindings: media: mediatek: mdp: Change mediatek,gce-events to
    reference
  dt-bindings: soc: mediatek: Change mediatek,gce-events to refernece

 .../bindings/mailbox/mediatek,gce-props.yaml  | 52 +++++++++++++++++++
 .../bindings/media/mediatek,mdp3-rdma.yaml    | 11 ++--
 .../bindings/media/mediatek,mdp3-rsz.yaml     | 12 ++---
 .../bindings/media/mediatek,mdp3-wrot.yaml    | 12 ++---
 .../bindings/soc/mediatek/mediatek,ccorr.yaml | 12 ++---
 .../bindings/soc/mediatek/mediatek,mutex.yaml | 11 ++--
 .../bindings/soc/mediatek/mediatek,wdma.yaml  | 12 ++---
 7 files changed, 74 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml

-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

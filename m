Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0182A839E00
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 02:15:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D8FC43CE0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 01:15:16 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id C4C593F086
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jan 2024 01:15:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=rxB9HOM7;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com
X-UUID: ffa3dbf8ba5511ee9e680517dc993faa-20240124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=Y2eeQTZZY/NZ2a6vQYTyhiRsKBL6xd0zO5wl1rg1YyU=;
	b=rxB9HOM78j+NMjcuBvzvtfG4QJomjAwtce5C9/yQdRIUASFyRVoZW0PjX1GsH3xaSBVBfybo926wPXk+HGnoKfyvigwC098F+eW29qQR+MI/qARm9IPFshKpkAkwWFujyHf8Dr7fWLFPznIbs1xztyCL8LTwAHONNTObaOu1d90=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.36,REQID:9c7ed194-fd0c-4953-912e-033ab8466ef9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:1,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:1
X-CID-META: VersionHash:6e16cf4,CLOUDID:2b7aae7f-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: ffa3dbf8ba5511ee9e680517dc993faa-20240124
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 504146864; Wed, 24 Jan 2024 09:15:01 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 24 Jan 2024 09:15:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 24 Jan 2024 09:15:00 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Wed, 24 Jan 2024 09:14:56 +0800
Message-ID: <20240124011459.12204-1-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C4C593F086
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.80 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[60.244.123.138:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mailgw01.mediatek.com:helo,mailgw01.mediatek.com:rdns];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mediatek.com:+]
Message-ID-Hash: F7LPRO5HLRN6DFMXMOYENAUZWU2NI5NZ
X-Message-ID-Hash: F7LPRO5HLRN6DFMXMOYENAUZWU2NI5NZ
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Fei Shao <fshao@chromium.org>, Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 0/3] Add mediatek,gce-props.yaml for other bindings reference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F7LPRO5HLRN6DFMXMOYENAUZWU2NI5NZ/>
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
to a hardware event signal sent by the hardware or a software driver.
If the mailbox providers or consumers want to manipulate the value of
the event ID, they need to know the specific event ID.

Since mediatek,gce-events property is used for both mailbox producers
and consumers, we add a mediatek,gce-props.yaml to place the common GCE
properties like mediatek,gce-events.

Change in v4:
1. Fix some typo.
2. Change maxItems of gce-events from 1024 to 32.

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

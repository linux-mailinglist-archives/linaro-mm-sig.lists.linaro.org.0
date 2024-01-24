Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE0F839E07
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 02:15:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C06053F088
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 01:15:35 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id A83D33F0C8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jan 2024 01:15:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b="g2+v/KPH";
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com
X-UUID: ffbfa9e6ba5511ee9e680517dc993faa-20240124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=RMIo1guccMFVDfkHmK7frFW/6/qfxStJTqou8qVMu6o=;
	b=g2+v/KPHws3QB5H5WYltqUzOAP9CiTse+XwvpmG1taYDPuyf+ZQ2rJJTOucluDF36ItrNifqfrp5RcQtUFi+2U1zfE0gkd/IifoAfoyDzGV7xwXSOOGyIk2eR3empAOcH5EcAUvFNpuEpuUpghW7VoT5FKXM/R2GvkENUob89RU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.36,REQID:3a12a735-c1c4-4498-99bb-8fa85966b2e8,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:6e16cf4,CLOUDID:a17813fe-c16b-4159-a099-3b9d0558e447,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: ffbfa9e6ba5511ee9e680517dc993faa-20240124
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 940778163; Wed, 24 Jan 2024 09:15:02 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
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
Date: Wed, 24 Jan 2024 09:14:57 +0800
Message-ID: <20240124011459.12204-2-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20240124011459.12204-1-jason-jh.lin@mediatek.com>
References: <20240124011459.12204-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A83D33F0C8
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[60.244.123.138:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[mailgw01.mediatek.com:helo,devicetree.org:url,microchip.com:email];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[mediatek.com:+]
Message-ID-Hash: CXRKL644CRFVQLTQPIXUYUBYGAMWR56I
X-Message-ID-Hash: CXRKL644CRFVQLTQPIXUYUBYGAMWR56I
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Fei Shao <fshao@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 1/3] dt-bindings: mailbox: Add mediatek,gce-props.yaml
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CXRKL644CRFVQLTQPIXUYUBYGAMWR56I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add mediatek,gce-props.yaml for common GCE properties that is used for
both mailbox providers and consumers. We place the common property
"mediatek,gce-events" in this binding currently.

The property "mediatek,gce-events" is used for GCE event ID corresponding
to a hardware event signal sent by the hardware or a software driver.
If the mailbox providers or consumers want to manipulate the value of
the event ID, they need to know the specific event ID.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/mailbox/mediatek,gce-props.yaml  | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml b/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml
new file mode 100644
index 000000000000..c25eed4606fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/mediatek,gce-props.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/mediatek,gce-props.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Global Command Engine Common Properties
+
+maintainers:
+  - Houlong Wei <houlong.wei@mediatek.com>
+
+description:
+  The Global Command Engine (GCE) is an instruction based, multi-threaded,
+  single-core command dispatcher for MediaTek hardware. The Command Queue
+  (CMDQ) mailbox driver is a driver for GCE, implemented using the Linux
+  mailbox framework. It is used to receive messages from mailbox consumers
+  and configure GCE to execute the specified instruction set in the message.
+  We use mediatek,gce-mailbox.yaml to define the properties for CMDQ mailbox
+  driver. A device driver that uses the CMDQ driver to configure its hardware
+  registers is a mailbox consumer. The mailbox consumer can request a mailbox
+  channel corresponding to a GCE hardware thread to send a message, specifying
+  that the GCE thread to configure its hardware. The mailbox provider can also
+  reserve a mailbox channel to configure GCE hardware register by the specific
+  GCE thread. This binding defines the common GCE properties for both mailbox
+  provider and consumers.
+
+properties:
+  mediatek,gce-events:
+    description:
+      GCE has an event table in SRAM, consisting of 1024 event IDs (0~1023).
+      Each event ID has a boolean event value with the default value 0.
+      The property mediatek,gce-events is used to obtain the event IDs.
+      Some gce-events are hardware-bound and cannot be changed by software.
+      For instance, in MT8195, when VDO0_MUTEX is stream done, VDO_MUTEX will
+      send an event signal to GCE, setting the value of event ID 597 to 1.
+      Similarly, in MT8188, the value of event ID 574 will be set to 1 when
+      VOD0_MUTEX is stream done.
+      On the other hand, some gce-events are not hardware-bound and can be
+      changed by software. For example, in MT8188, we can set the value of
+      event ID 855, which is not bound to any hardware, to 1 when the driver
+      in the secure world completes a task. However, in MT8195, event ID 855
+      is already bound to VDEC_LAT1, so we need to select another event ID to
+      achieve the same purpose. This event ID can be any ID that is not bound
+      to any hardware and is not yet used in any software driver.
+      To determine if the event ID is bound to the hardware or used by a
+      software driver, refer to the GCE header
+      include/dt-bindings/gce/<chip>-gce.h of each chip.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 32
+
+additionalProperties: true
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

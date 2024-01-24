Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D8A839E12
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 02:16:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B2BCE3F086
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jan 2024 01:16:13 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 1B8F3402B8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jan 2024 01:15:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=VltTYfW1;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	spf=pass (lists.linaro.org: domain of jason-jh.lin@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=jason-jh.lin@mediatek.com
X-UUID: 007edd0cba5611eea2298b7352fd921d-20240124
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=jY25V9ghNP6bd61jv/tFtIQwKG0PgprM4MMtTJO0/9M=;
	b=VltTYfW1n1gnwG0yHWDo8hMamjNxLTuE3pACeUt/5DmX9W1BtKqJk5np2TiEvh/DhzpB2VKj4v1UxzT8Lk6XKL+LLipHPe9Ivm0QfnXjOlaqBIPBXQbMZpo6cbRU8QWs7ibX94/0D2ryaygheKOC+h/SQDBRZukQRgdk+/7KOWE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.36,REQID:bb6cc438-7e20-4c2f-b643-a804101d7f2f,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6e16cf4,CLOUDID:2c58958e-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 007edd0cba5611eea2298b7352fd921d-20240124
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1884859621; Wed, 24 Jan 2024 09:15:03 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 24 Jan 2024 09:15:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 24 Jan 2024 09:15:01 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>
Date: Wed, 24 Jan 2024 09:14:59 +0800
Message-ID: <20240124011459.12204-4-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20240124011459.12204-1-jason-jh.lin@mediatek.com>
References: <20240124011459.12204-1-jason-jh.lin@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--4.790600-8.000000
X-TMASE-MatchedRID: aM1oCRdK49EMiTNbd7AZSQPZZctd3P4BK2i9pofGVSsCsxyhR8y7CSks
	jJeAae2ufhI10pDdSP7QVGKORWAoMGF/gGkQ6asW6/xAZojbl7cP4vBWNr0zgZsoi2XrUn/J8m+
	hzBStanuKNyKr3HDyRVgXepbcl7r7c9dBRqd2oZqdyRtt2G3UGEkKSKbZ9hn3+2Ue2XythBWzqT
	iktjuYHOATQC+C5DxwHppUPPd3QHIsk7D0F7HbwZwbAlgRrbfpgITnGkK0NFNRskXKHhdfKpij9
	M86UwHhsKHfMTjCprzAgTvs8QFuaX7cGd19dSFd
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--4.790600-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	DA2C902CD1BF65E2707E1D1AA58B11103764CD002F061AD63A7F2A6C02519CD22000:8
X-MTK: N
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1B8F3402B8
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	RWL_MAILSPIKE_GOOD(-0.10)[210.61.82.184:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,collabora.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[microchip.com:email,mailgw02.mediatek.com:helo,mailgw02.mediatek.com:rdns];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+]
Message-ID-Hash: 344OJHVSKZ5JRK7ABFG56WLWELVR5WZI
X-Message-ID-Hash: 344OJHVSKZ5JRK7ABFG56WLWELVR5WZI
X-MailFrom: jason-jh.lin@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Fei Shao <fshao@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 3/3] dt-bindings: soc: mediatek: Change mediatek,gce-events to refernece
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/344OJHVSKZ5JRK7ABFG56WLWELVR5WZI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Change mediatek,gce-events property to reference mediatek,gce-props.yaml
instead of defining itself.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/soc/mediatek/mediatek,ccorr.yaml        | 12 ++++--------
 .../bindings/soc/mediatek/mediatek,mutex.yaml        | 11 +++--------
 .../bindings/soc/mediatek/mediatek,wdma.yaml         | 12 ++++--------
 3 files changed, 11 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,ccorr.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,ccorr.yaml
index 4380b98b0dfe..305f2cd9f865 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,ccorr.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,ccorr.yaml
@@ -34,13 +34,6 @@ properties:
       4 arguments defined in this property. Each GCE subsys id is mapping to
       a client defined in the header include/dt-bindings/gce/<chip>-gce.h.
 
-  mediatek,gce-events:
-    description:
-      The event id which is mapping to the specific hardware event signal
-      to gce. The event id is defined in the gce header
-      include/dt-bindings/gce/<chip>-gce.h of each chips.
-    $ref: /schemas/types.yaml#/definitions/uint32-array
-
   clocks:
     minItems: 1
 
@@ -51,7 +44,10 @@ required:
   - mediatek,gce-events
   - clocks
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/mailbox/mediatek,gce-props.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
index ba2014a8725c..61cf16ce8b0b 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,mutex.yaml
@@ -53,13 +53,6 @@ properties:
     items:
       - description: MUTEX Clock
 
-  mediatek,gce-events:
-    description:
-      The event id which is mapping to the specific hardware event signal
-      to gce. The event id is defined in the gce header
-      include/dt-bindings/gce/<chip>-gce.h of each chips.
-    $ref: /schemas/types.yaml#/definitions/uint32-array
-
   mediatek,gce-client-reg:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     items:
@@ -73,6 +66,8 @@ properties:
       a client defined in the header include/dt-bindings/gce/<chip>-gce.h.
 
 allOf:
+  - $ref: /schemas/mailbox/mediatek,gce-props.yaml#
+
   - if:
       properties:
         compatible:
@@ -97,7 +92,7 @@ required:
   - interrupts
   - power-domains
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,wdma.yaml
index 69afb329e5f4..d9dd4428c036 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,wdma.yaml
@@ -35,13 +35,6 @@ properties:
       4 arguments defined in this property. Each GCE subsys id is mapping to
       a client defined in the header include/dt-bindings/gce/<chip>-gce.h.
 
-  mediatek,gce-events:
-    description:
-      The event id which is mapping to the specific hardware event signal
-      to gce. The event id is defined in the gce header
-      include/dt-bindings/gce/<chip>-gce.h of each chips.
-    $ref: /schemas/types.yaml#/definitions/uint32-array
-
   power-domains:
     maxItems: 1
 
@@ -60,7 +53,10 @@ required:
   - clocks
   - iommus
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/mailbox/mediatek,gce-props.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.18.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

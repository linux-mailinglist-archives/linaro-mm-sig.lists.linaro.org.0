Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 072B270F2D6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:34:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E16A41409
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:34:24 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by lists.linaro.org (Postfix) with ESMTPS id 89CEE3EA46
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 14:52:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=pdG2+3OD;
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.221.65 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-3090d3e9c92so870512f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 07:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684335171; x=1686927171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9mr1L/m4ima+2h/NhXtcjqbHddpi6u41EWoGArxh1iQ=;
        b=pdG2+3ODw0cGuNg/LORzvNsUqX1IiweDfrWioVGocQZDWZOWLRqkDaX4MTzyiQe1c7
         pkyEeUQ7xqMrhFPqgtTXbdZp3T0rwW0l0BIMsILSnzXcX/Sd7NVDoMo/aiSxsYvHmvbE
         9CFhqMy1vU2U8NqgvLhl8WgFol9WpTF6r6EFUqq/RKyHw1v7dAJHBpN4C35EGlhKFu2m
         bv8X2zua8yim+q2TU1Nwjf+yYUMToKg1IrzAFE9ZZPxUgS9V2JJXJY3xZezoYKEGwVXh
         5JUMdyDg8DXWWvuNp3X07uEX8GvfXlSZm2H1ourLwVfh0bfHuRQHtAUbRtnalP8rK24w
         5aJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684335171; x=1686927171;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9mr1L/m4ima+2h/NhXtcjqbHddpi6u41EWoGArxh1iQ=;
        b=hBpViVECV7QRcXtUv5ve8P/E8XNQ1b9md3d7p7WarH6HHkxyf5Fewm6XanopN5D6Sc
         EpR1xGooD/dxspDmhKgg+z6ei9p9ur+eWOILbUqi2+jnC1C9uz2a6i8F+I2h0LLywnzg
         b4gNfI58KBMpROd4YXdVneT1UsR8wLbkWd7upkcnFE2lWJKLH2M623h+S/ECxvrQVVXi
         kIeQmHaHT4PZzpbxbEh7ynysjEvrMejkQfPopeaxBvuEsu8C7Cr90e7PFNDH2uT0o29Q
         TREmZIwQFpBqZowCyCmlfECkiQJtCV4PXoBxi/3njqDlxX9rSpRovtk3NSeNfdMatJox
         NpPQ==
X-Gm-Message-State: AC+VfDzW9RmNOrZ+xosVM+jI9JFsTN5EeGxxXqppgf99ZnVX/umkrNWR
	B9QSp80m46/j4Fiiju2hlIh/dA==
X-Google-Smtp-Source: ACHHUZ7D+XIYOY7fwEt1VA+EKenIzVfyhPoXQPx4ACohe42JP1CZtzERdmroTv625PctD16NHx1kmg==
X-Received: by 2002:adf:e450:0:b0:307:97dd:1de2 with SMTP id t16-20020adfe450000000b0030797dd1de2mr930581wrm.25.1684335171626;
        Wed, 17 May 2023 07:52:51 -0700 (PDT)
Received: from blaptop.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d678b000000b002f7780eee10sm2979098wru.59.2023.05.17.07.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 07:52:51 -0700 (PDT)
From: Alexandre Bailon <abailon@baylibre.com>
To: airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Date: Wed, 17 May 2023 16:52:37 +0200
Message-Id: <20230517145237.295461-8-abailon@baylibre.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517145237.295461-1-abailon@baylibre.com>
References: <20230517145237.295461-1-abailon@baylibre.com>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[baylibre.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.65:from];
	TAGGED_RCPT(0.00)[dt];
	URIBL_BLOCKED(0.00)[baylibre-com.20221208.gappssmtp.com:dkim,0:email];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 89CEE3EA46
X-Spamd-Bar: /
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ICSAVJL2P2EMNPBFN7M6ISNV53JK53IO
X-Message-ID-Hash: ICSAVJL2P2EMNPBFN7M6ISNV53JK53IO
X-Mailman-Approved-At: Wed, 24 May 2023 09:32:07 +0000
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com, Alexandre Bailon <abailon@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ICSAVJL2P2EMNPBFN7M6ISNV53JK53IO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This adds the device tree bindings for the APU DRM driver.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Reviewed-by: Julien Stephan <jstephan@baylibre.com>
---
 .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml

diff --git a/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
new file mode 100644
index 000000000000..6f432d3ea478
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/mediatek,apu-drm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: AI Processor Unit DRM
+
+properties:
+  compatible:
+    const: mediatek,apu-drm
+
+  remoteproc:
+    maxItems: 2
+    description:
+      Handle to remoteproc devices controlling the APU
+
+  iova:
+    maxItems: 1
+    description:
+      Address and size of virtual memory that could used by the APU
+
+required:
+  - compatible
+  - remoteproc
+  - iova
+
+additionalProperties: false
+
+examples:
+  - |
+    apu@0 {
+      compatible = "mediatek,apu-drm";
+      remoteproc = <&vpu0>, <&vpu1>;
+      iova = <0 0x60000000 0 0x10000000>;
+    };
+
+...
-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

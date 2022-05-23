Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (unknown [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC56533C38
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 14:04:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A93E93ED4D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 May 2022 12:03:44 +0000 (UTC)
Received: from twspam01.aspeedtech.com (twspam01.aspeedtech.com [211.20.114.71])
	by lists.linaro.org (Postfix) with ESMTPS id C06DB3F484
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 May 2022 03:04:05 +0000 (UTC)
Received: from mail.aspeedtech.com ([192.168.0.24])
	by twspam01.aspeedtech.com with ESMTP id 24N2lhji078067;
	Mon, 23 May 2022 10:47:43 +0800 (GMT-8)
	(envelope-from neal_liu@aspeedtech.com)
Received: from localhost.localdomain (192.168.10.10) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Mon, 23 May
 2022 11:01:39 +0800
From: Neal Liu <neal_liu@aspeedtech.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@aj.id.au>,
        Felipe Balbi <balbi@kernel.org>,
        Sumit Semwal
	<sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?=
	<christian.koenig@amd.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        "Li
 Yang" <leoyang.li@nxp.com>
Date: Mon, 23 May 2022 11:01:34 +0800
Message-ID: <20220523030134.2977116-4-neal_liu@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220523030134.2977116-1-neal_liu@aspeedtech.com>
References: <20220523030134.2977116-1-neal_liu@aspeedtech.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.10.10]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 24N2lhji078067
X-MailFrom: neal_liu@aspeedtech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FPOORH3Q6IJXZJWO6CD2VZMCRGADNRYB
X-Message-ID-Hash: FPOORH3Q6IJXZJWO6CD2VZMCRGADNRYB
X-Mailman-Approved-At: Wed, 25 May 2022 12:03:31 +0000
CC: Neal Liu <neal_liu@aspeedtech.com>, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v5 3/3] dt-bindings: usb: add documentation for aspeed udc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPOORH3Q6IJXZJWO6CD2VZMCRGADNRYB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add device tree binding documentation for the Aspeed USB2.0 Device
Controller.

Signed-off-by: Neal Liu <neal_liu@aspeedtech.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/usb/aspeed,ast2600-udc.yaml      | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,ast2600-udc.yaml

diff --git a/Documentation/devicetree/bindings/usb/aspeed,ast2600-udc.yaml b/Documentation/devicetree/bindings/usb/aspeed,ast2600-udc.yaml
new file mode 100644
index 000000000000..c3b6be3d8002
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/aspeed,ast2600-udc.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2020 Facebook Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/aspeed,ast2600-udc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED USB 2.0 Device Controller
+
+maintainers:
+  - Neal Liu <neal_liu@aspeedtech.com>
+
+description: |+
+  The ASPEED USB 2.0 Device Controller implements 1 control endpoint and
+  4 generic endpoints for AST260x.
+
+  Supports independent DMA channel for each generic endpoint.
+  Supports 32/256 stages descriptor mode for all generic endpoints.
+
+properties:
+  compatible:
+    enum:
+      - aspeed,ast2600-udc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/aspeed-clock.h>
+    udc: usb@1e6a2000 {
+        compatible = "aspeed,ast2600-udc";
+        reg = <0x1e6a2000 0x300>;
+        interrupts = <9>;
+        clocks = <&syscon ASPEED_CLK_GATE_USBPORT2CLK>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_usb2bd_default>;
+    };
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

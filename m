Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 094D4BDFEF3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 19:48:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1389845737
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 17:48:13 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id D9BB145737
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 17:47:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=kF0mYjOV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 28781626F7;
	Wed, 15 Oct 2025 17:47:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94A53C4CEF8;
	Wed, 15 Oct 2025 17:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760550473;
	bh=zP3ASKKYt+IAMTwO8/NP5vwen6r6D7nE2UfM/VAy5/A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kF0mYjOVuMG6XvSW4EDvE9Y1qxt95ubyVQRFi/DNr+i2hqk8Tb/8JinQwiKfwF1Cu
	 OxytE/dfw9IgiI2fyoobGTieMn5tso4ILuZ5B7RxCzqNv8Egh9R/WYVUgrqIkezaez
	 Y9lw70fK133FytIqQE7I+/7abVvklM2NO/B+eViYBNSkAgcyxN4RsL3oXd4Y2XYIK4
	 FsKt80SIL6E6doPatKaSZN8Eao2ETqFBKQ7w9bewHg+gAD+s6fMb6Q8vAGKlAeOL2n
	 OLIOrsvwgMIkKGJNbwuQR7iYDV4BcVeXWZBMm++xw8B2C8b6o/9WIg4dVntnAHNXUN
	 LezJY+mP7Kmhg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Wed, 15 Oct 2025 12:47:39 -0500
MIME-Version: 1.0
Message-Id: <20251015-ethos-v4-1-81025a3dcbf3@kernel.org>
References: <20251015-ethos-v4-0-81025a3dcbf3@kernel.org>
In-Reply-To: <20251015-ethos-v4-0-81025a3dcbf3@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Frank Li <Frank.li@nxp.com>,
 Sui Jingfeng <sui.jingfeng@linux.dev>
X-Mailer: b4 0.15-dev
X-Rspamd-Queue-Id: D9BB145737
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,nxp.com,linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QNN37QZ433MJVZK45VA5TS26Z5GEXMXN
X-Message-ID-Hash: QNN37QZ433MJVZK45VA5TS26Z5GEXMXN
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Frank Li <Frank.Li@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v4 1/2] dt-bindings: npu: Add Arm Ethos-U65/U85
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QNN37QZ433MJVZK45VA5TS26Z5GEXMXN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add a binding schema for Arm Ethos-U65/U85 NPU. The Arm Ethos-U NPUs are
designed for edge AI inference applications.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/npu/arm,ethos.yaml         | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/Documentation/devicetree/bindings/npu/arm,ethos.yaml b/Documentation/devicetree/bindings/npu/arm,ethos.yaml
new file mode 100644
index 000000000000..716c4997f976
--- /dev/null
+++ b/Documentation/devicetree/bindings/npu/arm,ethos.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/npu/arm,ethos.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Ethos U65/U85
+
+maintainers:
+  - Rob Herring <robh@kernel.org>
+
+description: >
+  The Arm Ethos-U NPUs are designed for IoT inference applications. The NPUs
+  can accelerate 8-bit and 16-bit integer quantized networks:
+
+    Transformer networks (U85 only)
+    Convolutional Neural Networks (CNN)
+    Recurrent Neural Networks (RNN)
+
+  Further documentation is available here:
+
+    U65 TRM: https://developer.arm.com/documentation/102023/
+    U85 TRM: https://developer.arm.com/documentation/102685/
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - fsl,imx93-npu
+          - const: arm,ethos-u65
+      - items:
+          - {}
+          - const: arm,ethos-u85
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: core
+      - const: apb
+
+  power-domains:
+    maxItems: 1
+
+  sram:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/imx93-clock.h>
+
+    npu@4a900000 {
+        compatible = "fsl,imx93-npu", "arm,ethos-u65";
+        reg = <0x4a900000 0x1000>;
+        interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
+        power-domains = <&mlmix>;
+        clocks = <&clk IMX93_CLK_ML>, <&clk IMX93_CLK_ML_APB>;
+        clock-names = "core", "apb";
+        sram = <&sram>;
+    };
+...

-- 
2.51.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

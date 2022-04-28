Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5EF5134B8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 15:17:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DB8A47FCA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Apr 2022 13:17:12 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1115.securemx.jp [210.130.202.157])
	by lists.linaro.org (Postfix) with ESMTPS id 986FF47FCE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Apr 2022 13:16:56 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1115) id 23SDGYqj005923; Thu, 28 Apr 2022 22:16:34 +0900
X-Iguazu-Qid: 2wGqsJ4YeyRgLo03tY
X-Iguazu-QSIG: v=2; s=0; t=1651151794; q=2wGqsJ4YeyRgLo03tY; m=SYvkMgjPSSPEN+Bzc42nEfYVR1JFYB06GyV1TrVNbLA=
Received: from imx12-a.toshiba.co.jp (imx12-a.toshiba.co.jp [61.202.160.135])
	by relay.securemx.jp (mx-mr1111) id 23SDGXxC011000
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 28 Apr 2022 22:16:33 +0900
X-SA-MID: 3363559
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Rob Herring <robh+dt@kernel.org>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu, 28 Apr 2022 22:11:25 +0900
X-TSB-HOP2: ON
Message-Id: <20220428131128.5053-2-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220428131128.5053-1-yuji2.ishikawa@toshiba.co.jp>
References: <20220428131128.5053-1-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: 3HUASHJEAQQXHF7XWM5TDPSM7DNGXDWE
X-Message-ID-Hash: 3HUASHJEAQQXHF7XWM5TDPSM7DNGXDWE
X-MailFrom: yuji2.ishikawa@toshiba.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, yuji2.ishikawa@toshiba.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dt-bindings: soc: visconti: Add Toshiba Visconti DNN image processing accelerator bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HUASHJEAQQXHF7XWM5TDPSM7DNGXDWE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This commit adds the Device Tree binding documentation that allows to describe
the DNN image processing accelerator found in Toshiba Visconti SoCs.

Signed-off-by: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Reviewed-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 .../soc/visconti/toshiba,visconti-dnn.yaml    | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-dnn.yaml

diff --git a/Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-dnn.yaml b/Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-dnn.yaml
new file mode 100644
index 000000000..28576a55e
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-dnn.yaml
@@ -0,0 +1,54 @@
+# SPDX-LIcense-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/visconti/toshiba,visconti-dnn.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Toshiba Visconti DNN image processing accelerator
+
+maintainers:
+  - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
+
+description: |
+  Toshiba Visconti DNN image processing accelerator.
+  Visconti5 have up to 2 DNN units.
+
+properties:
+  compatible:
+    items:
+      - const: toshiba,visconti-dnn
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  index:
+    enum: [0, 1]
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - index
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        dnn0: dnn@14280000 {
+            compatible = "toshiba,visconti-dnn";
+            reg = <0 0x14280000 0 0x8000>;
+            interrupts = <GIC_SPI 201 IRQ_TYPE_LEVEL_HIGH>;
+            index = <0>;
+            status = "disabled";
+        };
+    };
-- 
2.17.1


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

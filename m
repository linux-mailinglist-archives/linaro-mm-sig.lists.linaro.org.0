Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B9253511153
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 08:40:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EAE7D48016
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 06:40:04 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
	by lists.linaro.org (Postfix) with ESMTPS id C8D34401B0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Apr 2022 07:25:57 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 23J7PcOm025490; Tue, 19 Apr 2022 16:25:38 +0900
X-Iguazu-Qid: 2wHHhfqWLDxBrcVTZM
X-Iguazu-QSIG: v=2; s=0; t=1650353137; q=2wHHhfqWLDxBrcVTZM; m=qld4KKnohk1Jeo9EqwachByRzp2OONvk4gUUuBo3O9M=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
	by relay.securemx.jp (mx-mr1111) id 23J7PaSC037990
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 19 Apr 2022 16:25:36 +0900
X-SA-MID: 36308327
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Tue, 19 Apr 2022 16:20:15 +0900
X-TSB-HOP2: ON
Message-Id: <20220419072018.30057-2-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220419072018.30057-1-yuji2.ishikawa@toshiba.co.jp>
References: <20220419072018.30057-1-yuji2.ishikawa@toshiba.co.jp>
X-MailFrom: yuji2.ishikawa@toshiba.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DN46UCHONZUCKZZJGEMWCXJ7QNOZQCEF
X-Message-ID-Hash: DN46UCHONZUCKZZJGEMWCXJ7QNOZQCEF
X-Mailman-Approved-At: Wed, 27 Apr 2022 06:39:59 +0000
CC: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, yuji2.ishikawa@toshiba.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 1/4] dt-bindings: soc: visconti: Add Toshiba Visconti AFFINE image processing accelerator bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DN46UCHONZUCKZZJGEMWCXJ7QNOZQCEF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Adds the Device Tree binding documentation that allows to describe
the AFFINE image processing accelerator found in Toshiba Visconti SoCs.

Signed-off-by: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Reviewed-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 .../soc/visconti/toshiba,visconti-affine.yaml | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-affine.yaml

diff --git a/Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-affine.yaml b/Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-affine.yaml
new file mode 100644
index 000000000..a446e1c4f
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/visconti/toshiba,visconti-affine.yaml
@@ -0,0 +1,53 @@
+# SPDX-LIcense-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/visconti/toshiba,visconti-affine.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Toshiba Visconti AFFINE image processing accelerator
+
+maintainers:
+  - Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
+
+description: |
+  Toshiba Visconti AFFINE image processing accelerator provides affine transform, lens undistortion and LUT transform.
+  Visconti5 have up to 2 AFFINE units.
+
+properties:
+  compatible:
+    items:
+      - const: toshiba,visconti-affine
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
+        affine0: affine@14000000 {
+            compatible = "toshiba,visconti-affine";
+            reg = <0 0x14000000 0 0x8000>;
+            interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
+            index = <0>;
+            status = "disabled";
+        };
+    };
-- 
2.17.1


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

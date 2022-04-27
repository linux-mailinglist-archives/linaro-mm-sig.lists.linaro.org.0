Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A69CB51185A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 15:29:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D99D947FC5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 13:29:32 +0000 (UTC)
Received: from mo-csw.securemx.jp (mo-csw1114.securemx.jp [210.130.202.156])
	by lists.linaro.org (Postfix) with ESMTPS id 3CDEE47FB8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 27 Apr 2022 13:29:21 +0000 (UTC)
Received: by mo-csw.securemx.jp (mx-mo-csw1114) id 23RDSqVA009238; Wed, 27 Apr 2022 22:28:53 +0900
X-Iguazu-Qid: 2wGr4Oa00fx9XzPiVd
X-Iguazu-QSIG: v=2; s=0; t=1651066132; q=2wGr4Oa00fx9XzPiVd; m=nwZjeysEFhDZNLuNwJjFM27BefwGI4Ax4ET4+IPW4ws=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
	by relay.securemx.jp (mx-mr1110) id 23RDSp6v026492
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 27 Apr 2022 22:28:51 +0900
X-SA-MID: 36913145
From: Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
To: Rob Herring <robh+dt@kernel.org>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Wed, 27 Apr 2022 22:23:42 +0900
X-TSB-HOP2: ON
Message-Id: <20220427132345.27327-2-yuji2.ishikawa@toshiba.co.jp>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220427132345.27327-1-yuji2.ishikawa@toshiba.co.jp>
References: <20220427132345.27327-1-yuji2.ishikawa@toshiba.co.jp>
Message-ID-Hash: 3GHLPGINB2EJPV6X5QADM6N4LH6F46X2
X-Message-ID-Hash: 3GHLPGINB2EJPV6X5QADM6N4LH6F46X2
X-MailFrom: yuji2.ishikawa@toshiba.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, yuji2.ishikawa@toshiba.co.jp
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 1/4] dt-bindings: soc: visconti: Add Toshiba Visconti AFFINE image processing accelerator bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3GHLPGINB2EJPV6X5QADM6N4LH6F46X2/>
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

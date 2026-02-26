Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MNtJw4V4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 528874122D9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:57:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0279245415
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:57:49 +0000 (UTC)
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	by lists.linaro.org (Postfix) with ESMTPS id 1F7EB3F987
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 13:41:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=pass (policy=none) header.from=nxp.com;
	spf=pass (lists.linaro.org: domain of ruxandra.radulescu@nxp.com designates 92.121.34.13 as permitted sender) smtp.mailfrom=ruxandra.radulescu@nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 55E461A14A2;
	Thu, 26 Feb 2026 14:41:01 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 405991A14A9;
	Thu, 26 Feb 2026 14:41:01 +0100 (CET)
Received: from lsv15149.swis.ro-buh01.nxp.com (lsv15149.swis.ro-buh01.nxp.com [10.162.246.145])
	by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A45A2035B;
	Thu, 26 Feb 2026 14:40:59 +0100 (CET)
From: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
Date: Thu, 26 Feb 2026 15:40:42 +0200
MIME-Version: 1.0
Message-Id: <20260226-neutron-v1-3-46eccb3bb50a@nxp.com>
References: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
In-Reply-To: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
To: Oded Gabbay <ogabbay@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772113256; l=3009;
 i=ruxandra.radulescu@nxp.com; s=20260204; h=from:subject:message-id;
 bh=EX2bIZOSowP7el+n7llkL5Myq7aMQsIPLE13DNgNaf0=;
 b=tPxIFYSc7cbZSar8MAZ2vi5SJTPMRU/MOwR6ASpB1hIm7foVZJIzow1x+B7uPluDrCqVmZjC0
 UbPbT0uDRp6D2R7LlgfcgzTj+tB0JQdwp92nBdYyDP1Jra2XEl0bXlE
X-Developer-Key: i=ruxandra.radulescu@nxp.com; a=ed25519;
 pk=zoq4b4OYR0c4faAH97xoTxdr6vfR8OvPbS+Cx0XhIBY=
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Bar: ---
X-MailFrom: ruxandra.radulescu@nxp.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QF2TWD3MDEMW2Q7TVLV3I6WMST4GBICL
X-Message-ID-Hash: QF2TWD3MDEMW2Q7TVLV3I6WMST4GBICL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:25 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>, Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/9] dt-bindings: npu: Add bindings for NXP Neutron
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QF2TWD3MDEMW2Q7TVLV3I6WMST4GBICL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1179];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ruxandra.radulescu@nxp.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.923];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,lists.linaro.org:helo,lists.linaro.org:rdns,nxp.com:mid,nxp.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 528874122D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the bindings for Neutron, a Neural Processing Unit from NXP.

Signed-off-by: Jiwei Fu <jiwei.fu@nxp.com>
Signed-off-by: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
---
 .../devicetree/bindings/npu/nxp,imx95-neutron.yaml | 95 ++++++++++++++++++++++
 1 file changed, 95 insertions(+)

diff --git a/Documentation/devicetree/bindings/npu/nxp,imx95-neutron.yaml b/Documentation/devicetree/bindings/npu/nxp,imx95-neutron.yaml
new file mode 100644
index 000000000000..ba1f6851866b
--- /dev/null
+++ b/Documentation/devicetree/bindings/npu/nxp,imx95-neutron.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/npu/nxp,imx95-neutron.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP Neutron NPU
+
+maintainers:
+  - Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
+  - Jiwei Fu <jiwei.fu@nxp.com>
+
+description:
+  Neutron is an NPU from NXP targeting edge AI inference applications.
+  Initially supported on i.MX95 SoCs.
+
+properties:
+  compatible:
+    enum:
+      - nxp,imx95-neutron
+
+  reg:
+    items:
+      - description: Register space
+      - description: Instruction area of the TCM space
+      - description: Data area of the TCM space
+
+  reg-names:
+    items:
+      - const: regs
+      - const: itcm
+      - const: dtcm
+
+  memory-region:
+    description:
+      Phandle referencing a "shared-dma-pool" to be used for Neutron
+      inference buffers, which need to be 1MB aligned.
+
+      The memory region must be defined with alignment of 1MB and size
+      should be large enough to accommodate the targeted ML models. It
+      should be marked as reusable.
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 3
+
+  clock-names:
+    minItems: 2
+    items:
+      - const: npu
+      - const: npu_apb
+      - const: npu_cgc
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - memory-region
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      neutron@4ab00000 {
+              compatible = "nxp,imx95-neutron";
+              reg = <0x0 0x4ab00000 0x0 0x00000400>,
+                    <0x0 0x4AB10000 0x0 0x00010000>,
+                    <0x0 0x4AB08000 0x0 0x00008000>;
+              reg-names = "regs", "itcm", "dtcm";
+              memory-region = <&neutron_pool>;
+              interrupts = <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>;
+              clocks = <&scmi_clk 68>, <&scmi_clk 67>;
+              clock-names = "npu", "npu_apb";
+              power-domains = <&scmi_devpd 20>;
+      };
+    };
+...

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

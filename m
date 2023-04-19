Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 554006F55C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:16:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69F764030C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:16:29 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by lists.linaro.org (Postfix) with ESMTPS id 2EA5D3E923
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 00:10:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=KshvSsuF;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.219.41 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id op30so19498277qvb.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 17:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681863033; x=1684455033;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x24IGLY9CVBMTbD8Qpvp/dsz7w6tF7pOSZxQkUNrMtE=;
        b=KshvSsuFZS3y13v1ZRqbqOghv6PiMcSMtZwjpLe+PyX9XUgJkdCb73ST5GILY+QZCk
         i9SCXhUQaCUr++cK37HGZdaj7mNqt6bTvtKBS0gdZOuM4eUwsm9Uj0rHAFExXMj0fJmk
         3s4LvRbsUSmumgNoWgmjRKoyGUKEdlaSXdYKirG3IgDiyhu3V85JFYx5x+IIjOzfprvB
         nZPxvDS/xmQhZq0hgwPeL3Hj9wBQGNjaXjalh44JmT7KDPm34/rl/nkaM0LXvVfnHwmp
         hP0Nr9jAWHKbLNvsbDFmdfc3sHthCrknAb++tKDrHqxweIi8JbBEiu0kB0JXP+iMdd5K
         J3zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681863033; x=1684455033;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x24IGLY9CVBMTbD8Qpvp/dsz7w6tF7pOSZxQkUNrMtE=;
        b=jt2wxhNhLSHE4TckVB4AupE7srfFWxwGw9IHStDXfgd17DJC/ytJpPtF4cFkTfXflm
         ntqnl2McxBGq25+EBF0zjTpEhDfgPi8EX909iNXzVcHPXS/Ok3zD9bx0bx/JYJ9+YBVO
         7NhBJeqPZpmwjvKreJ7P7PbePGta9TpQ1bR8FjnOCO17cdDC1mEZBgyEScDcGXqZQS4S
         l5UlBulUuMjLZl+7BkenZ6zXw8gFRk0j+efgs5Fp9WX6YABt8hiSLldX8aZzqsyVECWv
         Rp0rbR7CJ2+lZAXCmmc8dh4DYQP1dRRITSupRuGmXOchyqUBzsFcf4xtCcr/91BeLG02
         b74A==
X-Gm-Message-State: AAQBX9cGHIwqWqSmaAZtxVc3rmPV3alE7PzNmEzGm+iYe/cAgULWTxxi
	wW2dfMjVIH5Q7lDeuroJA0k=
X-Google-Smtp-Source: AKy350ZSx682zuDgvKTodV2CK7QDBAFVawTHif5JDzhca5MOxfNKZX5KI3ypZElcbz3e2JL3OPdkeQ==
X-Received: by 2002:a05:6214:c8d:b0:5ef:5250:c5e0 with SMTP id r13-20020a0562140c8d00b005ef5250c5e0mr21737097qvr.7.1681863032718;
        Tue, 18 Apr 2023 17:10:32 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d14-20020a37680e000000b0074d1b6a8187sm2639035qkc.130.2023.04.18.17.10.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Apr 2023 17:10:32 -0700 (PDT)
From: Justin Chen <justinpopo6@gmail.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	bcm-kernel-feedback-list@broadcom.com
Date: Tue, 18 Apr 2023 17:10:13 -0700
Message-Id: <1681863018-28006-2-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.41:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2EA5D3E923
X-Spamd-Bar: -
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F4H52ZDZRTCTAQTL5XJFCVUIUY3S7PQL
X-Message-ID-Hash: F4H52ZDZRTCTAQTL5XJFCVUIUY3S7PQL
X-Mailman-Approved-At: Wed, 03 May 2023 10:15:29 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, Justin Chen <justinpopo6@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 1/6] dt-bindings: net: Brcm ASP 2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F4H52ZDZRTCTAQTL5XJFCVUIUY3S7PQL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Florian Fainelli <f.fainelli@gmail.com>

Add a binding document for the Broadcom ASP 2.0 Ethernet
controller.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Justin Chen <justinpopo6@gmail.com>
---
 .../devicetree/bindings/net/brcm,asp-v2.0.yaml     | 146 +++++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml

diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
new file mode 100644
index 000000000000..3817d722244f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/net/brcm,asp-v2.0.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Broadcom ASP 2.0 Ethernet controller
+
+maintainers:
+  - Justin Chen <justinpopo6@gmail.com>
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+description: Broadcom Ethernet controller first introduced with 72165
+
+properties:
+  '#address-cells':
+    const: 1
+  '#size-cells':
+    const: 1
+
+  compatible:
+    enum:
+      - brcm,bcm72165-asp-v2.0
+      - brcm,asp-v2.0
+      - brcm,asp-v2.1
+
+  reg:
+    maxItems: 1
+    description: ASP registers
+
+  ranges: true
+
+  interrupts:
+    minItems: 1
+    items:
+      - description: RX/TX interrupt
+      - description: Port 0 Wake-on-LAN
+      - description: Port 1 Wake-on-LAN
+
+  clocks:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: Phandle to clock controller
+
+  clock-names:
+    const: sw_asp
+
+  ethernet-ports:
+    type: object
+    properties:
+      '#address-cells':
+        const: 1
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      "^port@[0-9]+$":
+        type: object
+
+        $ref: ethernet-controller.yaml#
+
+        properties:
+          reg:
+            maxItems: 1
+            description: Port number
+
+          channel:
+            maxItems: 1
+            description: ASP channel number
+
+        required:
+          - reg
+          - channel
+
+patternProperties:
+  "^mdio@[0-9a-f]+$":
+    type: object
+    $ref: "brcm,unimac-mdio.yaml"
+
+    description:
+      ASP internal UniMAC MDIO bus
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    asp@9c00000 {
+        compatible = "brcm,asp-v2.0";
+        reg = <0x9c00000 0x1fff14>;
+        interrupts = <0x0 0x33 0x4>;
+        ranges;
+        clocks = <&scmi 14>;
+        clock-names = "sw_asp";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        mdio@c614 {
+            compatible = "brcm,asp-v2.0-mdio";
+            reg = <0xc614 0x8>;
+            reg-names = "mdio";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            phy0: ethernet-phy@1 {
+                reg = <1>;
+            };
+       };
+
+        mdio@ce14 {
+            compatible = "brcm,asp-v2.0-mdio";
+            reg = <0xce14 0x8>;
+            reg-names = "mdio";
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            phy1: ethernet-phy@1 {
+                reg = <1>;
+            };
+        };
+
+        ethernet-ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                channel = <8>;
+                phy-mode = "rgmii";
+                phy-handle = <&phy0>;
+            };
+
+            port@1 {
+                reg = <1>;
+                channel = <9>;
+                phy-mode = "rgmii";
+                phy-handle = <&phy1>;
+            };
+        };
+    };
-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

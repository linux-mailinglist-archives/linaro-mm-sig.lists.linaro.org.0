Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C1F5323D3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:14:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4086F3F8D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:14:51 +0000 (UTC)
Received: from twspam01.aspeedtech.com (twspam01.aspeedtech.com [211.20.114.71])
	by lists.linaro.org (Postfix) with ESMTPS id 8BA4B404B0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 06:58:24 +0000 (UTC)
Received: from mail.aspeedtech.com ([192.168.0.24])
	by twspam01.aspeedtech.com with ESMTP id 24D6iAZJ026760;
	Fri, 13 May 2022 14:44:11 +0800 (GMT-8)
	(envelope-from neal_liu@aspeedtech.com)
Received: from localhost.localdomain (192.168.10.10) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 13 May
 2022 14:57:33 +0800
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
Date: Fri, 13 May 2022 14:57:27 +0800
Message-ID: <20220513065728.857722-3-neal_liu@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513065728.857722-1-neal_liu@aspeedtech.com>
References: <20220513065728.857722-1-neal_liu@aspeedtech.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.10.10]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 24D6iAZJ026760
X-MailFrom: neal_liu@aspeedtech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2JRDW4XOBT3RNSKXKGKMMG3OYFWRMXEN
X-Message-ID-Hash: 2JRDW4XOBT3RNSKXKGKMMG3OYFWRMXEN
X-Mailman-Approved-At: Tue, 24 May 2022 07:14:47 +0000
CC: Neal Liu <neal_liu@aspeedtech.com>, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, BMC-SW@aspeedtech.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/3] ARM: dts: aspeed: Add USB2.0 device controller node
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2JRDW4XOBT3RNSKXKGKMMG3OYFWRMXEN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add USB2.0 device controller(udc) node to device tree
for AST2600.

Signed-off-by: Neal Liu <neal_liu@aspeedtech.com>
---
 arch/arm/boot/dts/aspeed-g6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 3d5ce9da42c3..5517313eb2b5 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -298,6 +298,16 @@ vhub: usb-vhub@1e6a0000 {
 			status = "disabled";
 		};
 
+		udc: udc@1e6a2000 {
+			compatible = "aspeed,ast2600-udc";
+			reg = <0x1e6a2000 0x300>;
+			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_USBPORT2CLK>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_usb2bd_default>;
+			status = "disabled";
+		};
+
 		apb {
 			compatible = "simple-bus";
 			#address-cells = <1>;
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

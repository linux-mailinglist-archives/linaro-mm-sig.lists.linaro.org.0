Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E2F7D691F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 12:41:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF0C140BA0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 10:41:29 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lists.linaro.org (Postfix) with ESMTP id E4D813F0B4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Oct 2023 10:40:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.71 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 386FC828C;
	Wed, 25 Oct 2023 18:39:59 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:59 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 25 Oct
 2023 18:39:58 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
Date: Wed, 25 Oct 2023 18:39:53 +0800
Message-ID: <20231025103957.3776-3-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231025103957.3776-1-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E4D813F0B4
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[30];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	TAGGED_RCPT(0.00)[dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[starfivetech.com];
	URIBL_BLOCKED(0.00)[1.192.155.192:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_XOIP(0.00)[];
	DNSWL_BLOCKED(0.00)[175.102.18.54:received,180.164.60.184:received];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com]
X-Rspamd-Action: no action
Message-ID-Hash: ELDXFL3X2CSH3A6QTOZTBCQ5QVFFG2GW
X-Message-ID-Hash: ELDXFL3X2CSH3A6QTOZTBCQ5QVFFG2GW
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao <keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 2/6] riscv: dts: starfive: jh7110: add dc controller and hdmi node
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ELDXFL3X2CSH3A6QTOZTBCQ5QVFFG2GW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add the dc controller and hdmi node for the Starfive JH7110 SoC.

Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
---
 .../jh7110-starfive-visionfive-2.dtsi         | 91 +++++++++++++++++++
 arch/riscv/boot/dts/starfive/jh7110.dtsi      | 41 +++++++++
 2 files changed, 132 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index de0f40a8b..97909b6d2 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -31,6 +31,25 @@ memory@40000000 {
 		reg = <0x0 0x40000000 0x1 0x0>;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* vout applies for space from this CMA
+		 * Without this CMA reservation,
+		 * vout may not work properly.
+		 */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0x0 0x20000000>;
+			alignment = <0x0 0x1000>;
+			alloc-ranges = <0x0 0x70000000 0x0 0x20000000>;
+			linux,cma-default;
+		};
+	};
+
 	gpio-restart {
 		compatible = "gpio-restart";
 		gpios = <&sysgpio 35 GPIO_ACTIVE_HIGH>;
@@ -231,6 +250,41 @@ GPOEN_DISABLE,
 			slew-rate = <0>;
 		};
 	};
+
+	hdmi_pins: hdmi-0 {
+		hdmi-scl-pins {
+			pinmux = <GPIOMUX(0, GPOUT_SYS_HDMI_DDC_SCL,
+					     GPOEN_SYS_HDMI_DDC_SCL,
+					     GPI_SYS_HDMI_DDC_SCL)>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		hdmi-sda-pins {
+			pinmux = <GPIOMUX(1, GPOUT_SYS_HDMI_DDC_SDA,
+					     GPOEN_SYS_HDMI_DDC_SDA,
+					     GPI_SYS_HDMI_DDC_SDA)>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		hdmi-cec-pins {
+			pinmux = <GPIOMUX(14, GPOUT_SYS_HDMI_CEC_SDA,
+					     GPOEN_SYS_HDMI_CEC_SDA,
+					     GPI_SYS_HDMI_CEC_SDA)>;
+			input-enable;
+			bias-pull-up;
+		};
+
+		hdmi-hpd-pins {
+			pinmux = <GPIOMUX(15, GPOUT_HIGH,
+					     GPOEN_ENABLE,
+					     GPI_SYS_HDMI_HPD)>;
+			input-enable;
+			bias-disable; /* external pull-up */
+		};
+	};
+
 };
 
 &uart0 {
@@ -254,3 +308,40 @@ &U74_3 {
 &U74_4 {
 	cpu-supply = <&vdd_cpu>;
 };
+
+&voutcrg {
+	status = "okay";
+};
+
+&display {
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_pins>;
+
+	hdmi_in: port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		hdmi_in_dc: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&dc_out_hdmi>;
+		};
+	};
+};
+
+&dc8200 {
+	status = "okay";
+
+	dc_out: port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		dc_out_hdmi: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&hdmi_in_dc>;
+		};
+
+	};
+};
diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 0005fa163..1670452fb 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -282,6 +282,11 @@ tdm_ext: tdm-ext-clock {
 		#clock-cells = <0>;
 	};
 
+	display: display-subsystem {
+		compatible = "starfive,display-subsystem";
+		ports = <&dc_out>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
@@ -613,5 +618,41 @@ voutcrg: clock-controller@295c0000 {
 			#reset-cells = <1>;
 			power-domains = <&pwrc JH7110_PD_VOUT>;
 		};
+
+		dc8200: lcd-controller@29400000 {
+			compatible = "starfive,jh7110-dc8200";
+			reg = <0x0 0x29400000 0x0 0x100>,
+			      <0x0 0x29400800 0x0 0x2000>;
+			interrupts = <95>;
+			clocks = <&syscrg JH7110_SYSCLK_NOC_BUS_DISP_AXI>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_PIX0>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_PIX1>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_CORE>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_AXI>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_AHB>,
+				<&hdmitx0_pixelclk>,
+				<&voutcrg JH7110_VOUTCLK_DC8200_PIX>;
+			clock-names = "noc_bus", "channel0", "channel1",
+				      "dc_core", "axi_core", "ahb",
+				      "hdmi_tx", "dc_parent";
+			resets = <&voutcrg JH7110_VOUTRST_DC8200_AXI>,
+				 <&voutcrg JH7110_VOUTRST_DC8200_AHB>,
+				 <&voutcrg JH7110_VOUTRST_DC8200_CORE>;
+			reset-names = "axi","ahb", "core";
+		};
+
+		hdmi: hdmi@29590000 {
+			compatible = "starfive,jh7110-inno-hdmi";
+			reg = <0x0 0x29590000 0x0 0x4000>;
+			interrupts = <99>;
+
+			clocks = <&voutcrg JH7110_VOUTCLK_HDMI_TX_SYS>,
+				 <&voutcrg JH7110_VOUTCLK_HDMI_TX_MCLK>,
+				 <&voutcrg JH7110_VOUTCLK_HDMI_TX_BCLK>,
+				 <&hdmitx0_pixelclk>;
+			clock-names = "sysclk", "mclk", "bclk", "pclk";
+			resets = <&voutcrg JH7110_VOUTRST_HDMI_TX_HDMI>;
+			#sound-dai-cells = <0>;
+		};
 	};
 };
-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

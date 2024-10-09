Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEE399771C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Oct 2024 23:00:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B0E43F3DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Oct 2024 21:00:26 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 39E1D3F3DB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Oct 2024 21:00:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UL057BFp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5EA215C5D52;
	Wed,  9 Oct 2024 21:00:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23CD0C4CEC3;
	Wed,  9 Oct 2024 21:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728507607;
	bh=5lbw1fw2F0YDO/Ghx0pIMUv4r43RfjdulBFeOF1eqBI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UL057BFpi/mpH0RVD0VDU6ua6KJ7efybWqE6QHGA4RNfbdyyG2QhVejnrUHTyyhKd
	 iPx8NwWcLmiy5zxXSqEe9WgKjzQrtvmwmSd7Necg62Hm/OCNLNDQBRSztwbzRd3ONy
	 LcifS0XSvchrkkfeTsq2Jhem9s4wSz8itsuUyz9KlJj9pCExfRtY8KD31qtpqpC71k
	 R0sApesTcTY4x/fSeCOIVdt2Q2HDEAc0rRV16/6235YmRIbTglf7qeQCfz3Sogn6aV
	 BieWTl5TWrdVUsuRvUUdOWjiRtCiaikSD4F3lLyEuKSQre5o6EhihTCHRL2XLcrsiz
	 j5I2ybnt/SKmA==
Date: Wed, 9 Oct 2024 16:00:06 -0500
From: Rob Herring <robh@kernel.org>
To: Shu-hsiang Yang <Shu-hsiang.Yang@mediatek.com>
Message-ID: <20241009210006.GA643988-robh@kernel.org>
References: <20241009111551.27052-1-Shu-hsiang.Yang@mediatek.com>
 <20241009111551.27052-2-Shu-hsiang.Yang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241009111551.27052-2-Shu-hsiang.Yang@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 39E1D3F3DB
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,linaro.org,amd.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,mediatek.com,chromium.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ABX7DL24JCIQAWCTPRNQIMMQ6W2L6PIT
X-Message-ID-Hash: ABX7DL24JCIQAWCTPRNQIMMQ6W2L6PIT
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Konig <christian.koenig@amd.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com, yaya.chang@mediatek.com, teddy.chen@mediatek.com, hidenorik@chromium.org, yunkec@chromium.org, shun-yi.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 01/10] dt-bindings: media: mediatek: add camsys device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ABX7DL24JCIQAWCTPRNQIMMQ6W2L6PIT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Oct 09, 2024 at 07:15:42PM +0800, Shu-hsiang Yang wrote:
> 1. Add camera isp7x module device document
> 2. Add camera interface device document
> 
> Signed-off-by: Shu-hsiang Yang <Shu-hsiang.Yang@mediatek.com>
> ---
>  .../media/mediatek/mediatek,cam-raw.yaml      | 169 ++++++++++++++++++
>  .../media/mediatek/mediatek,cam-yuv.yaml      | 148 +++++++++++++++
>  .../media/mediatek/mediatek,camisp.yaml       |  71 ++++++++
>  .../media/mediatek/mediatek,seninf-core.yaml  | 106 +++++++++++
>  .../media/mediatek/mediatek,seninf.yaml       |  88 +++++++++
>  5 files changed, 582 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek/mediatek,cam-raw.yaml
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek/mediatek,cam-yuv.yaml
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek/mediatek,camisp.yaml
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek/mediatek,seninf-core.yaml
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek/mediatek,seninf.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek/mediatek,cam-raw.yaml b/Documentation/devicetree/bindings/media/mediatek/mediatek,cam-raw.yaml
> new file mode 100644
> index 000000000000..c709e4bf0a18
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek/mediatek,cam-raw.yaml
> @@ -0,0 +1,169 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2024 MediaTek Inc.
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/mediatek/mediatek,cam-raw.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: The cam-raw unit of MediaTek ISP system
> +
> +maintainers:
> +  - Shu-hsiang Yang <shu-hsiang.yang@mediatek.com>
> +  - Shun-yi Wang <shun-yi.wang@mediatek.com>
> +  - Teddy Chen <teddy.chen@mediatek.com>
> +
> +description:
> +  MediaTek cam-raw is the camera RAW processing unit in MediaTek SoC.
> +
> +properties:
> +  compatible:
> +    const: mediatek,cam-raw

Compatibles should be SoC specific.

> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 2

Don't need these. You don't have any child nodes with addresses.

> +
> +  reg:
> +    items:
> +      minItems: 2
> +      maxItems: 4

Drop items.

> +    minItems: 1
> +    maxItems: 2

You have to specify what each region is.

Why does it vary? A h/w block either has register region or it doesn't.

> +
> +  reg-names:
> +    minItems: 1
> +    maxItems: 2

You must define the names.

> +
> +  mediatek,cam-id:
> +    description:
> +      Describes the index of MediaTek cam-raw unit for ISP
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2]

No, we don't put module indices in DT.

> +
> +  mediatek,larbs:
> +    description:
> +      Describes MediaTek bus infrastructure unit for ISP system.
> +      List of phandle to the local arbiters in the current SoCs.
> +      Refer to bindings/memory-controllers/mediatek,smi-larb.yaml.
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    minItems: 1
> +    maxItems: 32
> +
> +  interrupts:
> +    minItems: 1
> +
> +  dma-ranges:
> +    description:
> +      Describes the address information of IOMMU mapping to memory.
> +      Defines six fields for the MediaTek IOMMU extended iova, pa, and size.
> +    minItems: 1
> +
> +  power-domains:
> +    minItems: 1
> +
> +  clocks:
> +    minItems: 4
> +    maxItems: 16

You have to define what the clocks are.

> +
> +  clock-names:
> +    minItems: 4
> +    maxItems: 16
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-parents:
> +    maxItems: 1

Drop. You don't need to document assigned-clocks.

> +
> +  iommus:
> +    description:
> +      Points to the respective IOMMU block with master port as argument, see
> +      Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
> +      Ports are according to the HW.
> +    minItems: 1
> +    maxItems: 32
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - power-domains
> +  - clocks
> +  - clock-names
> +  - iommus
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/mediatek,mt8188-power.h>
> +    #include <dt-bindings/clock/mediatek,mt8188-clk.h>
> +    #include <dt-bindings/memory/mediatek,mt8188-memory-port.h>
> +
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      cam_raw_a@16030000 {
> +        compatible = "mediatek,cam-raw";
> +        reg = <0 0x16030000 0 0x8000>,
> +              <0 0x16038000 0 0x8000>;
> +        reg-names = "base", "inner_base";
> +        mediatek,cam-id = <0>;
> +        mediatek,larbs = <&larb16a>;
> +        interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH 0>;
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        dma-ranges = <0x2 0x0 0x0 0x40000000 0x1 0x0>;
> +        power-domains = <&spm MT8188_POWER_DOMAIN_CAM_SUBA>;
> +        clocks = <&camsys CLK_CAM_MAIN_CAM2MM0_GALS>,
> +            <&camsys CLK_CAM_MAIN_CAM2MM1_GALS>,
> +            <&camsys CLK_CAM_MAIN_CAM2SYS_GALS>,
> +            <&camsys CLK_CAM_MAIN_CAM>,
> +            <&camsys CLK_CAM_MAIN_CAMTG>,
> +            <&camsys_rawa CLK_CAM_RAWA_LARBX>,
> +            <&camsys_rawa CLK_CAM_RAWA_CAM>,
> +            <&camsys_rawa CLK_CAM_RAWA_CAMTG>,
> +            <&topckgen CLK_TOP_CAM>,
> +            <&topckgen CLK_TOP_CAMTG>,
> +            <&topckgen CLK_TOP_CAMTM>;
> +        clock-names = "camsys_cam2mm0_cgpdn",
> +            "camsys_cam2mm1_cgpdn",
> +            "camsys_cam2sys_cgpdn",
> +            "camsys_cam_cgpdn",
> +            "camsys_camtg_cgpdn",
> +            "camsys_rawa_larbx_cgpdn",
> +            "camsys_rawa_cam_cgpdn",
> +            "camsys_rawa_camtg_cgpdn",
> +            "topckgen_top_cam",
> +            "topckgen_top_camtg",
> +            "topckgen_top_camtm";
> +        assigned-clocks = <&topckgen CLK_TOP_CAM>;
> +        assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL_D5>;
> +        iommus = <&vpp_iommu M4U_PORT_L16A_IMGO_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_CQI_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_CQI_R2>,
> +            <&vpp_iommu M4U_PORT_L16A_BPCI_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_LSCI_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_RAWI_R2>,
> +            <&vpp_iommu M4U_PORT_L16A_RAWI_R3>,
> +            <&vpp_iommu M4U_PORT_L16A_UFDI_R2>,
> +            <&vpp_iommu M4U_PORT_L16A_UFDI_R3>,
> +            <&vpp_iommu M4U_PORT_L16A_RAWI_R4>,
> +            <&vpp_iommu M4U_PORT_L16A_RAWI_R5>,
> +            <&vpp_iommu M4U_PORT_L16A_AAI_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_UFDI_R5>,
> +            <&vpp_iommu M4U_PORT_L16A_FHO_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_AAO_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_TSFSO_R1>,
> +            <&vpp_iommu M4U_PORT_L16A_FLKO_R1>;
> +      };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/media/mediatek/mediatek,cam-yuv.yaml b/Documentation/devicetree/bindings/media/mediatek/mediatek,cam-yuv.yaml
> new file mode 100644
> index 000000000000..30dfd5e5ecb1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek/mediatek,cam-yuv.yaml

Similar comments on the rest.

Rob

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EFACD907C1B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jun 2024 21:15:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07F36447A5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Jun 2024 19:15:55 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 55389410D1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Jun 2024 19:15:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gzUl1M7v;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0CAF8CE1D2A;
	Thu, 13 Jun 2024 19:15:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08D34C2BBFC;
	Thu, 13 Jun 2024 19:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718306137;
	bh=PxaAEnheuEVKucWpehjXgII5Lh2MtTO4KEUYjKFPDkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gzUl1M7vQrd2T8fS4MvHteaVlR1Jg0QGhIBkzYQ8VNBg0lTX2rpjj0pAC/eLgQY/e
	 6AQ8nRPOww0PlBfjVxVpfPv9MUz/a0mQzYdvhCAdVq8F4IuRuq8llzgQ03mjrSFBMp
	 +5mY9eOtmwMrpRXlt0ZSoID0xDfxfeHSYywgaxLNGv6CeG735rEWHy6IGMeMIJIypf
	 oxzJxsAAuj5LA/6v4XLmFfCiKZWRQQi9QIOcrOCZGCcOykdQ8kub+XLk8yPJGzfQuE
	 hSFCbKTpsZMyLng1o5+VvInMLoNLXzvLGq8w3AV1ghg3gNmXN1ETemlf7jYNXWkpH6
	 xNhP+d2XQzwLg==
Date: Thu, 13 Jun 2024 13:15:35 -0600
From: Rob Herring <robh@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Message-ID: <20240613191535.GA2319626-robh@kernel.org>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 55389410D1
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[8bytes.org,kernel.org,arm.com,sntech.de,tomeuvizoso.net,gmail.com,ffwll.ch,linux.intel.com,suse.de,pengutronix.de,linaro.org,amd.com,lists.linux.dev,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: EZNKKY43I3AF4VJDZSQKJY45HQ66FWGJ
X-Message-ID-Hash: EZNKKY43I3AF4VJDZSQKJY45HQ66FWGJ
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dt-bindings: mailbox: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EZNKKY43I3AF4VJDZSQKJY45HQ66FWGJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jun 12, 2024 at 03:52:56PM +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.

Subject is wrong. Not a mailbox...

> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  .../devicetree/bindings/npu/rockchip,rknn.yaml     | 123 +++++++++++++++++++++
>  1 file changed, 123 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml b/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml
> new file mode 100644
> index 000000000000..570a4889c11c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/npu/rockchip,rknn.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Neural Processing Unit IP from Rockchip, based on NVIDIA's NVDLA
> +
> +maintainers:
> +  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
> +
> +description: |+
> +  Rockchip IP for accelerating inference of neural networks, based on NVIDIA's open source NVDLA IP.

Wrap at 80.

> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3588-rknn
> +      - const: rockchip,rknn

Is there any evidence this block is 'the same' on multiple chips?

> +
> +  reg:
> +    description: Base registers for NPU cores
> +    minItems: 1
> +    maxItems: 20
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 20
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 20
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clock-rates:
> +    maxItems: 1

You don't need assigned-clocks in schemas.

> +
> +  resets:
> +    minItems: 1
> +    maxItems: 20
> +
> +  reset-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  power-domains:
> +    minItems: 1
> +    maxItems: 20
> +
> +  power-domain-names:
> +    minItems: 1
> +    maxItems: 20
> +
> +  iommus:
> +    items:
> +      - description: IOMMU for all cores
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - assigned-clocks
> +  - assigned-clock-rates

And never should be required.

> +  - resets
> +  - reset-names
> +  - power-domains
> +  - power-domain-names
> +  - iommus
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    bus {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        rknn: npu@fdab0000 {
> +          compatible = "rockchip,rk3588-rknn", "rockchip,rknn";
> +          reg = <0x0 0xfdab0000 0x0 0x9000>,
> +                <0x0 0xfdac0000 0x0 0x9000>,
> +                <0x0 0xfdad0000 0x0 0x9000>;
> +          interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names = "npu0_irq", "npu1_irq", "npu2_irq";

'irq' is redundant. Names with the index are also kind of pointless
unless they can be not contiguous.

> +          clocks = <&scmi_clk 0>, <&cru 1>,
> +                   <&cru 2>, <&cru 3>,
> +                   <&cru 4>, <&cru 5>,
> +                   <&cru 6>, <&cru 7>;
> +          clock-names = "clk_npu",

'clk_' is redundant.

> +                  "aclk0", "aclk1", "aclk2",
> +                  "hclk0", "hclk1", "hclk2",
> +                  "pclk";

Assuming 0, 1, 2 are cores and may vary, put all the fixed clocks first 
and then better to do "aclk0", "hclk0", "aclk1", "hclk1",...

> +          assigned-clocks = <&scmi_clk 0>;
> +          assigned-clock-rates = <200000000>;
> +          resets = <&cru 0>, <&cru 1>, <&cru 2>,
> +                   <&cru 3>, <&cru 4>, <&cru 5>;
> +          reset-names = "srst_a0", "srst_a1", "srst_a2",
> +                        "srst_h0", "srst_h1", "srst_h2";

And similar order here.

> +          power-domains = <&power 0>, <&power 1>, <&power 2>;
> +          power-domain-names = "npu0", "npu1", "npu2";
> +          iommus = <&rknpu_mmu>;
> +          status = "disabled";
> +        };
> +    };
> +...
> 
> -- 
> 2.45.2
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

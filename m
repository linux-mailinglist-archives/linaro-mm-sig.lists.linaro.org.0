Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 928469058DC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Jun 2024 18:33:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 511F8400E1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Jun 2024 16:33:55 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 55A5F3F00E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Jun 2024 16:33:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="A/A94sjn";
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=conor@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E7E65614EA;
	Wed, 12 Jun 2024 16:33:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB245C116B1;
	Wed, 12 Jun 2024 16:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718210024;
	bh=MsFhjqz8K5lYmvWMxKf4C54DDbJX7oTJcO1G+HwBc7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A/A94sjnqFJGlbWmyQihVESPvg0PkCzVg1I4nQ02bgdav01il2R4ztGU6aU1UtPu/
	 Cs7+1wksCp1mR6a3UAo/RXqX6mAnbdQq/EM7sUMrYJITwL+5zYgHjMDVKfrHruUtAS
	 RnKDLhiXr05X3ho1yjomQFzqaIygS4HZ7MG0bWdbCTUtytX3JebZ9DKFwtDhCSolWW
	 1k42z7ipJMuR+qpDMWSijcqlC0NW3Asz1Nu/CewdfjZc/Zxnbo6V6TMnINfI7sBD6Z
	 t8dFtbqr/dU/rB2CciVugp0ioOhNDk0/SW+HlKHKWiZeSic/siy3CXc6X/aAByuPHR
	 KXtLiW/YqCk3A==
Date: Wed, 12 Jun 2024 17:33:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Message-ID: <20240612-thread-throng-a4a14ce0c6e8@spud>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
In-Reply-To: <20240612-6-10-rocket-v1-3-060e48eea250@tomeuvizoso.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 55A5F3F00E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[8bytes.org,kernel.org,arm.com,sntech.de,tomeuvizoso.net,gmail.com,ffwll.ch,linux.intel.com,suse.de,pengutronix.de,linaro.org,amd.com,lists.linux.dev,lists.infradead.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[devicetree.org:url,dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns,tomeuvizoso.net:email];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: VSSOP7YLX7LYL5IGHA4WPCJQIQOYXHN2
X-Message-ID-Hash: VSSOP7YLX7LYL5IGHA4WPCJQIQOYXHN2
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dt-bindings: mailbox: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VSSOP7YLX7LYL5IGHA4WPCJQIQOYXHN2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2963841520013471303=="


--===============2963841520013471303==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XO+bVuaSKPlkL0L7"
Content-Disposition: inline


--XO+bVuaSKPlkL0L7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2024 at 03:52:56PM +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.
>=20
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  .../devicetree/bindings/npu/rockchip,rknn.yaml     | 123 +++++++++++++++=
++++++
>  1 file changed, 123 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn.yaml b/D=
ocumentation/devicetree/bindings/npu/rockchip,rknn.yaml
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

The |+ chomping operator is not needed here.

> +  Rockchip IP for accelerating inference of neural networks, based on NV=
IDIA's open source NVDLA IP.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rockchip,rk3588-rknn
> +      - const: rockchip,rknn
> +
> +  reg:
> +    description: Base registers for NPU cores
> +    minItems: 1
> +    maxItems: 20

For all of these properties, you need to describe the individual items.

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
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        rknn: npu@fdab0000 {

Drop the label here, it's not used.

> +          compatible =3D "rockchip,rk3588-rknn", "rockchip,rknn";
> +          reg =3D <0x0 0xfdab0000 0x0 0x9000>,
> +                <0x0 0xfdac0000 0x0 0x9000>,
> +                <0x0 0xfdad0000 0x0 0x9000>;
> +          interrupts =3D <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names =3D "npu0_irq", "npu1_irq", "npu2_irq";
> +          clocks =3D <&scmi_clk 0>, <&cru 1>,
> +                   <&cru 2>, <&cru 3>,
> +                   <&cru 4>, <&cru 5>,
> +                   <&cru 6>, <&cru 7>;
> +          clock-names =3D "clk_npu",
> +                  "aclk0", "aclk1", "aclk2",
> +                  "hclk0", "hclk1", "hclk2",
> +                  "pclk";
> +          assigned-clocks =3D <&scmi_clk 0>;
> +          assigned-clock-rates =3D <200000000>;
> +          resets =3D <&cru 0>, <&cru 1>, <&cru 2>,
> +                   <&cru 3>, <&cru 4>, <&cru 5>;
> +          reset-names =3D "srst_a0", "srst_a1", "srst_a2",
> +                        "srst_h0", "srst_h1", "srst_h2";
> +          power-domains =3D <&power 0>, <&power 1>, <&power 2>;
> +          power-domain-names =3D "npu0", "npu1", "npu2";
> +          iommus =3D <&rknpu_mmu>;

> +          status =3D "disabled";

A disabled example is useless.

> +        };
> +    };
> +...
>=20
> --=20
> 2.45.2
>=20

--XO+bVuaSKPlkL0L7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmnN4QAKCRB4tDGHoIJi
0mrlAP9TxBQhVfDfgrJQbQo60aSn0bl4zIUbk97NiOySlHcMagD+P4zYal5XytkL
kBIJ4zmFrRDcfCNFjF3XIqExV8y20gI=
=Z+Wc
-----END PGP SIGNATURE-----

--XO+bVuaSKPlkL0L7--

--===============2963841520013471303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2963841520013471303==--

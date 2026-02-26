Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLqNMgePoGlZkwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 19:20:55 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A971AD7DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 19:20:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AAB93F8EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Feb 2026 18:20:54 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id C6B073F8EC
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 18:20:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=mOOL1DeA;
	spf=pass (lists.linaro.org: domain of conor@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=conor@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3DACE40A57;
	Thu, 26 Feb 2026 18:20:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB925C116C6;
	Thu, 26 Feb 2026 18:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772130051;
	bh=ykhRp35CpXtvgun0tnxM65Z2vkAxdIk7nxGE/Pgqc4Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mOOL1DeAx63/HB+MC86W4fw96P/QRAb9wayFDU4UcXOCM6Bp+XJg/H+N3INcDpbLx
	 53Eqx4X9GcbanjYXCYLWW5dmYv4neupTqYrZyLb5KGY734Nh+WzTqEl6/iuXIE9fT8
	 PGAwW0RaM7mTKmaCGnAxDN0iC756h7G5yDAPt+y7CE4fiFku0VlykepQ7C9RCBvBKC
	 OQstgCrIElOsdLOZPsXab2EFNGSNFzskrwu8uIQf8Zhqi/Lm/wDNup43GWg/BPOcqB
	 xRtpS7liIZstIIjVJDPHXQRY/XEC1RNtD9bAcXwkvM5fBOkhH2DlSMm4X8dIWq8ZWI
	 +oW9HF63p1TbA==
Date: Thu, 26 Feb 2026 18:20:44 +0000
From: Conor Dooley <conor@kernel.org>
To: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
Message-ID: <20260226-unthread-reformat-92b855c4acf9@spud>
References: <20260226-neutron-v1-0-46eccb3bb50a@nxp.com>
 <20260226-neutron-v1-3-46eccb3bb50a@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260226-neutron-v1-3-46eccb3bb50a@nxp.com>
X-Spamd-Bar: -----
Message-ID-Hash: IL4ZRWCNDALN4AMWF7RHTCN473LUTRTI
X-Message-ID-Hash: IL4ZRWCNDALN4AMWF7RHTCN473LUTRTI
X-MailFrom: conor@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jiwei Fu <jiwei.fu@nxp.com>, Forrest Shi <xuelin.shi@nxp.com>, Alexandru Taran <alexandru.taran@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/9] dt-bindings: npu: Add bindings for NXP Neutron
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IL4ZRWCNDALN4AMWF7RHTCN473LUTRTI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============9093581323124227168=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,nxp.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.764];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nxp.com:email,4ab00000:email]
X-Rspamd-Queue-Id: 59A971AD7DF
X-Rspamd-Action: no action


--===============9093581323124227168==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ibRsXdeFBfJ4JJq"
Content-Disposition: inline


--7ibRsXdeFBfJ4JJq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 26, 2026 at 03:40:42PM +0200, Ioana Ciocoi-Radulescu wrote:
> Add the bindings for Neutron, a Neural Processing Unit from NXP.
>=20
> Signed-off-by: Jiwei Fu <jiwei.fu@nxp.com>

You are the author and submitter. What did Jiwei do?

> Signed-off-by: Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
> ---
>  .../devicetree/bindings/npu/nxp,imx95-neutron.yaml | 95 ++++++++++++++++=
++++++
>  1 file changed, 95 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/npu/nxp,imx95-neutron.yaml=
 b/Documentation/devicetree/bindings/npu/nxp,imx95-neutron.yaml
> new file mode 100644
> index 000000000000..ba1f6851866b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/npu/nxp,imx95-neutron.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/npu/nxp,imx95-neutron.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP Neutron NPU
> +
> +maintainers:
> +  - Ioana Ciocoi-Radulescu <ruxandra.radulescu@nxp.com>
> +  - Jiwei Fu <jiwei.fu@nxp.com>
> +
> +description:
> +  Neutron is an NPU from NXP targeting edge AI inference applications.
> +  Initially supported on i.MX95 SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nxp,imx95-neutron
> +
> +  reg:
> +    items:
> +      - description: Register space
> +      - description: Instruction area of the TCM space
> +      - description: Data area of the TCM space
> +
> +  reg-names:
> +    items:
> +      - const: regs
> +      - const: itcm
> +      - const: dtcm
> +
> +  memory-region:
> +    description:
> +      Phandle referencing a "shared-dma-pool" to be used for Neutron
> +      inference buffers, which need to be 1MB aligned.
> +
> +      The memory region must be defined with alignment of 1MB and size
> +      should be large enough to accommodate the targeted ML models. It
> +      should be marked as reusable.
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 3
> +
> +  clock-names:
> +    minItems: 2
> +    items:
> +      - const: npu
> +      - const: npu_apb
> +      - const: npu_cgc

clocks should be done as reg is, with the descriptions in the !-names
property. Not really keen on the names either, these are all npu clocks
so the npu prefix is odd.

Additionally, why is the number of clocks variable when you only have
one platform?

> +
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - memory-region
> +  - interrupts

Odd that clocks are not mandatory!

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    bus {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +
> +      neutron@4ab00000 {

"neutron" is not a generic node name. This should be something like
"accelerator" or similar.

pw-bot: changes-requested

Cheers,
Conor.

> +              compatible =3D "nxp,imx95-neutron";
> +              reg =3D <0x0 0x4ab00000 0x0 0x00000400>,
> +                    <0x0 0x4AB10000 0x0 0x00010000>,
> +                    <0x0 0x4AB08000 0x0 0x00008000>;
> +              reg-names =3D "regs", "itcm", "dtcm";
> +              memory-region =3D <&neutron_pool>;
> +              interrupts =3D <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>;
> +              clocks =3D <&scmi_clk 68>, <&scmi_clk 67>;
> +              clock-names =3D "npu", "npu_apb";
> +              power-domains =3D <&scmi_devpd 20>;
> +      };
> +    };
> +...
>=20
> --=20
> 2.34.1
>=20

--7ibRsXdeFBfJ4JJq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaCO/AAKCRB4tDGHoIJi
0hpqAQCmVF7gHL1AHHYNmwRPLmwdR6aB4QNQWo7Hjh4liYM6HwEA6bQx3XTkSL/D
n8+I7p0CSNFlPE3uOoh5v65E8bfM3QA=
=rsXb
-----END PGP SIGNATURE-----

--7ibRsXdeFBfJ4JJq--

--===============9093581323124227168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============9093581323124227168==--

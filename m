Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4709F76B39A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 13:44:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15C3243C58
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 11:44:48 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 3C79A3EBC6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 11:44:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="mIPN/0Fl";
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C64FE61565;
	Tue,  1 Aug 2023 11:44:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0C58C433C8;
	Tue,  1 Aug 2023 11:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690890280;
	bh=dbodHSwIgKgpR708XhGtQfRJC68lUns//VtMieKP9nc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mIPN/0FlrywKoIvGuj184pORf/lD8hhwluBTGh+LkJQPCLledF7sFrBYwGV/lqUS1
	 523bB6efo7rFR3KMuWoIJhQr4Bdcgm9DWfXIm7yGqW2lahDabJWA2iv5BlA4oi9H6I
	 E1J608KbtQ3ZReXwf9vUfA6ouEDGz27xA4f6lSvhMoRmPdcW72n4i/q07LTV+DtI4k
	 khUoBRy5gFFucKponYrQlQ2svb9z4sncsgjZNL59SYR06uNZWn9aiJbYOEgGForKMM
	 ve6Ez9aeP1r+xBgk7F+Ee+2DMbgCNEv20Uz60Ak6AlyqGQ5nxLVj8l+HlfWckYM9BT
	 haR5vtYw/l+kA==
Date: Tue, 1 Aug 2023 13:44:37 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Message-ID: <hsuuag25psaxd6wgtaohpakxi3pppg6xk4w7x64ubwjir5pjb3@vrqns6ptrzzm>
References: <20230801101030.2040-1-keith.zhao@starfivetech.com>
 <20230801101030.2040-3-keith.zhao@starfivetech.com>
MIME-Version: 1.0
In-Reply-To: <20230801101030.2040-3-keith.zhao@starfivetech.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3C79A3EBC6
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[29];
	RCVD_TLS_ALL(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	URIBL_BLOCKED(0.00)[starfivetech.com:email,0:email];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com]
Message-ID-Hash: 7ISQXOEXRAORDF2A3JN5RKTJV2JXVVKR
X-Message-ID-Hash: 7ISQXOEXRAORDF2A3JN5RKTJV2JXVVKR
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuan
 g.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 v1 2/7] dt-bindings: display: Add yamls for JH7110 display system
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ISQXOEXRAORDF2A3JN5RKTJV2JXVVKR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4531421788470124104=="


--===============4531421788470124104==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dan5yrpicomxdg2s"
Content-Disposition: inline


--dan5yrpicomxdg2s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 01, 2023 at 06:10:25PM +0800, Keith Zhao wrote:
> diff --git a/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
> new file mode 100644
> index 000000000..bebe2050c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
> @@ -0,0 +1,107 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/starfive/starfive,jh7110-dc8200.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive display controller
> +
> +description:
> +  The StarFive SoC uses the display controller based on Verisilicon IP
> +  to transfer the image data from a video memory
> +  buffer to an external LCD interface.
> +
> +maintainers:
> +  - Keith Zhao <keith.zhao@starfivetech.com>
> +
> +properties:
> +  compatible:
> +    const: starfive,jh7110-dc8200
> +
> +  reg:
> +    maxItems: 3

What these registers are used for must be documented.

> +
> +  interrupts:
> +    items:
> +      - description: The interrupt will be generated when DC finish one frame
> +
> +  clocks:
> +    items:
> +      - description: Clock for display system noc bus.
> +      - description: Pixel clock for display channel 0.
> +      - description: Pixel clock for display channel 1.
> +      - description: Clock for axi interface of display controller.
> +      - description: Core clock for display controller.
> +      - description: Clock for ahb interface of display controller.
> +      - description: External HDMI pixel clock.
> +      - description: Parent clock for pixel clock
> +
> +  clock-names:
> +    items:
> +      - const: vout_noc_disp
> +      - const: vout_pix0
> +      - const: vout_pix1
> +      - const: vout_axi
> +      - const: vout_core
> +      - const: vout_vout_ahb
> +      - const: hdmitx0_pixel
> +      - const: vout_dc8200

The clock-names should reflect what they are used for on the device, not
what their name is in the system. So it should rather be something like
"noc-bus", "channel0", "channel1", etc.

vout, or the soc model, shouldn't appear there.

> +  resets:
> +    items:
> +      - description: Reset for axi interface of display controller.
> +      - description: Reset for ahb interface of display controller.
> +      - description: Core reset of display controller.
> +
> +  reset-names:
> +    items:
> +      - const: vout_axi
> +      - const: vout_ahb
> +      - const: vout_core

Ditto.

Also, I'm a bit confused, how can a device be attached to both an AXI
and AHB bus? That, plus the multiple registers spaces, make me think
that this is multiple devices glued together in a single node, which
isn't ok.

> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      A port node with endpoint definitions as defined in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    dc8200: lcd-controller@29400000 {
> +        compatible = "starfive,jh7110-dc8200";
> +        reg = <0x29400000 0x100>, <0x29400800 0x2000>, <0x295b0000 0x90>;
> +        interrupts = <95>;
> +        clocks = <&syscrg 60>,
> +               <&voutcrg 7>,
> +               <&voutcrg 8>,
> +               <&voutcrg 4>,
> +               <&voutcrg 5>,
> +               <&voutcrg 6>,
> +               <&hdmitx0_pixelclk>,
> +               <&voutcrg 1>;
> +        clock-names = "vout_noc_disp", "vout_pix0", "vout_pix1",
> +                      "vout_axi", "vout_core", "vout_vout_ahb",
> +                      "hdmitx0_pixel","vout_dc8200";
> +        resets = <&voutcrg 0>, <&voutcrg 1>, <&voutcrg 2>;
> +        reset-names = "vout_axi", "vout_ahb", "vout_core";
> +        dc_out: port {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            dc_out_hdmi: endpoint@0 {
> +                reg = <0>;
> +                remote-endpoint = <&hdmi_in_dc>;
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
> new file mode 100644
> index 000000000..f6927acf6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/starfive/starfive,jh7110-inno-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Starfive JH7110 HDMI controller
> +
> +description:
> +  The StarFive JH7110 SoC uses the HDMI signal transmiter based on innosilicon IP
> +  to generate HDMI signal from its input and transmit the signal to the screen.
> +
> +maintainers:
> +  - Keith Zhao <keith.zhao@starfivetech.com>
> +
> +properties:
> +  compatible:
> +    const: "starfive,jh7110-inno-hdmi"
> +
> +  reg:
> +    minItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: The HDMI hot plug detection interrupt.
> +
> +  clocks:
> +    items:
> +      - description: System clock of HDMI module.
> +      - description: Mclk clock of HDMI audio.
> +      - description: Bclk clock of HDMI audio.
> +      - description: Pixel clock generated by HDMI module.
> +
> +  clock-names:
> +    items:
> +      - const: sysclk
> +      - const: mclk
> +      - const: bclk
> +      - const: pclk
> +
> +  resets:
> +    items:
> +      - description: Reset for HDMI module.
> +
> +  reset-names:
> +    items:
> +      - const: hdmi_tx

If there's only one you don't need reset-names

Maxime

--dan5yrpicomxdg2s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZMjwJQAKCRDj7w1vZxhR
xZBQAPwPOEedmxWZJ27iqcESJscaRD6CHACzB6No3CR39QnaDgD/bbKScqVg2wHb
dTG9DGpqq1ezLI5zfPLEM3steJgVlg4=
=A6ek
-----END PGP SIGNATURE-----

--dan5yrpicomxdg2s--

--===============4531421788470124104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4531421788470124104==--

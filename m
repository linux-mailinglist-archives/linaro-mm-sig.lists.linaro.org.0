Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AA172CC75
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 19:26:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C376E413C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jun 2023 17:26:48 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id E3B213EF0D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jun 2023 22:22:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
Received: from ip5b412278.dynamic.kabel-deutschland.de ([91.65.34.120] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6f4U-0003CO-8M; Wed, 07 Jun 2023 00:22:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor@kernel.org>, Keith Zhao <keith.zhao@starfivetech.com>,
 Shengyu Qu <wiagn233@outlook.com>
Date: Wed, 07 Jun 2023 00:22:33 +0200
Message-ID: <1991848.PYKUYFuaPT@diego>
In-Reply-To: 
 <TY3P286MB26116576E3E502CAE53834599852A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
References: 
 <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602-uncommon-rejoicing-e73c0c475f9f@spud>
 <TY3P286MB26116576E3E502CAE53834599852A@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Spamd-Result: default: False [-2.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[185.11.138.130:from,91.65.34.120:received];
	CTE_CASE(0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[outlook.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,edgeble.ai,hotmail.com,starfivetech.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	FREEMAIL_TO(0.00)[kernel.org,starfivetech.com,outlook.com];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.897];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E3B213EF0D
X-Spamd-Bar: --
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QJ25DV7Q7CFEWVAANO65LLVQZ7FN2XVC
X-Message-ID-Hash: QJ25DV7Q7CFEWVAANO65LLVQZ7FN2XVC
X-Mailman-Approved-At: Mon, 12 Jun 2023 17:26:22 +0000
CC: wiagn233@outlook.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Cha
 nghuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dt-bindings: display: Add yamls for JH7110 display subsystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QJ25DV7Q7CFEWVAANO65LLVQZ7FN2XVC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit

Am Dienstag, 6. Juni 2023, 20:41:17 CEST schrieb Shengyu Qu:
> Hi Conor,
> 
> > Hey Keith,
> >
> > On Fri, Jun 02, 2023 at 03:40:35PM +0800, Keith Zhao wrote:
> >> Add bindings for JH7110 display subsystem which
> >> has a display controller verisilicon dc8200
> >> and an HDMI interface.
> >>
> >> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> >> ---
> >>   .../display/verisilicon/starfive-hdmi.yaml    |  93 +++++++++++++++
> >>   .../display/verisilicon/verisilicon-dc.yaml   | 110 ++++++++++++++++++
> >>   .../display/verisilicon/verisilicon-drm.yaml  |  42 +++++++
> >>   .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
> >>   MAINTAINERS                                   |   7 ++
> >>   5 files changed, 254 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml
> >>   create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml
> >>   create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml b/Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml
> >> new file mode 100644
> >> index 000000000000..c30b7954a355
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml
> >> @@ -0,0 +1,93 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/display/verisilicon/starfive-hdmi.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: StarFive HDMI transmiter
> >> +
> >> +description:
> >> +  The StarFive SoC uses the HDMI signal transmiter based on innosilicon IP
> > Is innosilicon the same thing as verisilicon? Also
> > s/transmiter/transmitter/, both here and in the title.
> 
> I think that is not the same, I remember Rockchip has used a HDMI 
> transmitter from
> 
> Innosilicon, and there is a existing driver for that in mainline.

Yep, I think Innosilicon is the company you turn to when you want to save
a bit of money ;-) . In the bigger SoCs Rockchip most of the time uses
Designware hdmi blocks and looking at the history only the rk3036 ever
used an Innosilicon block.

Looking at the history, 2016 really was a long time ago :-D.


> So Keith, if that's true, I think it is better to seperate the HDMI 
> stuff and reuse existing driver.

I'm not so sure about that - at least from a cursory glance :-) .

The registers do look slightly different and I don't know how much
the IP changed between the rk3036-version and the jh7110 version.

At the very least, I know my rk3036 board isn't booting right now, so
I can't really provide help for generalizing the rockchip-driver.


At the very least both the binding and driver could drop the "starfive-hdmi"
and actually use the Innosilicon in the naming somewhere, so that it's
clear for future developers :-)


Heiko


> >> +  to generate HDMI signal from its input and transmit the signal to the screen.
> >> +
> >> +maintainers:
> >> +  - Keith Zhao <keith.zhao@starfivetech.com>
> >> +  - ShengYang Chen <shengyang.chen@starfivetech.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: starfive,hdmi
> > Is this going to work on every SoC that StarFive has ever & will ever
> > make? Please use soc-based compatibles ;)
> >
> >> +
> >> +  reg:
> >> +    minItems: 1
> >> +
> >> +  interrupts:
> >> +    items:
> >> +      - description: The HDMI hot plug detection interrupt.
> >> +
> >> +  clocks:
> >> +    items:
> >> +      - description: System clock of HDMI module.
> >> +      - description: Mclk clock of HDMI audio.
> >> +      - description: Bclk clock of HDMI audio.
> >> +      - description: Pixel clock generated by HDMI module.
> >> +
> >> +  clock-names:
> >> +    items:
> >> +      - const: sysclk
> >> +      - const: mclk
> >> +      - const: bclk
> >> +      - const: pclk
> >> +
> >> +  resets:
> >> +    items:
> >> +      - description: Reset for HDMI module.
> >> +
> >> +  reset-names:
> >> +    items:
> >> +      - const: hdmi_tx
> > You only have one item here, you don't need the "items: - const:",
> > "const:" alone will do.
> >
> >
> >> diff --git a/Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml
> >> new file mode 100644
> >> index 000000000000..1322502c4cde
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml
> >> @@ -0,0 +1,110 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/display/verisilicon/verisilicon-dc.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: StarFive display controller
> >> +
> >> +description:
> >> +  The StarFive SoC uses the display controller based on Verisilicon IP
> >> +  to transfer the image data from a video memory
> >> +  buffer to an external LCD interface.
> > Is it based on Verisilicon IP, or is it exactly that verisilicon IP? I
> > ask because...
> >
> >> +maintainers:
> >> +  - Keith Zhao <keith.zhao@starfivetech.com>
> >> +  - ShengYang Chen <shengyang.chen@starfivetech.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: verisilicon,dc8200
> > ...the compatible is the verisilicon IP. I would be a lot happier if
> > the compatibles were set yp for something like:
> > "starfive,jh7110-foo", "verisilicon,dc8200"
> >
> >> diff --git a/Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml
> >> new file mode 100644
> >> index 000000000000..aed8d4af2c55
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml
> >> @@ -0,0 +1,42 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/display/verisilicon/verisilicon-drm.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Verisilicon DRM master device
> >> +
> >> +maintainers:
> >> +  - Keith Zhao <keith.zhao@starfivetech.com>
> >> +  - ShengYang Chen <shengyang.chen@starfivetech.com>
> >> +
> >> +description: |
> >> +  The Verisilicon DRM master device is a virtual device needed to list all
> >> +  display controller or other display interface nodes that comprise the
> >> +  graphics subsystem.
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: verisilicon,display-subsystem
> > Same here.
> >
> >> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> index 82d39ab0231b..52c04fd098be 100644
> >> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> @@ -1436,6 +1436,8 @@ patternProperties:
> >>       description: Variscite Ltd.
> >>     "^vdl,.*":
> >>       description: Van der Laan b.v.
> >> +  "^verisilicon,.*":
> >> +    description: Verisilicon Technologies, Inc.
> > This should be in it's own patch.
> >
> > Cheers,
> > Conor.
> >
> >>     "^vertexcom,.*":
> >>       description: Vertexcom Technologies, Inc.
> >>     "^via,.*":
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 2a0496448b7f..293aa13d484c 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -7049,6 +7049,13 @@ F:	Documentation/devicetree/bindings/display/brcm,bcm2835-*.yaml
> >>   F:	drivers/gpu/drm/vc4/
> >>   F:	include/uapi/drm/vc4_drm.h
> >>   
> >> +DRM DRIVERS FOR VERISILICON
> >> +M:	Keith Zhao <keith.zhao@starfivetech.com>
> >> +L:	dri-devel@lists.freedesktop.org
> >> +S:	Maintained
> >> +T:	git git://anongit.freedesktop.org/drm/drm-misc
> >> +F:	Documentation/devicetree/bindings/display/verisilicon/
> >> +
> >>   DRM DRIVERS FOR VIVANTE GPU IP
> >>   M:	Lucas Stach <l.stach@pengutronix.de>
> >>   R:	Russell King <linux+etnaviv@armlinux.org.uk>
> >> -- 
> >> 2.34.1
> >>
> 




_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CF77255C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jun 2023 09:35:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77F434043F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jun 2023 07:35:23 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id AA3023EBEE
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jun 2023 07:35:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=t+obXPMD;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.208.54 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-51458e3af68so837441a12.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Jun 2023 00:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686123317; x=1688715317;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f4KpC3kANHIp+gXw3u0FsGTEqDyd3EDrrwXoz3cWUm0=;
        b=t+obXPMDQN1MkgBs04xAvkKs3YG9raiPc+ui76dx2ia7MPZX1SjNl60T9O8hS4FTh3
         OYegOl6tA9JHkB414fj6GQOM9scxq30zRB+KdiDuZHZ4/vCXyduKPJSgws+bhQ0HlgUy
         deyxiCXXSLyAUQa1d+aafbF1R4MYYNHkLwb5JLf0/ZvgSUvdRobJVh4QL+jtvUN9ALFQ
         QcJ9WuwmVayVPuOR0jHqGNqM/NaqFvTGf26F+PJR08Fe2Z/+Dw09MuVPkb+yugvolS/x
         2VC1ExuGXhVKhwEpyMe7e2wWIGHQBG+zcF9SNpe6S/ABqc7ONelCZiZNwBllgsadDYk9
         DgTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686123317; x=1688715317;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f4KpC3kANHIp+gXw3u0FsGTEqDyd3EDrrwXoz3cWUm0=;
        b=dWBiE6m98b0Z+EaV2e+DI3Bo3NrfPG3e6r01CYxqRgq9T/9I+wTa+lF/zcL/ZQJTWz
         9wVcLDc4G1F1x0JvPx3uJglPY0im9cUFoZ4oyokM/DI7oYr1hANuQ6xdcEdGBN9P1hEs
         KRjm1/hwRhmG200RSbSRIYgn+JUCGnh0kjhKErCh/EWQ9WlXCq5e6t8X4poLq9Sz8CIr
         OjhV6XxOrGlGJBRmdGJAUEWE659jWAMHcXOTemtSnWn6/F2n1JejEHRzvJIiVSK+zW5t
         E623LxAx+zxbXTsbGTpZZZSN8smStFwgPd1myLeH70GGWHTD5IZ74fr5ZOPZHtUpJ4nN
         xdcg==
X-Gm-Message-State: AC+VfDwhZCLzmucSPZgrGVi+rJ2FkNV6qllXtjaEqOZ2kbXdQOlK0VHw
	JLyb1Uu7s3B7BjyEMOhTnJWbLBUA
X-Google-Smtp-Source: ACHHUZ68IVdrnvQr4lSsZZkQxmJ/rw69WI5dJ1WDGRM1Wh0rel9cAHT2zgNzc3jpFoVnSCSRadJZOw==
X-Received: by 2002:a05:6402:1049:b0:514:56b4:35a7 with SMTP id e9-20020a056402104900b0051456b435a7mr4026918edu.36.1686123317550;
        Wed, 07 Jun 2023 00:35:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b13-20020aa7d48d000000b0050e01a965a3sm5931414edr.5.2023.06.07.00.35.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 00:35:17 -0700 (PDT)
Message-ID: <90b9fd0d-fded-0c7f-d58c-c35bf225f6f9@linaro.org>
Date: Wed, 7 Jun 2023 09:35:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Keith Zhao <keith.zhao@starfivetech.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20230602074043.33872-1-keith.zhao@starfivetech.com>
 <20230602074043.33872-2-keith.zhao@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230602074043.33872-2-keith.zhao@starfivetech.com>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[30];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[linaro.org:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,29400000:email,devicetree-specification.readthedocs.io:url];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AA3023EBEE
X-Spamd-Bar: --
Message-ID-Hash: K5ZQVYNWVZR7I2KZ65UNWIQSVJJIMBXV
X-Message-ID-Hash: K5ZQVYNWVZR7I2KZ65UNWIQSVJJIMBXV
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dt-bindings: display: Add yamls for JH7110 display subsystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K5ZQVYNWVZR7I2KZ65UNWIQSVJJIMBXV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 02/06/2023 09:40, Keith Zhao wrote:
> Add bindings for JH7110 display subsystem which
> has a display controller verisilicon dc8200
> and an HDMI interface.
> 
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>  .../display/verisilicon/starfive-hdmi.yaml    |  93 +++++++++++++++
>  .../display/verisilicon/verisilicon-dc.yaml   | 110 ++++++++++++++++++
>  .../display/verisilicon/verisilicon-drm.yaml  |  42 +++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  MAINTAINERS                                   |   7 ++
>  5 files changed, 254 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml b/Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml
> new file mode 100644
> index 000000000000..c30b7954a355
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml

Filename matching compatible.

> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/verisilicon/starfive-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive HDMI transmiter
> +
> +description:
> +  The StarFive SoC uses the HDMI signal transmiter based on innosilicon IP
> +  to generate HDMI signal from its input and transmit the signal to the screen.
> +
> +maintainers:
> +  - Keith Zhao <keith.zhao@starfivetech.com>
> +  - ShengYang Chen <shengyang.chen@starfivetech.com>
> +
> +properties:
> +  compatible:
> +    const: starfive,hdmi

Conor already commented on this.

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
> +
> +  '#sound-dai-cells':
> +    const: 0
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      Port node with one endpoint connected to a display connector node.

One port, so how do you get data? From where does it come?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - '#sound-dai-cells'
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    hdmi: hdmi@29590000 {
> +      compatible = "starfive,hdmi";
> +      reg = <0x29590000 0x4000>;
> +      interrupts = <99>;
> +      clocks = <&voutcrg 17>,
> +               <&voutcrg 15>,
> +               <&voutcrg 16>,
> +               <&hdmitx0_pixelclk>;
> +      clock-names = "sysclk", "mclk","bclk","pclk";
> +      resets = <&voutcrg 9>;
> +      reset-names = "hdmi_tx";
> +      #sound-dai-cells = <0>;
> +      hdmi_in: port {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +          hdmi_input: endpoint@0 {
> +            reg = <0>;
> +            remote-endpoint = <&dc_out_dpi0>;

Mixed up indentation.

> +          };
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml
> new file mode 100644
> index 000000000000..1322502c4cde
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml

Same problem.

> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/verisilicon/verisilicon-dc.yaml#
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
> +  - ShengYang Chen <shengyang.chen@starfivetech.com>
> +
> +properties:
> +  compatible:
> +    const: verisilicon,dc8200
> +
> +  reg:
> +    maxItems: 3
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
> +      - const: clk_vout_noc_disp

Why do you need "clk_" prefixes? Drop.


> +      - const: clk_vout_pix0
> +      - const: clk_vout_pix1
> +      - const: clk_vout_axi
> +      - const: clk_vout_core
> +      - const: clk_vout_vout_ahb
> +      - const: hdmitx0_pixel
> +      - const: clk_vout_dc8200
> +
> +  resets:
> +    items:
> +      - description: Reset for axi interface of display controller.
> +      - description: Reset for ahb interface of display controller.
> +      - description: Core reset of display controller.
> +
> +  reset-names:
> +    items:
> +      - const: rst_vout_axi

Drop rst_

> +      - const: rst_vout_ahb
> +      - const: rst_vout_core
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      Port node with one endpoint connected to a hdmi node.

Oh really? But your HDMI does not allow it! Submit DTS user of all this
so we can see it.

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
> +    dc8200: dc8200@29400000 {

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +      compatible = "verisilicon,dc8200";
> +      reg = <0x29400000 0x100>,
> +            <0x29400800 0x2000>,
> +            <0x295B0000 0x90>;

Lowercase hex

> +      interrupts = <95>;
> +      clocks = <&syscrg 60>,
> +               <&voutcrg 7>,
> +               <&voutcrg 8>,
> +               <&voutcrg 4>,
> +               <&voutcrg 5>,
> +               <&voutcrg 6>,
> +               <&hdmitx0_pixelclk>,
> +               <&voutcrg 1>;
> +      clock-names = "clk_vout_noc_disp", "clk_vout_pix0", "clk_vout_pix1", "clk_vout_axi",
> +                    "clk_vout_core", "clk_vout_vout_ahb", "hdmitx0_pixel","clk_vout_dc8200";
> +      resets = <&voutcrg 0>,
> +               <&voutcrg 1>,
> +               <&voutcrg 2>;
> +      reset-names = "rst_vout_axi","rst_vout_ahb","rst_vout_core";
> +      dc_out: port {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +          dc_out_dpi0: endpoint@0 {
> +              reg = <0>;
> +              remote-endpoint = <&hdmi_input>;
> +          };
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml
> new file mode 100644
> index 000000000000..aed8d4af2c55
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml

Same comments

> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/verisilicon/verisilicon-drm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Verisilicon DRM master device

What is DRM? If Linux thingy, then it does not suit bindings.

Give it proper description of hardware.

> +
> +maintainers:
> +  - Keith Zhao <keith.zhao@starfivetech.com>
> +  - ShengYang Chen <shengyang.chen@starfivetech.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The Verisilicon DRM master device is a virtual device needed to list all

We do not describe virtual devices in bindings.

NAK.

> +  display controller or other display interface nodes that comprise the
> +  graphics subsystem.
> +
> +properties:
> +  compatible:
> +    const: verisilicon,display-subsystem
> +
> +  ports:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Ports is an object, not array. Drop entire property. It's just wrong.


Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

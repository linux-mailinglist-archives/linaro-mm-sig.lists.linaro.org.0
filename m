Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA007FCD4F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Nov 2023 04:14:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A47C40BA0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Nov 2023 03:14:13 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lists.linaro.org (Postfix) with ESMTP id 2F1A23EF0D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Nov 2023 03:13:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.75 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 54B7D24E29D;
	Wed, 29 Nov 2023 11:13:28 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 29 Nov
 2023 11:13:28 +0800
Received: from [192.168.1.115] (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 29 Nov
 2023 11:13:27 +0800
Message-ID: <20502c84-c3af-4a60-9f5f-d8cc05743866@starfivetech.com>
Date: Wed, 29 Nov 2023 11:13:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-2-keith.zhao@starfivetech.com>
 <cb7395a9-71e8-415e-90d5-866a2aeadf28@linaro.org>
From: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <cb7395a9-71e8-415e-90d5-866a2aeadf28@linaro.org>
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Rspamd-Queue-Id: 2F1A23EF0D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.69 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[starfivetech.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	R_DKIM_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	HAS_XOIP(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: S3ZIAUDKVO7HBSC4DPRQRUUSKFOTVROE
X-Message-ID-Hash: S3ZIAUDKVO7HBSC4DPRQRUUSKFOTVROE
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/6] dt-bindings: display: Add yamls for JH7110 display system
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S3ZIAUDKVO7HBSC4DPRQRUUSKFOTVROE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 2023/10/25 20:50, Krzysztof Kozlowski wrote:
> On 25/10/2023 12:39, Keith Zhao wrote:
>> StarFive SoCs JH7110 display system:
> 
> A nit, subject: drop second/last, redundant "yamls for". The
> "dt-bindings" prefix is already stating that these are bindings, so
> format is fixed.
> 
>> lcd-controller bases verisilicon dc8200 IP,
>> and hdmi bases Innosilicon IP. Add bindings for them.
> 
> Please make it a proper sentences, with proper wrapping.
> 
>> 
>> also update MAINTAINERS for dt-bindings
> 
> Not a sentence, but also not really needed.ok I see.
> 
>> 
>> about this patch, I tested the dtbs_check and dt_binding_check
>> with the result pass.
>> Based on the feedback of the previous version, the corresponding arrangement is made
> 
> Not relevant, so not really suitable for commit msg.
> 
>> 
>> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
>> ---
>>  .../starfive/starfive,display-subsystem.yaml  |  41 +++++++
>>  .../starfive/starfive,jh7110-dc8200.yaml      | 109 ++++++++++++++++++
>>  .../starfive/starfive,jh7110-inno-hdmi.yaml   |  85 ++++++++++++++
>>  MAINTAINERS                                   |   7 ++
>>  4 files changed, 242 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.yaml
>>  create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
>>  create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
>> 
>> diff --git a/Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.yaml b/Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.yaml
>> new file mode 100644
>> index 000000000..f45b97b08
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.yaml
>> @@ -0,0 +1,41 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/starfive/starfive,display-subsystem.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Starfive DRM master device
> 
> What is DRM in hardware? I know Digital Rights Management, but then
> subsystem seems wrong. If you mean Linux DRM, then Linux is not a
> hardware, so drop all Linuxisms and describe hardware.
ok , will only keep hardware describe in my next version
> 
> 
>> +
>> +maintainers:
>> +  - Keith Zhao <keith.zhao@starfivetech.com>
>> +  - ShengYang Chen <shengyang.chen@starfivetech.com>
>> +
>> +description:
>> +  The Starfive DRM master device is a virtual device needed to list all
> 
> Virtual device? Then not suitable for bindings, sorry.
> 
>> +  display controller or other display interface nodes that comprise the
>> +  graphics subsystem.
>> +
>> +properties:
>> +  compatible:
>> +    const: starfive,display-subsystem
>> +
>> +  ports:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> 
> No, ports is not phandle-array. ports is object, always.
> 
>> +    description:
>> +      Should contain a list of phandles pointing to display interface ports
>> +      of display controller devices. Display controller definitions as defined
>> +      in Documentation/devicetree/bindings/display/starfive/
>> +      starfive,jh7110-dc8200.yaml
> 
> Use standard graph ports, not some own, custom property.
> 
> Anyway, entire binding should be dropped. You do not need it even.
Hi Krzysztof:
Virtual device is not suitable for bindings, matbe I need associate it with the real hardware.
such as the top clocks & reset , irq , etc.
Currently I configure them in another yaml file. Logically speaking, this is more suitable.

Can adding the corresponding hardware description change its fate of being deleted?
 
> 
>> +
>> +required:
>> +  - compatible
>> +  - ports
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    display-subsystem {
>> +        compatible = "starfive,display-subsystem";
>> +        ports = <&dc_out>;
>> +    };
>> diff --git a/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
>> new file mode 100644
>> index 000000000..87051cddf
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
>> @@ -0,0 +1,109 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/starfive/starfive,jh7110-dc8200.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: StarFive display controller
>> +
>> +description:
>> +  The StarFive SoC uses the display controller based on Verisilicon IP
>> +  to transfer the image data from a video memory buffer to an external
>> +  LCD interface.
>> +
>> +maintainers:
>> +  - Keith Zhao <keith.zhao@starfivetech.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: starfive,jh7110-dc8200
>> +
>> +  reg:
>> +    minItems: 1
>> +    items:
>> +      - description:
>> +          host interface
> 
> In one line.
>  - description: host interface
> 
>> +      - description:
>> +          display physical base address and length.
> 
> Drop redundant parts: base address and length. Everything in reg for
> MMIO would have it...
> 
>> +
>> +  interrupts:
>> +    items:
>> +      - description: The interrupt will be generated when DC finish one frame
>> +
>> +  clocks:
>> +    items:
>> +      - description: Clock for display system noc bus.
>> +      - description: Pixel clock for display channel 0.
>> +      - description: Pixel clock for display channel 1.
>> +      - description: Core clock for display controller.
>> +      - description: Clock for axi bus to access ddr.
>> +      - description: Clock for ahb bus to R/W the phy regs.
>> +      - description: External HDMI pixel clock.
>> +      - description: Parent clock for pixel clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: noc_bus
>> +      - const: channel0
>> +      - const: channel1
>> +      - const: dc_core
>> +      - const: axi_core
>> +      - const: ahb
>> +      - const: hdmi_tx
>> +      - const: dc_parent
>> +
>> +  resets:
>> +    items:
>> +      - description: Reset for axi bus.
>> +      - description: Reset for ahb bus.
>> +      - description: Core reset of display controller.
>> +
>> +  reset-names:
>> +    items:
>> +      - const: axi
>> +      - const: ahb
>> +      - const: core
>> +
>> +  port:
>> +    $ref: /schemas/graph.yaml#/properties/port
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - port
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    dc8200: lcd-controller@29400000 {
>> +        compatible = "starfive,jh7110-dc8200";
>> +        reg = <0x29400000 0x100>, <0x29400800 0x2000>;
>> +        interrupts = <95>;
>> +        clocks = <&syscrg 60>,
>> +               <&voutcrg 7>,
>> +               <&voutcrg 8>,
>> +               <&voutcrg 4>,
>> +               <&voutcrg 5>,
>> +               <&voutcrg 6>,
>> +               <&hdmitx0_pixelclk>,
>> +               <&voutcrg 1>;
>> +        clock-names = "noc_bus", "channel0", "channel1",
>> +                      "dc_core", "axi_core", "ahb",
>> +                      "hdmi_tx","dc_parent";
>> +        resets = <&voutcrg 0>, <&voutcrg 1>, <&voutcrg 2>;
>> +        reset-names = "axi", "ahb", "core";
>> +        dc_out: port {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            dc_out_hdmi: endpoint@0 {
>> +                reg = <0>;
>> +                remote-endpoint = <&hdmi_in_dc>;
>> +            };
>> +        };
>> +    };
>> diff --git a/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
>> new file mode 100644
>> index 000000000..f6c473a10
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
>> @@ -0,0 +1,85 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/starfive/starfive,jh7110-inno-hdmi.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Starfive JH7110 HDMI controller
>> +
>> +description:
>> +  The StarFive JH7110 SoC uses the HDMI signal transmiter based on innosilicon IP
>> +  to generate HDMI signal from its input and transmit the signal to the screen.
>> +
>> +maintainers:
>> +  - Keith Zhao <keith.zhao@starfivetech.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: "starfive,jh7110-inno-hdmi"
> 
> It does not look like you tested the bindings, at least after quick
> look. Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.
> 
> Best regards,
> Krzysztof
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

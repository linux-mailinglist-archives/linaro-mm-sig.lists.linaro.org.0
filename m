Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B486EA4B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Apr 2023 09:29:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 985A33F982
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Apr 2023 07:29:53 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id E3FCC3E944
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Apr 2023 07:29:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Ux5ynbWj;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.218.52 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-94f7a0818aeso170664166b.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Apr 2023 00:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682062187; x=1684654187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N+iZ1aFyoi01Oag2G0IVEtycCaHj8d8JsSoYMnnAS8s=;
        b=Ux5ynbWj9qHDQvjPzho8jJ1gQ2rb4QipL0X/UAtCqkvo7IZDtVmz74f5nFVkxoK2oW
         e/Hwaxw55z4H8cQ8dTXOQO9SnOUisy/XUhbW/V15gBm7GX8+N8NXFi8WeSOUU2ztdice
         sS1JHQqVHyrPHzOG8qMKQWd4aaXR9mPKYJt38A7HKrctdthX39VX4bBI0e76rCrTClfO
         JkV4BDMB4G0puP7iVT+bFLwgyv07uv+9ie32NqUZzjgSs+T/iTK94VXRicodc5eYYFZc
         9pXeF0kAJDN7/JWfZ1nWQOjFTHbk3L4gQMRJ93LeMNipt/wqgIbPWCU+NUr1nRr8eR3J
         zIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682062187; x=1684654187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N+iZ1aFyoi01Oag2G0IVEtycCaHj8d8JsSoYMnnAS8s=;
        b=lIADoTD+F6yo/gsv+62FLz+/vvIVOd8OPmfJRvd0dNcrhu0zXxgxZKiQGpKzlq6SNr
         0Ef78nvIaseoIVdDOJaUv+HJGbRfsA4R6m9aSRzbbvOQKxUUtGlvfZgnlim+41Wqx2tC
         zNbpG0HiHk52+xFYWY4ePUxMmDEr3+4UhBrcj27wqrexNgWF0J7f2/xxguBtBZXJ8LbC
         4bD+TZj6PG+wxMR9pgqkvTIj2CVOMVPR3rb8r5MFd4p7bkhEY3afayesQEl4GunchfkV
         ZHTOhgcM2kE3mOFhhlk90e/bPC4Pfvl60RubzqbUmRWdTLm1qOaZFp+OI9nuSMBN2c6W
         fGGg==
X-Gm-Message-State: AAQBX9czNTIfBBMR2v/pI23cQ71xeMJmW9xrRISyVdDPEIGerO9gzxQd
	xe2oDTyzy7nxCsEzjVPBEfUKzOAn
X-Google-Smtp-Source: AKy350azq/JG2p2vKeECMHZp/w2A8ZvW4QmweQeB9Z6MJLwx4q7Ifbu/S8dQKqzIgf2nQaaeS+sviA==
X-Received: by 2002:a17:906:35c6:b0:94a:9c9e:6885 with SMTP id p6-20020a17090635c600b0094a9c9e6885mr1316489ejb.58.1682062186815;
        Fri, 21 Apr 2023 00:29:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id s22-20020a170906169600b0094f3132cb86sm1712708ejd.40.2023.04.21.00.29.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:29:46 -0700 (PDT)
Message-ID: <e2069707-3f09-f1e7-6973-a2e115af7536@linaro.org>
Date: Fri, 21 Apr 2023 09:29:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Justin Chen <justinpopo6@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, bcm-kernel-feedback-list@broadcom.com
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-2-git-send-email-justinpopo6@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1681863018-28006-2-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.52:from];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,broadcom.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E3FCC3E944
X-Spamd-Bar: --
Message-ID-Hash: F73TW6RT4TNWSKN6HMQFERBP7WQAPRUV
X-Message-ID-Hash: F73TW6RT4TNWSKN6HMQFERBP7WQAPRUV
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 1/6] dt-bindings: net: Brcm ASP 2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F73TW6RT4TNWSKN6HMQFERBP7WQAPRUV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 19/04/2023 02:10, Justin Chen wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> Add a binding document for the Broadcom ASP 2.0 Ethernet
> controller.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>
> ---
>  .../devicetree/bindings/net/brcm,asp-v2.0.yaml     | 146 +++++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> new file mode 100644
> index 000000000000..3817d722244f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/net/brcm,asp-v2.0.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes.

> +
> +title: Broadcom ASP 2.0 Ethernet controller
> +
> +maintainers:
> +  - Justin Chen <justinpopo6@gmail.com>
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +description: Broadcom Ethernet controller first introduced with 72165
> +
> +properties:
> +  '#address-cells':
> +    const: 1
> +  '#size-cells':
> +    const: 1
> +
> +  compatible:
> +    enum:
> +      - brcm,bcm72165-asp-v2.0
> +      - brcm,asp-v2.0
> +      - brcm,asp-v2.1

Is this part of SoC? If so, then SoC compatibles are preferred, not IP
block versions.

> +
> +  reg:
> +    maxItems: 1
> +    description: ASP registers

Drop description.

> +
> +  ranges: true
> +
> +  interrupts:
> +    minItems: 1
> +    items:
> +      - description: RX/TX interrupt
> +      - description: Port 0 Wake-on-LAN
> +      - description: Port 1 Wake-on-LAN
> +
> +  clocks:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Drop.

> +    description: Phandle to clock controller

Drop.

Instead maxItems.

> +
> +  clock-names:
> +    const: sw_asp

Drop entire property.

> +
> +  ethernet-ports:
> +    type: object
> +    properties:
> +      '#address-cells':
> +        const: 1
> +      '#size-cells':
> +        const: 0

Missing additionalProperties:false. Look at existing bindings how it is
done.

> +
> +    patternProperties:
> +      "^port@[0-9]+$":
> +        type: object
> +
> +        $ref: ethernet-controller.yaml#
> +
> +        properties:
> +          reg:
> +            maxItems: 1
> +            description: Port number
> +
> +          channel:
> +            maxItems: 1
> +            description: ASP channel number
> +
> +        required:
> +          - reg
> +          - channel
> +
> +patternProperties:
> +  "^mdio@[0-9a-f]+$":
> +    type: object
> +    $ref: "brcm,unimac-mdio.yaml"
> +
> +    description:
> +      ASP internal UniMAC MDIO bus
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - ranges
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    asp@9c00000 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +        compatible = "brcm,asp-v2.0";
> +        reg = <0x9c00000 0x1fff14>;
> +        interrupts = <0x0 0x33 0x4>;

Use proper defines for flags.

> +        ranges;
> +        clocks = <&scmi 14>;
> +        clock-names = "sw_asp";
> +        #address-cells = <1>;
> +        #size-cells = <1>;


Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

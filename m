Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E49765323DD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:17:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 246663F8CA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:17:06 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by lists.linaro.org (Postfix) with ESMTPS id 0959E404B2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 09:07:07 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id k2so10551634wrd.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 02:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tQhMv5wgd6P5e5ZPKnJXTqhF5TWWKVPkk+00hnqjRXs=;
        b=l8ZqzODxTeK4g2pTFG9ZfVYndijHwk3ii/cTxtexptHo590e35fS20iJwufNZdEh92
         2jnMvPNFHcft1cWJ2CbcRhtpHmMAmc8dJINengKkOOb5LUd5kbGum+qa3F+Uqhq9WxGl
         Y+4vNppopCVyTh/NMA/pHCUtSirsXcuUpHKpHmqmDSiZwaJhIZS9BkwROWE1xhfpXly0
         vSZYHS/eCsuDxwTwx4exGV1Fcw0wIFsgGORQL+NhF0F+GT4P72xlIFvgV2ehYcMbmDo+
         /yl0yWZV9wzV5KCbXL8PYSXGFZ+bnosYCEC8iFJe3AHNNRz4j1c+vziQGTi+0eTaY+OS
         xqFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tQhMv5wgd6P5e5ZPKnJXTqhF5TWWKVPkk+00hnqjRXs=;
        b=sdVYc5DVcTx23RapLJzxId7HpmVzkFVjTKmQi2pSzJuF8aUx0wYJ+0MrtlL3+wo/+R
         PIdkYpRSLExoz3GadYZ6rzKhNHTytcMQqZ/sp2jcGuO0VT1ogVfMo1ChqCSk+1lfwkfp
         wgRd2yVJbdzRuA4LTpDB9jPwTwpSa1IxfZdOgQ5vsQULMq0BdNvaClV7QjFyRhPeyWd+
         20RUX2L4vapKYp20bZTULVlRg4Bj3C6EnaMmyk5XSKtSKLPxCLolK7Fzml9VDRjgehps
         3mvaKDAAsvDrCQkNhU4uncrlVA6QvPgsDRR9GZxxn13PW46LdOlMG1VjNlyOW2rAEEUp
         NjgQ==
X-Gm-Message-State: AOAM532/A2IM50jyf+NNmxk9Ty4G1pWkopli4ucjFDdtJonfxJRfI7nx
	0zuYxbgAlzkbl8x37BgeAW1Mbxsf
X-Google-Smtp-Source: ABdhPJy98bvsVxNsD1pSSLGnY3/tw/4jQw9PX2RSQLFiZDfcJuBduq4HwVBFKrcSH9BcOE5sNaEWQA==
X-Received: by 2002:a5d:4090:0:b0:20c:8b91:3b17 with SMTP id o16-20020a5d4090000000b0020c8b913b17mr2991905wrp.348.1652432826026;
        Fri, 13 May 2022 02:07:06 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s23-20020adfa297000000b0020c5253d8f4sm1662710wra.64.2022.05.13.02.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 02:07:05 -0700 (PDT)
Message-ID: <da78aaf6-c9ae-d591-fdc4-723f097ace2c@linaro.org>
Date: Fri, 13 May 2022 11:07:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Neal Liu <neal_liu@aspeedtech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Felipe Balbi <balbi@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Li Yang <leoyang.li@nxp.com>
References: <20220513065728.857722-1-neal_liu@aspeedtech.com>
 <20220513065728.857722-4-neal_liu@aspeedtech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220513065728.857722-4-neal_liu@aspeedtech.com>
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XMUIF7PXDGAGKFF67V2Z2X7RIVRNYLM5
X-Message-ID-Hash: XMUIF7PXDGAGKFF67V2Z2X7RIVRNYLM5
X-Mailman-Approved-At: Tue, 24 May 2022 07:17:02 +0000
CC: linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, BMC-SW@aspeedtech.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dt-bindings: usb: add documentation for aspeed udc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XMUIF7PXDGAGKFF67V2Z2X7RIVRNYLM5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 13/05/2022 08:57, Neal Liu wrote:
> Add device tree binding documentation for the Aspeed USB2.0 Device
> Controller.
> 
> Signed-off-by: Neal Liu <neal_liu@aspeedtech.com>
> ---
>  .../devicetree/bindings/usb/aspeed,udc.yaml   | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,udc.yaml

Please name the file as first compatible, so "aspeed,ast2600-udc.yaml"


> 
> diff --git a/Documentation/devicetree/bindings/usb/aspeed,udc.yaml b/Documentation/devicetree/bindings/usb/aspeed,udc.yaml
> new file mode 100644
> index 000000000000..d1d2f77d1c54
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/aspeed,udc.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2020 Facebook Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/aspeed,udc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED USB 2.0 Device Controller
> +
> +maintainers:
> +  - Neal Liu <neal_liu@aspeedtech.com>
> +
> +description: |+
> +  The ASPEED USB 2.0 Device Controller implements 1 control endpoint and
> +  4 generic endpoints for AST260x.
> +
> +  Supports independent DMA channel for each generic endpoint.
> +  Supports 32/256 stages descriptor mode for all generic endpoints.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2600-udc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1

No child properties? No ports or any other devices? No usb-hcd.yaml?
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    udc: udc@1e6a2000 {

Node name: usb

> +            compatible = "aspeed,ast2600-udc";
> +            reg = <0x1e6a2000 0x300>;
> +            interrupts = <9>;
> +            clocks = <&syscon ASPEED_CLK_GATE_USBPORT2CLK>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pinctrl_usb2bd_default>;
> +    };


Best regards,
Krzysztof
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E4C5324AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:59:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D971F3F8BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:59:48 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id EBE1540477
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 11:59:37 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id i19so34180840eja.11
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 04:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=We6UnTkt5DfPq+wuwoB7alfZF2Hv9K3HgKR2Inooa2M=;
        b=mJUxow8TJYLd1QWdt4w54y14ncU32yxMoU6rAuy9WcO3jRkd7oe7jKuPrsY2rNm5sv
         1BKYohHd6rUaSdXm5PduVz5YYYj/WNzO1gyqgmznJEr4jwUuuz3xIIfspVy5iZUe5YhQ
         q1l32lRbVlLMCItWsIhV1mU6rnPvfK9fwRKkgflcgf0VpqLAtfHpwQNu1WE3VVurFdsA
         iBr7rfZ/WlcszsTo/UvoSvzdkTYmse0qFb60Qb/YjL/eEzexO99zZrjtWGhYLDrKF3fj
         La5T7bT9WybG4SiMlalfi1G9RI7UsOsibH+sFHt0JGH6m7rWrDkSKzp3bJrnWouYmXzX
         QPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=We6UnTkt5DfPq+wuwoB7alfZF2Hv9K3HgKR2Inooa2M=;
        b=HjM06HXoU0x8TJKsy+4PI9HYrQPpJCQ25lRf+W0szq42TlaT//sJY+COhvu/N10ZRP
         xnxlXP/vw99m9zVRnWS3ZRKYKv1oDfZxkXXPxdsG8WLANtBaIIfXpF8lvDODG8CaAJ8T
         w23TAJB0wj9rrrjWOfzruUcnQR7qvdQ8MogsalzdDGbtZgsPkwGk4MoGYidhTIGS0Ef6
         +QxZeVuXA9U2dBa/TGDnBkauylTeRPb5Xqd+9wV9QmNdJXPQN8A4Rm0n4UOU0Hf33LfC
         6C1YTq9zhZHvccVoQuWKhMRe9xMpLczuWVuNDtXZkSsd5Ylpbgh5S7ExDo+0kQgruDi1
         ne4w==
X-Gm-Message-State: AOAM530JzC0nBcrjPNdXqWtKujW1sKSl+qMaumlBf4aw4TZfZETvkaHI
	3/Vv5fDptkD/pq0qAn9k2rBydLFT
X-Google-Smtp-Source: ABdhPJyvwVUAbJ0QXLt9/CxdM+HPOyaIV1T5I4ZB9Qx0sEtfYLUok+mJqrxKP1RTakPh02MMo1ynRQ==
X-Received: by 2002:a17:907:1c9c:b0:6f4:2918:5672 with SMTP id nb28-20020a1709071c9c00b006f429185672mr19312685ejc.439.1652788777021;
        Tue, 17 May 2022 04:59:37 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id eg16-20020a056402289000b0042abb914d6asm2074448edb.69.2022.05.17.04.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 04:59:36 -0700 (PDT)
Message-ID: <96973d1d-c52c-d190-6989-3f7996dae70b@linaro.org>
Date: Tue, 17 May 2022 13:59:35 +0200
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
References: <20220517082558.3534161-1-neal_liu@aspeedtech.com>
 <20220517082558.3534161-3-neal_liu@aspeedtech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517082558.3534161-3-neal_liu@aspeedtech.com>
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V3MJOZCY5K72WQ7JQGZNSP5TQNCTXTEF
X-Message-ID-Hash: V3MJOZCY5K72WQ7JQGZNSP5TQNCTXTEF
X-Mailman-Approved-At: Tue, 24 May 2022 07:59:25 +0000
CC: linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/3] ARM: dts: aspeed: Add USB2.0 device controller node
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V3MJOZCY5K72WQ7JQGZNSP5TQNCTXTEF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 17/05/2022 10:25, Neal Liu wrote:
> Add USB2.0 device controller(udc) node to device tree
> for AST2600.
> 
> Signed-off-by: Neal Liu <neal_liu@aspeedtech.com>
> ---
>  arch/arm/boot/dts/aspeed-g6.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
> index 3d5ce9da42c3..5517313eb2b5 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -298,6 +298,16 @@ vhub: usb-vhub@1e6a0000 {
>  			status = "disabled";
>  		};
>  
> +		udc: udc@1e6a2000 {

The same as DTS in bindings - generic node name, please.


Best regards,
Krzysztof
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

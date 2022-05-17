Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3075324AC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:59:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 521293F4C4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:59:53 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id AD4134048C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 12:03:41 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id er5so8561230edb.12
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 05:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yZJ549tkUDyfMnj4pDgFXOPxERt74iwRgdcSUgywI0w=;
        b=SLdIpuHsPZOQVlDGwOot7xRTXin9VuhUJWDszbnsNjoGeWE8iBiJ3ukO3F3Z5GZteq
         1cp1K5zu4cgXjLKSEfKvXBjOHbGusbTRY3yPCiSX6aYgQntnubVrjqXBIOjABmNpiKXA
         cP6tVRvsLW4So4q8qv2MUGoSR4JBKO+99YHGO8c58Mccs75L0RDc4CaWqBjoA3fJGxID
         Jo3c20vSluxtLkg3zJt1FPzOAIVrGXZnS32smWQehkwlE3LH5AKrwKGAmwlyCUzgjWmg
         aztEWXc+ige5+ey6GRtLavKzVNZUV74JmNGmBsJI2Mje1F8DfO5sQtnMpAWUMWuUEcYK
         q/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yZJ549tkUDyfMnj4pDgFXOPxERt74iwRgdcSUgywI0w=;
        b=OHHm8LZBicUJKIxQl0PAP5S0PVVEGW6dkpy8rCsAthF0Wsq6NFfNQVasFmmqXg7Dx2
         VfE8a2LyUVtNFkN/VDBOkltJoDT/2wKMI/g2ziHbc+xsjtsaSKrh/ezScDX78Egt0/26
         fiPnlr5Rd/wcOkbHPzQJJbXchBvxdyUeTOBUmloDYFCPA6RIkB1HBTfISZfGWYWiWZOp
         msmK1Is/aVSiLtPpeKMCwjAAJgr8e1D9gqqIAhXVE0U1mZoSOGrJVE26jKchHZJ+WncM
         +5JJsAbUX+hqq4fcRV7t36+KwBAzzTggHnfitoecs+8uz0g9u1fXC7eBHFgFyuwbNUHx
         t2bg==
X-Gm-Message-State: AOAM531P4GnThIz9j18318fN18T9b52LwAyMA3F14nKwM0ZQ/AjW5jAt
	4unQfM8GAXxPUm2Th+Bp72uMVwgV
X-Google-Smtp-Source: ABdhPJzS034eaTCysoZRyeY2Rmi287sAazLAVLGC7BRgRqcCeUbhtN10ECZckeoh/xWSE6rloRIXtw==
X-Received: by 2002:a05:6402:2815:b0:420:c32e:ebe2 with SMTP id h21-20020a056402281500b00420c32eebe2mr18820072ede.1.1652789020781;
        Tue, 17 May 2022 05:03:40 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u12-20020aa7d88c000000b0042ac13e232csm1645442edq.39.2022.05.17.05.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 05:03:40 -0700 (PDT)
Message-ID: <414d09f8-328a-4bf4-c20e-f8ce4a6ddfc7@linaro.org>
Date: Tue, 17 May 2022 14:03:39 +0200
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
 <20220517082558.3534161-4-neal_liu@aspeedtech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517082558.3534161-4-neal_liu@aspeedtech.com>
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KI4MYA2TMCVMLRU6MCQCXSBSMKJTTZFK
X-Message-ID-Hash: KI4MYA2TMCVMLRU6MCQCXSBSMKJTTZFK
X-Mailman-Approved-At: Tue, 24 May 2022 07:59:27 +0000
CC: linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] dt-bindings: usb: add documentation for aspeed udc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KI4MYA2TMCVMLRU6MCQCXSBSMKJTTZFK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 17/05/2022 10:25, Neal Liu wrote:
> +
> +  interrupts:
> +    maxItems: 1
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
> +    usb: usb@1e6a2000 {
> +            compatible = "aspeed,ast2600-udc";

Sorry for not noticing it earlier - slipped through the cracks. You use
here unusual indentation (not matching the rest of the example - above
is 4 spaces, here is 7 or 8).

Just keep 4 spaces for DTS example.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

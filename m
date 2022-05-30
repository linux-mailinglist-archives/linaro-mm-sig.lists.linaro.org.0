Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 880BB537466
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 08:34:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B7EB73F209
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 May 2022 06:34:04 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id 5A98F3F1F4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 May 2022 06:34:00 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id n10so18866723ejk.5
        for <linaro-mm-sig@lists.linaro.org>; Sun, 29 May 2022 23:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6JI8S2sEVNpLFXVCCEM7RQxXwQYpgOWv8/i6hytBxdw=;
        b=zI0PXh8CUyED8Aak6eOmi1pxsLjx5iKfEyhp11LMUldq9XFq2NWH8BDXYIBnH+GXzu
         AJhdwBrl/HQ7z2DFlsk5iIZ9GGMKbdvq7WFOv8XsL3ni9sP5RAMDaUw7GZReXuyf/unq
         t6JshwYWAFLqRkE7demdu8wDwWO13TszkVQyVTORH+qUU6WdRhjCCtgQBd7q2WvLW3Bf
         5kULMLzBV6kXyaXywJzA3k62rdn+HVZoZgW3TUU4k3yYrSThwo38Q5WhoPEG6qIj+Dwx
         mTUc84qbWdXLO50Z4mzpvy2NVjZYNZ1PvNKr1UUdYznfM+cmo2cro+UzgFQ6cJP0rCEa
         mtnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6JI8S2sEVNpLFXVCCEM7RQxXwQYpgOWv8/i6hytBxdw=;
        b=nqywxYEDxfHNOYBpOEnsULag0f3ixe2lRFEHN02z0E4f9OjlM9jSo4GkuxTTF9VboR
         ao9c2SnzeSElQe6jfxo4a7xNL9TS9T44WfDp0SfbkqPjy9IAD4wexAMDvtmSNuShMJ9U
         Z3RcFHQ/4w7J5PsapTLcCwmXiRb3e1LLtsV3jsq3aCXvB+cLsCSg+FUtAhHwrCDaNp/t
         Z9XS9R4/lX9EAZuB+lOWm2wl+kdjn7wTAHaIMjLtDjATbfZ1Nca+zAv3fEMQLFuPa3iC
         yV/5X8oChu785Qf2An5yiwiUGiB5xoD6qD9dYVsB+xaBI7HgLPx2sgKf9I+z8V7QbK6E
         GuYw==
X-Gm-Message-State: AOAM5315J+UYE+nIYh8eMngiBLLLKNaYJw+dIB2SZ/01zOe7ulwqUWFm
	KaS8OluockbJW0pPemyXcYHOeMRs
X-Google-Smtp-Source: ABdhPJzPKJqFPcOz5A+5ihWfyOrl8uqS8EvJFQzv0kmgEA19KzEXCpq17Xg4yZLMD6GQ3DGaOgt0zA==
X-Received: by 2002:a17:906:3a92:b0:6fe:9029:b62c with SMTP id y18-20020a1709063a9200b006fe9029b62cmr47653469ejd.569.1653892439407;
        Sun, 29 May 2022 23:33:59 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w7-20020a170906130700b006f3ef214dfesm3680224ejb.100.2022.05.29.23.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 23:33:58 -0700 (PDT)
Message-ID: <0c08eb44-285d-975d-ac6a-f55ccfb34420@linaro.org>
Date: Mon, 30 May 2022 08:33:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Neal Liu <neal_liu@aspeedtech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Felipe Balbi <balbi@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Li Yang <leoyang.li@nxp.com>
References: <20220523030134.2977116-1-neal_liu@aspeedtech.com>
 <20220523030134.2977116-3-neal_liu@aspeedtech.com>
 <TY2PR06MB32135A0DAA9F152E2498CD1C80DD9@TY2PR06MB3213.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TY2PR06MB32135A0DAA9F152E2498CD1C80DD9@TY2PR06MB3213.apcprd06.prod.outlook.com>
Message-ID-Hash: AATWL43IMT3R4BNHOONNGWIYDEMYJCO5
X-Message-ID-Hash: AATWL43IMT3R4BNHOONNGWIYDEMYJCO5
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/3] ARM: dts: aspeed: Add USB2.0 device controller node
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AATWL43IMT3R4BNHOONNGWIYDEMYJCO5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 30/05/2022 03:27, Neal Liu wrote:
> Gentle ping on this path, thanks.

It's a merge window, so now not much might happen. Please resend in a week.

> 
>> -----Original Message-----
>> From: Neal Liu <neal_liu@aspeedtech.com>
>> Sent: Monday, May 23, 2022 11:02 AM
>> To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Rob Herring

(...)

>>
>> Add USB2.0 device controller(udc) node to device tree for AST2600.
>>
>> Signed-off-by: Neal Liu <neal_liu@aspeedtech.com>

You don't need my ack here, but anyway FWIW:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

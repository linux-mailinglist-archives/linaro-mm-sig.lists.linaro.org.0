Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE83453249C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:59:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EA343F8C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:59:17 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by lists.linaro.org (Postfix) with ESMTPS id 7A6DD3EBC5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 16 May 2022 05:54:06 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id p26so23874594lfh.10
        for <linaro-mm-sig@lists.linaro.org>; Sun, 15 May 2022 22:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iQu4lukAu6aND/lSxHXOC9CQZKXgScz0FZajkncufEw=;
        b=WOTncPc2v5NZjRnTIJIh4IXO1dj9ckDUzbSMpFADqaVVFteQj9TEczbboaO7BSW2/s
         XISBzIocyQtoLTgR7gWJ/xy+YDxJlUaAAnAbtnBo+Ja4yyTkPE3dNrqwQyJL1N6Lt4H0
         ++LYr9UXQs5/Qplz1Zqp2mpf5Mt3r7P9Z9O4UHYmkTLk3lPXMJ1Bwkihocd9f4kVWpdk
         3IzpmTfXxrlrmJeAStqS0d+5hFCtGcTIYjrwdLrzg/HL53pH2ksHGVkx5ljLbGLK0EZE
         n33jLIToD1mvWSg0ZTsItxhaHXXnCYpgLBJ7kwzcMxk9kRkJfIChVs5xPxBONi0DnCfU
         rI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iQu4lukAu6aND/lSxHXOC9CQZKXgScz0FZajkncufEw=;
        b=t7moDGmhTPE20vx1HCKShBFofyGEbREuEine5BdBISS8gAOAFv2jRBtS1hmAXmnHmF
         gPBCa7tT8zK9+rLO5cXLLfOS1wP7WcgO/KKBA/jODuGdnGDiSksCQsfFcYgTmetE6tIX
         WRVO2xyq2oQw0k30TiMJtznXm7Zh/WhactW7w1VFKJSNtBTFJLee/0cGwDy8v9BCX+RY
         mv15avdUOTE/fr7QBlo/hrtjO7clbq11eYco/RTy8q3HpHI02oC9JhbKyvJw7Y5TkYgT
         RnbuGgod2DQ0XycSREk2fUFhjDOt1Ds4IHFkcnu+SpfVGwMEs5nkH8ttQtDGh63PqwdZ
         sZUQ==
X-Gm-Message-State: AOAM533C9s+JdmW1bSaTc6KR7+kVbY6MyQE3wte536guiLlQw3sfPZ2p
	I+vH/nDse6KsZBvU+zYsn6Edgr2S
X-Google-Smtp-Source: ABdhPJxDB/Sa5OHAguWRCgpV67m8ipVKXudtdyV00vw1QteYiiQh9fRXMYiofl5SGOVzWKsH/Wkjhg==
X-Received: by 2002:a05:6512:228d:b0:473:f729:3219 with SMTP id f13-20020a056512228d00b00473f7293219mr12132861lfu.428.1652680445339;
        Sun, 15 May 2022 22:54:05 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m20-20020a2e9114000000b0024f3d1daeb5sm1384293ljg.61.2022.05.15.22.54.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 May 2022 22:54:04 -0700 (PDT)
Message-ID: <3499cca2-1d7b-12f5-adbe-0c9b279cc51a@linaro.org>
Date: Mon, 16 May 2022 07:54:03 +0200
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
 <da78aaf6-c9ae-d591-fdc4-723f097ace2c@linaro.org>
 <HK0PR06MB3202679A7FABAF7D0D045F0880CA9@HK0PR06MB3202.apcprd06.prod.outlook.com>
 <567d135b-3d40-9958-e000-1357020b5650@linaro.org>
 <HK0PR06MB32020539063F8A7C5D56E0B980CF9@HK0PR06MB3202.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <HK0PR06MB32020539063F8A7C5D56E0B980CF9@HK0PR06MB3202.apcprd06.prod.outlook.com>
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YLL3KILDQETAKKBZBQWRIHVP2F2BNTO2
X-Message-ID-Hash: YLL3KILDQETAKKBZBQWRIHVP2F2BNTO2
X-Mailman-Approved-At: Tue, 24 May 2022 07:59:09 +0000
CC: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dt-bindings: usb: add documentation for aspeed udc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YLL3KILDQETAKKBZBQWRIHVP2F2BNTO2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 16/05/2022 03:59, Neal Liu wrote:
>>> Okay, I could rename it for next patch if you preferred.
>>> But there are lots of yaml files which are not named as first compatible.
>>
>> Yes, I know, I quite likely I also produced such bindings, but a specific name is
>> rather preferred. Otherwise you will have a difficult naming choice when your
>> next Aspeed UDC requires new bindings file because of some differences (not
>> yet known now).
>>
> We can rename the bindings if next Aspeed UDC needs, don't you think?
> Currently, Aspeed has no requirement.

So just use proper name from the beginning....


Best regards,
Krzysztof
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ACE6EA4C8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Apr 2023 09:30:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF65A3F97F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 Apr 2023 07:30:55 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id 1D5BF3E944
	for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Apr 2023 07:30:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=jHa4yP8u;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.218.47 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-956ff2399c9so131987966b.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 21 Apr 2023 00:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682062251; x=1684654251;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TXD0SvfVpb5ArVlwxwukJNvZ7FQ4i6U8HJTH0x40wOc=;
        b=jHa4yP8uRXfKtQYslv7gA8gGzGt6bHpcNBBVQkD9GcwARGlxayyqhdRiIBBQY9H1Bb
         SyZU4yixxQM+XsojFJjtucU3i3wen2yRTp6zX48UroM+P9SpyNM7Goe7igAPHzmRXAec
         5oYIBMyA43zod8w/yMsgwjaU3x/F93FJSjXiodloLojrzOAMmINH5JkXL5uSsn1Tkikb
         tBe3WAOiF+rJFvyDRe/d0fYqAQNwa+8nDuoAGBeogng7SGfB6kMOa6BEvIAEsfJAdpmt
         t5pAhDO4F5E3UKc4ZJ+0e/BrjMttO6ouKWwQ0fMnyy5VbXMympEy2ttY8yJgRLOJO18k
         0V0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682062251; x=1684654251;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TXD0SvfVpb5ArVlwxwukJNvZ7FQ4i6U8HJTH0x40wOc=;
        b=YsMV8jY7CRYBRMpa/4uI8nr9CZlvr9CvjGcdX83/TcR4ZLWlZrYD6aChgyFc7zVS7L
         +j9ueLueOTNJidmft0CIoDkbu8LWvnMUBLyrneSLQYdvCAly7hr8v2bnUSZK1hLmJJno
         XNfxFG7Ybk8s8evT+7kBgby455LyARpyUn1tNDBlPegzphUgnxrrZbWwGIybW3Uxs1RK
         VpNe92T6KAXMdGFBX7mLiho/X2FoZaQNSuKcEmM14hLSwHT616FW8FOt8D6X1PkU3UFk
         JGQPiBbqtZ/sLpyIkrSEPeohBuoyCvotVvm6g/N5N2+/MzdnKWi/lVpcoPsHh/M5fj+Z
         YraQ==
X-Gm-Message-State: AAQBX9cIaPkGbTGza4CQHMJtrVSmfJ98EdO5zTIaYFt5wPvodWBtjcuW
	PIL3FwOKheKJuXe07uau6BLfCwYc
X-Google-Smtp-Source: AKy350YiW/RgBcdrDWvcsi4/QmLqcZmY+jKO98eibRooGmPHFN7cNE5Nwwltck2kC0aIMnW0VwZMow==
X-Received: by 2002:a17:907:7851:b0:94f:3b29:e0a5 with SMTP id lb17-20020a170907785100b0094f3b29e0a5mr1216357ejc.20.1682062251073;
        Fri, 21 Apr 2023 00:30:51 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id w27-20020a17090633db00b0094ed0370f8fsm1734575eja.147.2023.04.21.00.30.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:30:50 -0700 (PDT)
Message-ID: <3adc1c05-b707-6caf-874e-dfef065c8ab8@linaro.org>
Date: Fri, 21 Apr 2023 09:30:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Justin Chen <justinpopo6@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, bcm-kernel-feedback-list@broadcom.com
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-3-git-send-email-justinpopo6@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1681863018-28006-3-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,broadcom.com];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1D5BF3E944
X-Spamd-Bar: --
Message-ID-Hash: M3OP6DSSOWHZQWDFLMZOGYO2UI5BYFID
X-Message-ID-Hash: M3OP6DSSOWHZQWDFLMZOGYO2UI5BYFID
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 2/6] dt-bindings: net: brcm,unimac-mdio: Add asp-v2.0
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M3OP6DSSOWHZQWDFLMZOGYO2UI5BYFID/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 19/04/2023 02:10, Justin Chen wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> The ASP 2.0 Ethernet controller uses a brcm unimac.
> 
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
> index 0be426ee1e44..6684810fcbf0 100644
> --- a/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
> +++ b/Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
> @@ -22,6 +22,8 @@ properties:
>        - brcm,genet-mdio-v3
>        - brcm,genet-mdio-v4
>        - brcm,genet-mdio-v5
> +      - brcm,asp-v2.0-mdio
> +      - brcm,asp-v2.1-mdio

Same concerns as on previous patch.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

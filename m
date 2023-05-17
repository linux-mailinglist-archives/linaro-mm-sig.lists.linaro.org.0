Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3B8707254
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 21:38:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9FB243C5E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 19:38:22 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id CDE803EA46
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 19:38:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=bbeQg4UD;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.208.43 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-510d6e1f1b2so1766132a12.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 12:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684352298; x=1686944298;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rYmCHe0UBx3C/dX8F6gPo606NtkPLb/fdOD1RWdJzkg=;
        b=bbeQg4UD9JQf6erRpGuPGkJefSXLT4EZPw4GEbdgBk0mXwtrOrR9bcUXhDi2lPmrN2
         SY7yGEyaW4rOcHsYnmhfbfOIS6WJ1P72cT7qjNOpW9e9rc3FGcQFKOsbTXyqHZrtQ899
         lqRpczEhCKHYqw4X4HXrLygrQOA/mDNmvSVqGhyLDEWHWAB/zQr8JeHGMe+cc++jTX3+
         eSn13zJdh+MYPqS1jaJc+8KRvKuuUOk4u1xn97NQgP9w5RgbAMncMp8edZUiMeKMhSn8
         2tX7xLkDwu4v49tQ/OTjPCt9qR94Xz6440yAu01sLictaBqTjYddsFD9G6rN0sIRFkMS
         RaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684352298; x=1686944298;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rYmCHe0UBx3C/dX8F6gPo606NtkPLb/fdOD1RWdJzkg=;
        b=KvZ524nAvZdRSe5ueYGu7rZWFxsSG22oolXsO7lXSBsbB4qTtnto4MXw6zh8xQu7IJ
         0zFrHsWN7eKrk3mGAt2subSDVsyquFtIqEtpJZaZvoMLKM2CuZhHGKZP+wB/S9bFB4FW
         qOQBdeLQYCRPMnb4qPSJKV9ZvTg/WTtofPhpx/96JH7BZZm9cJnZAZ3ZvdD3SEGhztWd
         Tnty5L6zcYDcDYjT5BPXhm3MGF26JyyDKgrFFZhJF4hsX3gMXsobHHHeg9Hvb1Cc8BeS
         qem4QF8LSIaigb7VMKA8UH3Ji9Ef3WsOBVVKW1S69xiYvELxR1m4gcqBnoMUuX21tvP9
         hRbQ==
X-Gm-Message-State: AC+VfDz0Il6vBxeiuf8IBm8yHL/jiydYshoAyhEskeZts1wAb+WiJsXi
	VmTjkLqsTCadI/LycpOr2nAeYgJE
X-Google-Smtp-Source: ACHHUZ6obEbka8NNsbD0h9cxmp9F7B27iNr6Z+hy4ts3KoIhfXd8UU80M7LYR8OdkLm5EMLFayAcTw==
X-Received: by 2002:a17:907:97d0:b0:96a:2210:add8 with SMTP id js16-20020a17090797d000b0096a2210add8mr25616124ejc.8.1684352297680;
        Wed, 17 May 2023 12:38:17 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d7a:e7cc:21b3:c435? ([2a02:810d:15c0:828:d7a:e7cc:21b3:c435])
        by smtp.gmail.com with ESMTPSA id h15-20020a1709067ccf00b0094f23480619sm12833636ejp.172.2023.05.17.12.38.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:38:17 -0700 (PDT)
Message-ID: <f0469fcb-a1ef-77a2-a8ab-40ab8d91bff7@linaro.org>
Date: Wed, 17 May 2023 21:38:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexandre Bailon <abailon@baylibre.com>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-8-abailon@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517145237.295461-8-abailon@baylibre.com>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
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
X-Rspamd-Queue-Id: CDE803EA46
X-Spamd-Bar: --
Message-ID-Hash: LCS2MJKNX5LINIL3RZXYXVMKQYON463H
X-Message-ID-Hash: LCS2MJKNX5LINIL3RZXYXVMKQYON463H
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LCS2MJKNX5LINIL3RZXYXVMKQYON463H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 17/05/2023 16:52, Alexandre Bailon wrote:
> This adds the device tree bindings for the APU DRM driver.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> Reviewed-by: Julien Stephan <jstephan@baylibre.com>

There are so many errors in this patch... that for sure it was not
tested. Reduced review, except what was already said:

> ---
>  .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> new file mode 100644
> index 000000000000..6f432d3ea478
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/mediatek,apu-drm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AI Processor Unit DRM
> +
> +properties:
> +  compatible:
> +    const: mediatek,apu-drm

drm is not hardware. Drop everywhere or explain the acronym. If you
explain it like Linux explains, then: drm is not hardware.

> +
> +  remoteproc:
> +    maxItems: 2
> +    description:
> +      Handle to remoteproc devices controlling the APU

Missing type/ref. Does not look like generic property, so missing vendor
prefix.

> +
> +  iova:
> +    maxItems: 1
> +    description:
> +      Address and size of virtual memory that could used by the APU

So it is a reg?

> +
> +required:
> +  - compatible
> +  - remoteproc
> +  - iova
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    apu@0 {

Where is reg? @0 says you have it...

> +      compatible = "mediatek,apu-drm";
> +      remoteproc = <&vpu0>, <&vpu1>;
> +      iova = <0 0x60000000 0 0x10000000>;

Why would you store virtual address, not real, in DT? Let's say you have
some randomization like KASLR. How is it going to work? Drop, it is not
hardware property.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

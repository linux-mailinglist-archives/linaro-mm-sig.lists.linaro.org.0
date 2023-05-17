Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFA070726B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 21:41:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A0323F241
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 19:41:52 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by lists.linaro.org (Postfix) with ESMTPS id 9E0813E963
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 19:41:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=JeDzLUDQ;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.208.44 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-510dabb3989so1093248a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 12:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684352507; x=1686944507;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AE8+B3pWQ4l7QxfBqXUnPyiVc+aZlt+BtRcwXsFR3Kg=;
        b=JeDzLUDQ2pq/eW+97XnNWJdM/lObXBgEGxcH7lBWg6seb0FFwdy+Skry85v27s6EvM
         QkKH/tarHJPDjjQLK1puuvgut2LSyAGVlXvtgQk85PVSFy2ZrpUXtZCoQdoEG4NYgMJq
         ecYIECc3PBpmL8RasuQeCZ8hXX7hhxfC2bTTNXwk7kQw9Yp3FrTvUxxIvUe9j2IPmmj8
         XYAnodyLH69Fi5r5Z0kVGXZz57/Xitgrslunok7K0u2BrSApjH7yzTPKUGDHH4SwwMj1
         bnIg4tChp1M9aS3koD+8rutqnoTrCa3Cc+09L8PFzVd5FnecZA/i+KSehJoymjAUhr21
         QwXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684352507; x=1686944507;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AE8+B3pWQ4l7QxfBqXUnPyiVc+aZlt+BtRcwXsFR3Kg=;
        b=Lon0aYizoGml+m+W4c80b4sZ9i/g4tFxRMnQJzM9qKP/WRjY/TnlsgW13nvl7iIYAa
         DtVLkORuqqiVQAW5komEVOZGB/f7l2v1m9g40v4wDlLDoj2v566W7zplTnBhjs6RAOlg
         G+BEdPE7bDz1l2FL6pxpA1FTwjFaPQW/KZUJSSzB1b/UtZKuYah0XUELDBPITKkRATjs
         25ZfsBRY+r8jAqUCYt/oIwfUx3qWF54hK89NsnjTaeX6PookRzUhowSIIpCHEvnotzIu
         BzgI6ewh6Pb436FPVKbDT2GcKfTKgoX9HgSK0E8u3DvgYisnbQSiwNGbc3iFanMClUyn
         Bc2A==
X-Gm-Message-State: AC+VfDwbygBNGxwcY/0qilJZ1OiRdkVY44Z36ZLVEPOLoEmgFw1nyI3b
	Galr4B/tHoW3eeQHV4dqpMLZjYN3
X-Google-Smtp-Source: ACHHUZ4Qg3tRhWiRB2mnHGaX2Qu65CxTKUwvjCQnfKZkAA1h5PCV5S9tuiMPT1sXlI8/YMjQYOhZ5A==
X-Received: by 2002:a17:907:8a04:b0:95f:de3c:6c98 with SMTP id sc4-20020a1709078a0400b0095fde3c6c98mr39648716ejc.58.1684352507571;
        Wed, 17 May 2023 12:41:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d7a:e7cc:21b3:c435? ([2a02:810d:15c0:828:d7a:e7cc:21b3:c435])
        by smtp.gmail.com with ESMTPSA id og16-20020a1709071dd000b0096637a19dcasm12671085ejc.4.2023.05.17.12.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:41:47 -0700 (PDT)
Message-ID: <ffd620e7-66ae-2921-85c0-c81070c09e01@linaro.org>
Date: Wed, 17 May 2023 21:41:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Bailon <abailon@baylibre.com>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-8-abailon@baylibre.com>
 <f0469fcb-a1ef-77a2-a8ab-40ab8d91bff7@linaro.org>
In-Reply-To: <f0469fcb-a1ef-77a2-a8ab-40ab8d91bff7@linaro.org>
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.44:from];
	URIBL_BLOCKED(0.00)[baylibre.com:email,devicetree.org:url,linaro.org:dkim];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9E0813E963
X-Spamd-Bar: ------
Message-ID-Hash: WHTPFSDLTFXKKLJ72HWDIDKR3AUF2ZKP
X-Message-ID-Hash: WHTPFSDLTFXKKLJ72HWDIDKR3AUF2ZKP
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WHTPFSDLTFXKKLJ72HWDIDKR3AUF2ZKP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 17/05/2023 21:38, Krzysztof Kozlowski wrote:
> On 17/05/2023 16:52, Alexandre Bailon wrote:
>> This adds the device tree bindings for the APU DRM driver.
>>
>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>> Reviewed-by: Julien Stephan <jstephan@baylibre.com>
> 
> There are so many errors in this patch... that for sure it was not
> tested. Reduced review, except what was already said:
> 
>> ---
>>  .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++
>>  1 file changed, 38 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
>> new file mode 100644
>> index 000000000000..6f432d3ea478
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
>> @@ -0,0 +1,38 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/gpu/mediatek,apu-drm.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: AI Processor Unit DRM
>> +
>> +properties:
>> +  compatible:
>> +    const: mediatek,apu-drm
> 
> drm is not hardware. Drop everywhere or explain the acronym. If you
> explain it like Linux explains, then: drm is not hardware.
> 
>> +
>> +  remoteproc:
>> +    maxItems: 2
>> +    description:
>> +      Handle to remoteproc devices controlling the APU
> 
> Missing type/ref. Does not look like generic property, so missing vendor
> prefix.
> 
>> +
>> +  iova:
>> +    maxItems: 1
>> +    description:
>> +      Address and size of virtual memory that could used by the APU
> 
> So it is a reg?
> 
>> +
>> +required:
>> +  - compatible
>> +  - remoteproc
>> +  - iova
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    apu@0 {
> 
> Where is reg? @0 says you have it...
> 
>> +      compatible = "mediatek,apu-drm";
>> +      remoteproc = <&vpu0>, <&vpu1>;
>> +      iova = <0 0x60000000 0 0x10000000>;
> 
> Why would you store virtual address, not real, in DT? Let's say you have
> some randomization like KASLR. How is it going to work? Drop, it is not
> hardware property.

Actually RANDOMIZE_BASE. KASLR randomizes the physical.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

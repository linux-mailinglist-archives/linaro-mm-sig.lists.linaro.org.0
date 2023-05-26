Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAB2712925
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 May 2023 17:08:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 951A74030A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 May 2023 15:08:53 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 1DA673EE6A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 May 2023 15:08:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=D8329d5g;
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-30adb83aa69so408055f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 26 May 2023 08:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685113728; x=1687705728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RQDPpbfKxYac4dFfl3UOiv7iiv3UKto2YwW9RD/lJd4=;
        b=D8329d5gDBuupuw18ee7CiQedAqaHbalYu/5ad/0HLx8pzNJB/B/nXPqeXbg3zAn47
         UPrnWRMAm7bG90BMHhmY3n+VpBQQlENz9uTjY0+zpdv1cT8jbn49d562/eYMTZuYqhaE
         jYA1F+tj07JByXOexpqVnp32QWw6tjLsztNKTrHvXKu3Davn4xKVGIH1Y57SOpVjD20W
         OMAE1twiDb3hwtTTAn3q+ncHQjS6yUWcoP8TeAY32wV4CwfQ8TRSn904UgqFpjjw7VBD
         bzKazNedaXMHzxlBYF69bMm/ufjJ/1nFo4ejX/7ZVnMxqnyj/xDsr55nL9Aq142D8x7l
         6whg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685113728; x=1687705728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RQDPpbfKxYac4dFfl3UOiv7iiv3UKto2YwW9RD/lJd4=;
        b=DhCUEOQj6hKOP2vhRhjQG4hqDNLfPUvsQV7vvgBNHwF12TdknoMagZuQij1z8URxQ0
         LfG//Jsu8VyaUHMWU7PcujypFp2XaLiQh2s3lOOoXDo0nWp2hVikchkxmkFOTf/Q4DTY
         rfSeOf1LNcu3dtO+FpQYDlIs3ol76y7b2uGcRioIycdKR18IkP4LHn+gZimhYdg9J7bn
         vUJpNHyUSLcnetsLPgFKWUJIt5TirUFQ9rHj31fTJvYPXYlJh+KAWwIDBKsiK+84L7Zp
         +7FCQiEElV3+CY/s03f5roAM8Z5pbR6EmRXMs3M8YfIZSKC0eo3cjbAV8GHAn9hgoHzJ
         9fpw==
X-Gm-Message-State: AC+VfDz69EHGOg/phY3HeIXj+6vebzXOI7YsNlPHJWDqFghKQPJNbY8L
	F7VJUXDXSz+aHNF+nR73Cdo7MQ==
X-Google-Smtp-Source: ACHHUZ6Ur52z92yD9zQLf8/rpAwoOXof7X3dA6SmUIkLpPmI1FzD2sW7X7Z8flkFpqVtem4zLqfZ0w==
X-Received: by 2002:a5d:6ac4:0:b0:309:e24:57b0 with SMTP id u4-20020a5d6ac4000000b003090e2457b0mr1955408wrw.30.1685113728030;
        Fri, 26 May 2023 08:08:48 -0700 (PDT)
Received: from [10.1.4.6] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id 10-20020a05600c228a00b003f42461ac75sm9055828wmf.12.2023.05.26.08.08.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:08:47 -0700 (PDT)
Message-ID: <f605a653-ba94-7a8c-1bfa-4c18f5d25da7@baylibre.com>
Date: Fri, 26 May 2023 17:08:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-6-abailon@baylibre.com>
 <032699a0-9a43-953a-60e9-59a515a26cef@linaro.org>
Content-Language: en-US
From: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <032699a0-9a43-953a-60e9-59a515a26cef@linaro.org>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.49:from];
	DMARC_NA(0.00)[baylibre.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1DA673EE6A
X-Spamd-Bar: -
Message-ID-Hash: RROVRVC5S3TSQ5DSEEA44ZOBVYHYBZ7P
X-Message-ID-Hash: RROVRVC5S3TSQ5DSEEA44ZOBVYHYBZ7P
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/7] drm/apu: allow platform driver to implement their own mmap function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RROVRVC5S3TSQ5DSEEA44ZOBVYHYBZ7P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit



On 5/17/23 21:45, Krzysztof Kozlowski wrote:
> On 17/05/2023 16:52, Alexandre Bailon wrote:
>> From: Julien Stephan <jstephan@baylibre.com>
>>
>> By default we will call drm_gem_mmap() unless the apu driver has
>> declared it's own mmap handler.
>>
>> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
>> Reviewed-by: Julien Stephan <jstephan@baylibre.com>
> 
> One does not have to review own code. We all assume that we send good
> code which we do not have to review by ourselves (by the author). We
> also assume we make mistakes, which we cannot find, thus other person's
> review is important.
I am sorry, I am the one who made the misstake.
I squashed this patch with another one I made, lost my signedof and left 
the reviewed by which indeed doesn't make any sense.

Best Regards,
Alexandre
> 
> Adding own review tag suggests you added them mechanically, so I doubt
> that they really happened.
> 
> Anyway, your SoB is missing.
> 
> Best regards,
> Krzysztof
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

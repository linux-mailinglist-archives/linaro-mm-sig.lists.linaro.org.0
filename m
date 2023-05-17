Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 490EA707284
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 21:45:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C5C63F241
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 19:45:28 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id B50453E963
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 19:45:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=pv0XlTzQ;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.218.46 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-965d2749e2eso184538666b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 12:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684352722; x=1686944722;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DE2bkq/ui14lTBLwtUifajE1EvCpc5Pz1BLS66HrLtI=;
        b=pv0XlTzQm0AHDjnYWXA2DFOwY89iONL+pcihwOPnY2/55ELz63O65AuRo8sYRyVtfY
         j4tyirV1rIXbj4sCHOWqTTlOuOSMW2jmK6+rtIOpV7Ka2tulKz/6eWhdbUWijx9Bu6Gb
         ByIIf6pn51KS6teavMyaKat3eWK8I4nOHiWfDQvcdP/Uw0gfXBXnQIrIc/pz6cz6nVR5
         Iy4x6JykOjawxDUZa1NyETS4srgGmwuaVLOaP/oJC0+uKgaPHr9cFO+fpRAAlIcMNtcy
         nhs72woQacj+sq+ZLnu7DXHUJfQ74vtfFxKgtJUnmVCafSnNEWvepe5r3nD9pz3VWUP9
         vy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684352722; x=1686944722;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DE2bkq/ui14lTBLwtUifajE1EvCpc5Pz1BLS66HrLtI=;
        b=OKTVbk8ZNrI3tjeoKBg4tnGtA10Kec87SfBuwGoEm8Twp83XEg+idnNmLL/o/Ac1T1
         DtKBh2Qm0SPhqCDjipF+2gLAefBrIg4VTT2Ne8XBjxebIESSUHbiGF6vkd7wJO6HdFmn
         V7cadYJr97LfI07ltT67H4eJ5+dSqlCfPd4SMLof0ZU+Nx0JBiWpuY6OvUdjXZpLzUhD
         X6E3CCpXkGKUJtcK8qxLfJGQ3guK8CQb4HVHPB/uNpIMrQbEqw3/dJmzDPM0nC6MtaDe
         Ub/Dd5//+gzAtqKDU/p4AxwvRSX111zFHt6fDltexjfglTKHofzMKiaZUml+IpieDkFm
         l33w==
X-Gm-Message-State: AC+VfDzhjM0GTAjEc2eWuxWzZyatGlc5S9qroipylO+FTA1WF1v39zy6
	zKWLhT5HY9hy2M0ureFZxvR+l+fi
X-Google-Smtp-Source: ACHHUZ6Tj8zelM2VZpR/AEzeGAQ8zj37niuO6NRBJvg0WI4NbhdxMvKTFTAAd3TJm0rHrq+VS/nWuA==
X-Received: by 2002:a17:906:eec9:b0:94f:73db:b390 with SMTP id wu9-20020a170906eec900b0094f73dbb390mr34695874ejb.65.1684352722678;
        Wed, 17 May 2023 12:45:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d7a:e7cc:21b3:c435? ([2a02:810d:15c0:828:d7a:e7cc:21b3:c435])
        by smtp.gmail.com with ESMTPSA id tf8-20020a1709078d8800b0096a2b6de3a4sm10504747ejc.122.2023.05.17.12.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:45:22 -0700 (PDT)
Message-ID: <032699a0-9a43-953a-60e9-59a515a26cef@linaro.org>
Date: Wed, 17 May 2023 21:45:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexandre Bailon <abailon@baylibre.com>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-6-abailon@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517145237.295461-6-abailon@baylibre.com>
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	URIBL_BLOCKED(0.00)[linaro.org:dkim];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B50453E963
X-Spamd-Bar: --
Message-ID-Hash: ZF4WC4QTQJOQG3JS4CWR44AIQYVLOOGB
X-Message-ID-Hash: ZF4WC4QTQJOQG3JS4CWR44AIQYVLOOGB
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/7] drm/apu: allow platform driver to implement their own mmap function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZF4WC4QTQJOQG3JS4CWR44AIQYVLOOGB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 17/05/2023 16:52, Alexandre Bailon wrote:
> From: Julien Stephan <jstephan@baylibre.com>
> 
> By default we will call drm_gem_mmap() unless the apu driver has
> declared it's own mmap handler.
> 
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> Reviewed-by: Julien Stephan <jstephan@baylibre.com>

One does not have to review own code. We all assume that we send good
code which we do not have to review by ourselves (by the author). We
also assume we make mistakes, which we cannot find, thus other person's
review is important.

Adding own review tag suggests you added them mechanically, so I doubt
that they really happened.

Anyway, your SoB is missing.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

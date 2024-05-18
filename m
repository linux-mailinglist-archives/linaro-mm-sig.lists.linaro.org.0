Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2863C8C91C9
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 May 2024 20:06:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E711A3EC0D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 18 May 2024 18:06:35 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by lists.linaro.org (Postfix) with ESMTPS id B3A9D3EC0D
	for <linaro-mm-sig@lists.linaro.org>; Sat, 18 May 2024 18:06:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=N7H8R3RA;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.210.178 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6f4ed9dc7beso1669095b3a.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 18 May 2024 11:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716055589; x=1716660389; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eNjtPFN4gwk8FY4XhBI0pqmWHSzhdefGp6JGYF0RnSc=;
        b=N7H8R3RAGf51PA17V/j+WFHm9rj85YITWOol1ur1VRy9Y9egacLtVD2PWMP/TEC6JT
         ze+EMHF8EvFqWOld+qlWYybuKPPh9LgsYmkdhFbylum92yzLaxpT5K6ssDTzeHqRNJcV
         HVNieNo2QheGkK+APCYmfp8Z/P17Osv7BL/JA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716055589; x=1716660389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eNjtPFN4gwk8FY4XhBI0pqmWHSzhdefGp6JGYF0RnSc=;
        b=iu568WfDx6odzMoDb/ozmwhTRNM1i2iNb4EenHelW48NyDt1XWD88+NVcm3/ODbqA3
         hv/UoP2Q1GUizdG10X6buIC+9arvw3tNcifqhXk2AxBn7r+2ypWYuleKFmQHer8PLL54
         vaemA1+8LU2xTSf+aqBuQpr8D+vvKn0tJwTjKg9lmpwbHXtOpt0+QRRHRFCMCVuXXc/y
         iAtO7eLy41WwBj5Kpp+RQ4eTqUUrk0SH0Oh30p/Zlq6DBAxmqPQ9faah/DDVQ3GeesOx
         CPPpVZHKrpqsMOLsVopUC1ClJmr0uBp3Grv6z6qmrbwoPLmDamfH9v977mUW/1rEJ/nH
         CAUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXc0ez1aWsNzBTSkIX8ooUj1d8D6AiRcXlpLkwbKDPstz8wgZ5LvzODgHbh3IrEy8NfAkdoHQEIsDbA4BVCUYqUUMkVGfxe56phaduX1Wo=
X-Gm-Message-State: AOJu0YyzKKGGlshTMAcOmEqTzRV32gg+ARbmiDgPKf31r3/RoXLAWlup
	Thb5jZxNZ+LdecIrRATqIjsrXMP5eddJLKis3ABW8/tDLe1i9nSfp9o1HLDqsw==
X-Google-Smtp-Source: AGHT+IHKKqnL3U4K71hLrs2mUP7g9TMCITdHz9CzBkr4YA8T0fm3oAZPwvplNN097FJEGyMYNzbtLA==
X-Received: by 2002:a05:6a00:17a7:b0:6f6:7c56:e989 with SMTP id d2e1a72fcca58-6f69fb7d5d7mr3783518b3a.2.1716055588805;
        Sat, 18 May 2024 11:06:28 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f67a5ffc54sm5978034b3a.34.2024.05.18.11.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 11:06:28 -0700 (PDT)
Date: Sat, 18 May 2024 11:06:27 -0700
From: Kees Cook <keescook@chromium.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <202405181106.99C0C03BB@keescook>
References: <d3204a5b4776553455c2cfb1def72f1dae0dba25.1716054403.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3204a5b4776553455c2cfb1def72f1dae0dba25.1716054403.git.christophe.jaillet@wanadoo.fr>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B3A9D3EC0D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	REPLY(-4.00)[];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.178:from];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[chromium.org:dkim,chromium.org:email];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[wanadoo.fr];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: ZAIP6LSY5SFBNCBFCCVPYSCS5UOODOJR
X-Message-ID-Hash: ZAIP6LSY5SFBNCBFCCVPYSCS5UOODOJR
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/fence-array: Add flex array to struct dma_fence_array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZAIP6LSY5SFBNCBFCCVPYSCS5UOODOJR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, May 18, 2024 at 07:47:02PM +0200, Christophe JAILLET wrote:
> This is an effort to get rid of all multiplications from allocation
> functions in order to prevent integer overflows [1][2].
> 
> The "struct dma_fence_array" can be refactored to add a flex array in order
> to have the "callback structures allocated behind the array" be more
> explicit.
> 
> Do so:
>    - makes the code more readable and safer.
>    - allows using __counted_by() for additional checks
>    - avoids some pointer arithmetic in dma_fence_array_enable_signaling()
> 
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#open-coded-arithmetic-in-allocator-arguments [1]
> Link: https://github.com/KSPP/linux/issues/160 [2]
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Yes please! :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

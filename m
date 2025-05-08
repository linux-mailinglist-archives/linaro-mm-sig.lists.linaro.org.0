Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B5094AAF237
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 06:51:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F12B460AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 04:51:43 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	by lists.linaro.org (Postfix) with ESMTPS id F3EAC4489D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 04:51:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=YK+8eaki;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (lists.linaro.org: domain of senozhatsky@chromium.org designates 209.85.210.170 as permitted sender) smtp.mailfrom=senozhatsky@chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-736b0c68092so550438b3a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 May 2025 21:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746679889; x=1747284689; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vH8pZApZwCxXj/zcKr2DuVOpsesqXZ3FpznsuRlEkIQ=;
        b=YK+8eakiB9h1qwDZUusFjoHIefMk0ckV5OA/6aBelK0kJngNnOWZqAgfwKujSTUE8E
         aZojAtna6UJ3OGFCLd3ILoyrjrXwAwW4l7pZzJTMoGPAldQMjPt+mhDs302gIEoW/AZp
         3bpaKY5n3EBmkKUKhOPjwgTD9aTNC6TvV5HXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746679889; x=1747284689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vH8pZApZwCxXj/zcKr2DuVOpsesqXZ3FpznsuRlEkIQ=;
        b=gz8nNyFWJ44A6RVVUzo+jEnHQgAmDRHR+cuhIutTvNBII0LfDW1DjgY9Egy5unjgsp
         wx9heHDEuaUu3LjN+HovAE4LsqI5eO4659hyZi7UWQu0woHAfmsMI1a+hbzQOYvbCS4b
         Ju6lETwKv1KDRu+kQ+9V4q0925p+ZU4hrNGhrMRg6eWW35ehif0qfPPxYy1KgbgK2ANA
         8E0R0UIRpXN7pOXaKcqUHAupNSJZXkXDbyt261EdP50vDBtD74i7a//vwAKRkJSLDkXo
         6QmUuA7Vqw4NnYz47M/aalFdA+ixUfxz8RZgNZdh2EqT82ZABPLuFk5GKL8WJFnakOfa
         ITRA==
X-Forwarded-Encrypted: i=1; AJvYcCW716pnWWfej6JzFJcXzAC3DZesgzWmAjby9iTV382g4pKR253VpcUpJ6DaxrGddQkH3/+O3aaKl1L2XDG7@lists.linaro.org
X-Gm-Message-State: AOJu0Yw8P2f0YbeH4mc4lODW5AzUZxSLq382AL24r+rmEDcBMsLitPQ7
	avivQzDqFLQOGmmSHWVPOb9qgU0xWDuD5+3ytlXuhtls9usPTHvJxH5dUQCPtg==
X-Gm-Gg: ASbGncv7e99sxS+TgVSOdSAlI2tjU41l29CInP1azmiw6MHQyTQSa6OdIQ69e9gSZFG
	zGtIGDGzo0pEV2z5jyaImrcvs06qql6aFQh2vXbQvI71E3rZDaxSSihWBRINlYBmuBml5psFzYA
	hasQmiGkpAdM28jQjaVIVcgq/FmplxffuhnRr5u0b+fV0SDNDLsUznAKtpaE8wuIRSlKJcGZbUB
	7gS1B1GLiG9Cma0cc/X0Qfkt5ieOEvlTMSH6XSGDGdvNLtG5ZRe+W0yl4n/CEq6MgpaZ9efzm9t
	cw+FpoD2BTBlNg6gy3Kc5h0tl6yhuhNrhsJes+nWKJJy
X-Google-Smtp-Source: AGHT+IHJt3oTtWnZHdDl97ybd6P+Hsv2F0EjcCAUaLYDnkgYwSOPmPUSLh8gTCh3PPuM9rSSslwTKw==
X-Received: by 2002:a05:6a00:1bca:b0:736:5504:e8b4 with SMTP id d2e1a72fcca58-7409cfaf3a7mr7364505b3a.19.1746679889147;
        Wed, 07 May 2025 21:51:29 -0700 (PDT)
Received: from google.com ([2401:fa00:8f:203:c794:38be:3be8:4c26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7405905ce9fsm12728777b3a.136.2025.05.07.21.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 21:51:28 -0700 (PDT)
Date: Thu, 8 May 2025 13:51:23 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <ravkxkfx6du2uovpfqwugtmm3ymmuswkusfiry3erslpgnvaz2@2gwxofmdfjye>
References: <20250507160913.2084079-1-m.szyprowski@samsung.com>
 <CGME20250507160921eucas1p2aa77e0930944aadaaa7c090c8d3d0e73@eucas1p2.samsung.com>
 <20250507160913.2084079-2-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507160913.2084079-2-m.szyprowski@samsung.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F3EAC4489D
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.47 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.87)[99.45%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.170:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linaro.org,lists.linux.dev,chromium.org,kernel.org,xs4all.nl,arm.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZGCVPPQ6L2BYBWTYFQXH625PJVWF5GLI
X-Message-ID-Hash: ZGCVPPQ6L2BYBWTYFQXH625PJVWF5GLI
X-MailFrom: senozhatsky@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sergey Senozhatsky <senozhatsky@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/3] media: videobuf2: use sgtable-based scatterlist wrappers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZGCVPPQ6L2BYBWTYFQXH625PJVWF5GLI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On (25/05/07 18:09), Marek Szyprowski wrote:
> Use common wrappers operating directly on the struct sg_table objects to
> fix incorrect use of scatterlists sync calls. dma_sync_sg_for_*()
> functions have to be called with the number of elements originally passed
> to dma_map_sg_*() function, not the one returned in sgt->nents.

Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

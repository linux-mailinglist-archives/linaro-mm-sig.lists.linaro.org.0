Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5D9956921
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Aug 2024 13:15:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93ABC41252
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Aug 2024 11:15:24 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 9BD983F3DE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Aug 2024 11:15:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of k.kozlowski.k@gmail.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=none)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4280ca0791bso34101795e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Aug 2024 04:15:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724066120; x=1724670920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3xEnhR+BnZyqhep0tu1+6gKqzWhCmgeh7ON3eSgIapg=;
        b=qtkD6ALkVz0eSYgsiPyPIjEEaJleMGjS/mSNeC33VBOaQFR9hvieal/u5ytrC2+ut/
         +MYo4CPo+z+9djtjUOoSqd3kLUr6ouYEToTQBKOHm3WAeXUSCF0HPDp1l+QQJXxhM+1w
         Vyfo7KUDHG/ShoS3j2/GwAHLHE9n5Upv0mRJPeQnrKtdniI5DH0aGEyUuwUrH4+Hgxma
         a2/vw4W4FN7kTyj4vTpSpHJbRMFK4BJjNVjD4hs1CrXs+IpEt9WLE9ljzf0DJGOJQRE5
         7CN80p5o9i24e8MNFLl2R2dYOF+N61VFECt7w3c1IsiYRCuclO/BeuR01k7sxnZ5uwXg
         gayA==
X-Forwarded-Encrypted: i=1; AJvYcCU0bUxznChBWlCAtBpmoxx7cRb9tL5a55DvUs9z5G3brvFXRg+oNlGjsrkO3hqSCJv9AV7IBOJaouVDopYz@lists.linaro.org
X-Gm-Message-State: AOJu0YxLnQju0Nyqll2aWZIqWz8eQXsRyRHBM0jJimSxUFn2X061h568
	SuhJ/r/C8gR7eTaUSgfa/KS+S7/TGJFsmIQl8LBxAAsbjD4F4wEw
X-Google-Smtp-Source: AGHT+IH8/p+04BfrJXSaCxwKTnTJcsz63gHT8daKI2ZKAyHVF0aeARbyLjNtxUWoElROY9FmJQ+tBw==
X-Received: by 2002:a05:600c:1c24:b0:427:9a8f:9717 with SMTP id 5b1f17b1804b1-429ed620183mr82675765e9.0.1724066120138;
        Mon, 19 Aug 2024 04:15:20 -0700 (PDT)
Received: from krzk-bin ([178.197.215.209])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-429ed784171sm105623845e9.38.2024.08.19.04.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 04:15:19 -0700 (PDT)
Date: Mon, 19 Aug 2024 13:15:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hui-Ping Chen <hpchen0nvt@gmail.com>
Message-ID: <l6t47glpxscvbr6rsq67alwpn6mcltjnxrnr3xs4qa3slqezrr@zp6a43hiwq7l>
References: <20240819092037.110260-1-hpchen0nvt@gmail.com>
 <20240819092037.110260-2-hpchen0nvt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240819092037.110260-2-hpchen0nvt@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Bar: /
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9BD983F3DE
X-Spamd-Result: default: False [-0.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	FORGED_SENDER(0.30)[krzk@kernel.org,kkozlowskik@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[kernel.org : SPF not aligned (relaxed), No valid DKIM,none];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.128.44:from,178.197.215.209:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,kkozlowskik@gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 3Y4JRP6RPLHFRZEX7DZZEBOCPDJMMTJX
X-Message-ID-Hash: 3Y4JRP6RPLHFRZEX7DZZEBOCPDJMMTJX
X-MailFrom: k.kozlowski.k@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, esben@geanix.com, linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/2] dt-bindings: mtd: nuvoton,ma35d1-nand: add new bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3Y4JRP6RPLHFRZEX7DZZEBOCPDJMMTJX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Aug 19, 2024 at 09:20:36AM +0000, Hui-Ping Chen wrote:
> Add dt-bindings for the Nuvoton MA35 SoC NAND Controller.
> 
> Signed-off-by: Hui-Ping Chen <hpchen0nvt@gmail.com>
> ---
>  .../bindings/mtd/nuvoton,ma35d1-nand.yaml     | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/nuvoton,ma35d1-nand.yaml
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

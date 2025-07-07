Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5FFAFAB32
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 07:48:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 063EA44973
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 05:47:54 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id DB7C03F61A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 05:47:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=CYuD4PVb;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 52CE05C3A6B;
	Mon,  7 Jul 2025 05:47:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EE30C4CEE3;
	Mon,  7 Jul 2025 05:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751867261;
	bh=RUg14gaLugN27TRVwpe1/3n2sC7iFkyWvPiH9pWUG9U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CYuD4PVbP0qSkgXbrQHODHCo9u5/BJOYbdMDgQAtUvpp2B7ucekEBv+AksbJPBRpP
	 8WzKchoYO8ih/2WNgc2BwGMjbSbLRwZ/JDRgyJsSvEou+QHFaGG7Pp42YtVaL9voaQ
	 kBelBtaSmUfBb78jf2ZgxiaJXUE6eY2u4as2WPBoweekJjLif26ZHZFpdZGmkbsR2A
	 5So4v0MbtIcuNnu9GpJ7MbMizRRgiAQP+PDGT3HAyciWBrofZBaOo15KBhvqAmvELw
	 qjRYUCqb0Hri3Irx1cCLavkraaTQ8IQwYewBq0Nf3IWVsF0/ymbURtoBJer16JV7lW
	 c4I+0Tiy/AY5A==
Date: Mon, 7 Jul 2025 07:47:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: shangyao lin <shangyao.lin@mediatek.com>
Message-ID: <20250707-fiery-conscious-squirrel-e0fa1e@krzk-bin>
References: <20250707013154.4055874-1-shangyao.lin@mediatek.com>
 <20250707013154.4055874-5-shangyao.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707013154.4055874-5-shangyao.lin@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DB7C03F61A
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.95 / 15.00];
	BAYES_HAM(-2.95)[99.78%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mediatek.com:email];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,mediatek.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ITVRLXVEM5GH3UYHVX3SSSYNABBPHOJS
X-Message-ID-Hash: ITVRLXVEM5GH3UYHVX3SSSYNABBPHOJS
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/13] dt-bindings: media: mediatek: add cam-yuv binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ITVRLXVEM5GH3UYHVX3SSSYNABBPHOJS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 07, 2025 at 09:31:45AM +0800, shangyao lin wrote:
> From: "shangyao.lin" <shangyao.lin@mediatek.com>
> 
> Add camera isp7x module device document.
> 
> ---
> 
> Changes in v2:
>   - Rename binding file to mediatek,mt8188-cam-yuv.yaml
>   - Various fixes per review comments
>   - Update maintainers list

Where did you post v1?

Please use standard email subjects, so with the PATCH keyword in the
title. 'git format-patch -vX' helps here to create proper versioned patches.
Another useful tool is b4. Skipping the PATCH keyword makes filtering of
emails more difficult thus making the review process less convenient.

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

> +properties:
> +  compatible:
> +    const: mediatek,mt8188-cam-yuv
> +
> +  reg:
> +    minItems: 1

What, why?

Look at other bindings.

> +    maxItems: 2
> +    description:
> +      Base address and optional inner base address of the cam-yuv hardware block.

Why are you stating obvious? From where did you take it?

> +
> +  reg-names:
> +    items:
> +      - const: base
> +      - const: inner_base
> +    minItems: 1
> +    maxItems: 2

No, really no. You did not follow any existing patterns and this binding
does not look at all as anything else. Why making this things up? Just
use recently reviewed binding as starting point.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

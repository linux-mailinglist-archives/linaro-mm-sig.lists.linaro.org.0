Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 30106AFAB39
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 07:48:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E52A44A29
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 05:48:29 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 9A5013F61A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 05:48:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HiN2X4Ib;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EE3E943BAC;
	Mon,  7 Jul 2025 05:48:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FAE0C4CEF5;
	Mon,  7 Jul 2025 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751867296;
	bh=z9QN/N6kVsbMUbthlPPWA6t1axlzGJzBvA+FmlSX6dk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HiN2X4IbQMeCVFIN1EgzFwjzH6PHJWykCp4CPCcUiCBdjfaR9tKeBzT8JCaMPeEQZ
	 UJZLeAFSPfiuwfRZQ8g8epxpxJ+yMgUlqNI2Bk8wEfcOYhS+C8IKLJCi/Q6vQPkj0P
	 OhPQoWGI3VBJNpK/XDVosYT4m8BIvCE18EKQX9GuUhyVg6VFroW0SvOg/PD89Fl0qJ
	 j+ao529CPlRJLzlT47K6WX8Ste2z/iq+gxO2kBAA7GS6k5tf2j4ZOnu+ENqyqwmafz
	 G8JaQMMz/vQL7fFMr6TH7Oc1PmYhLOZHzyc/R1HN7i61XepWAJDxYZsbAkjU0UURcP
	 0PvOlaXwIdxMw==
Date: Mon, 7 Jul 2025 07:48:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: shangyao lin <shangyao.lin@mediatek.com>
Message-ID: <20250707-crazy-loon-of-refinement-feef9e@krzk-bin>
References: <20250707013154.4055874-1-shangyao.lin@mediatek.com>
 <20250707013154.4055874-4-shangyao.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707013154.4055874-4-shangyao.lin@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9A5013F61A
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.94 / 15.00];
	BAYES_HAM(-2.94)[99.74%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
Message-ID-Hash: U3T6EDTYBBKEAFMTPKMUSOUFV7VBTWJS
X-Message-ID-Hash: U3T6EDTYBBKEAFMTPKMUSOUFV7VBTWJS
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/13] dt-bindings: media: mediatek: add cam-raw binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U3T6EDTYBBKEAFMTPKMUSOUFV7VBTWJS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 07, 2025 at 09:31:44AM +0800, shangyao lin wrote:
> From: "shangyao.lin" <shangyao.lin@mediatek.com>
> 
> Add camera isp7x module device document.
> 
> ---
> 
> Changes in v2:
>   - Rename binding file to mediatek,mt8188-cam-raw.yaml
>   - Various fixes per review comments

Which fixes? This is way too vague, considering how buggy and poor this
code is. Where was v1 of this?

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

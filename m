Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA71AFAB25
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 07:42:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EDD144A25
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 05:42:51 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 2F97B41406
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 05:42:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UYcuETOe;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8675C46179;
	Mon,  7 Jul 2025 05:42:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA5EC4CEF4;
	Mon,  7 Jul 2025 05:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751866958;
	bh=DYxEwke6KQfAip5v2Jtz2Vpn6CF/js+HUrRQ9qzGcvA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UYcuETOeDFCBCzio5Luj3iLUeQLKqO/4YJ1FYL51lb8F6z4FScS+B5tMnBlkGb9yP
	 5Mpfej0WC0NLKucQ356U0gDdjukScfT9PYSkMWfSwx4gZncxmpOCjHoNJg61j0NWsO
	 aAGd4L5BUsSj57XbmIzaW/1O9ZArSNS6czEXW6URDSIi/cJ44ylnOBp1EYe5Lv7Rh8
	 lp1v2kAYD6dsgyz3FvizlRcsBl/I0FJLiKvJjMVl+/v1vJqRYIzJZUrqI9NVHVezBL
	 9PSM4lSFImsSeG/Yd3d7I6xw2wUTLhPwWxagCH/XScIHGIJI/WZ76JEhntsIZ9Y2W8
	 UnJ/ARQ9SWzRA==
Date: Mon, 7 Jul 2025 07:42:35 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: shangyao lin <shangyao.lin@mediatek.com>
Message-ID: <20250707-amazing-catfish-of-reward-f4c5ba@krzk-bin>
References: <20250707013154.4055874-1-shangyao.lin@mediatek.com>
 <20250707013154.4055874-2-shangyao.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707013154.4055874-2-shangyao.lin@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2F97B41406
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.83 / 15.00];
	BAYES_HAM(-2.83)[99.26%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org,mediatek.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: BJT4NATOZ4VCHQ7RFORNQQXECNPVQEJ2
X-Message-ID-Hash: BJT4NATOZ4VCHQ7RFORNQQXECNPVQEJ2
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/13] dt-bindings: media: mediatek: add camisp binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BJT4NATOZ4VCHQ7RFORNQQXECNPVQEJ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Jul 07, 2025 at 09:31:42AM +0800, shangyao lin wrote:
> From: "shangyao.lin" <shangyao.lin@mediatek.com>
> 
> Add camera isp7x module device document.

Missing SoB, missing checkpatch.

> 
> ---
> 
> Changes in v2:
>   - Rename binding file to mediatek,mt8188-camisp.yaml
>   - Split bindings into four separate patches (one per YAML file)
>   - Various fixes per review comments
>   - Update maintainers list
> 
> Signed-off-by: shangyao.lin <shangyao.lin@mediatek.com>

Apply this patch and see by yourself.

This wasn't tested either, so I will skip review.

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

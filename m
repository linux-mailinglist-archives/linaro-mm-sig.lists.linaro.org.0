Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BA541706C0E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 17:04:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61DCA411F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 15:04:10 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 151353EA46
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 15:04:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=oKXUwZG9;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [IPV6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab] (unknown [IPv6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 670CD660588A;
	Wed, 17 May 2023 16:04:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684335844;
	bh=15/GPkh3GbUYvzSc+PhVVCS+jBcNyePbbCQd7vQAmVA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oKXUwZG9/NNSqz2qObRQWaH8It+qDv2WRxyA1jEfwjltkbIPLkPXAWMzt9rlK4n6U
	 508s0+CEm0QAUFmbpUaJfba/+2WjZQkSIaSI0q+ZKhwDjxTbM3bnjpwTCnY970gNTW
	 M2x+b67vXcnj1n3FTh+1b5JyPjsKMfoK2uaFs3vALadtC/Np4dMXRMkADa8zE7+vK0
	 +KqbNVfPLFHwHOH3jWtaxDB8SrcrU27c11pSCx+eCyzl/ZTEl0c+ZU6YOYz56j4rad
	 hit+TkEHkn3KPk1c9uTpq+nllv/yuAXEmqVhI6CynmLCmcJAOYz8azGU3rkbosmCgQ
	 hMvQnoCCX+2tA==
Message-ID: <c32f0c3f-b43a-7045-38cc-2c11c7bb571e@collabora.com>
Date: Wed, 17 May 2023 17:04:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Alexandre Bailon <abailon@baylibre.com>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-8-abailon@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230517145237.295461-8-abailon@baylibre.com>
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[baylibre.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[collabora.com:dkim,devicetree.org:url];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 151353EA46
X-Spamd-Bar: --
Message-ID-Hash: 3CRGNH6FOITN54OARY6AUIHQMSD4Z2QE
X-Message-ID-Hash: 3CRGNH6FOITN54OARY6AUIHQMSD4Z2QE
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3CRGNH6FOITN54OARY6AUIHQMSD4Z2QE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 17/05/23 16:52, Alexandre Bailon ha scritto:
> This adds the device tree bindings for the APU DRM driver.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> Reviewed-by: Julien Stephan <jstephan@baylibre.com>
> ---
>   .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++

mediatek,mt(model)-apu.yaml

>   1 file changed, 38 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
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

const: mediatek,mt8195-apu (or whatever else).

...besides, I don't think that this patch even belongs to this series? :-)
Spoiler alert! :-)

Cheers,
Angelo


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

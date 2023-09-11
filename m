Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5654E79A9E7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 17:45:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37EE83F52A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 15:45:01 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 5CB903EAC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Sep 2023 15:44:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KeFuPBsx;
	spf=pass (lists.linaro.org: domain of "SRS0=myou=E3=robh_at_kernel.org=rob@kernel.org" designates 145.40.73.55 as permitted sender) smtp.mailfrom="SRS0=myou=E3=robh_at_kernel.org=rob@kernel.org";
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 93CADCE10DB;
	Mon, 11 Sep 2023 15:44:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 208B9C433C8;
	Mon, 11 Sep 2023 15:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694447091;
	bh=UypZKzekW0Fnyf/smilvBj2pL+glSdtZ2s73jeqIa1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KeFuPBsx5eG593nKlIqcbZckZNxJOEEWxbPFIgnX1pqMeBsyDlT0J4/elUxqs8uGw
	 319DNMooXPc1YxiFXes6YWrgimtBwvCdbQDSWraDVqjIduYr+yItGP2o/Bk6LCtUBG
	 9c7wAGtZBSZ7lS3tYpdRGX1XV6EW8hKIyadGhk+8XrqQX/qJA3i3pB3MbDCN+pLjkN
	 ANBdfpsd6v+pbUezujnXqEKfaWEBk07zeD8PCfFa+IZJe3x8ZGlrC8wnyckx7HH3vT
	 XSu3biW8py3ETqCF6rMlRW764U5RTVQDmHb0ajfh7qG2B/2kb5JHmmxx/lczXeeMDy
	 OoW5AY0nLzs8Q==
Received: (nullmailer pid 1295173 invoked by uid 1000);
	Mon, 11 Sep 2023 15:44:48 -0000
Date: Mon, 11 Sep 2023 10:44:48 -0500
From: Rob Herring <robh@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <20230911154448.GA1279317-robh@kernel.org>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-9-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230911023038.30649-9-yong.wu@mediatek.com>
X-Rspamd-Queue-Id: 5CB903EAC0
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	FORGED_SENDER(0.30)[robh@kernel.org,SRS0=myou=E3=robh_at_kernel.org=rob@kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:sin.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,kernel.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,mediatek.com];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,SRS0=myou=E3=robh_at_kernel.org=rob@kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	BLOCKLISTDE_FAIL(0.00)[145.40.73.55:server fail];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,mediatek.com:email]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: H7PRSKRJA5MH3FL7H2MCSETS4BTAOOBW
X-Message-ID-Hash: H7PRSKRJA5MH3FL7H2MCSETS4BTAOOBW
X-MailFrom: SRS0=myou=E3=robh_at_kernel.org=rob@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7PRSKRJA5MH3FL7H2MCSETS4BTAOOBW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, Sep 11, 2023 at 10:30:37AM +0800, Yong Wu wrote:
> This adds the binding for describing a CMA memory for MediaTek SVP(Secure
> Video Path).

CMA is a Linux thing. How is this related to CMA?

> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  .../mediatek,secure_cma_chunkmem.yaml         | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml b/Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml
> new file mode 100644
> index 000000000000..cc10e00d35c4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,secure_cma_chunkmem.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/mediatek,secure_cma_chunkmem.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Secure Video Path Reserved Memory

What makes this specific to Mediatek? Secure video path is fairly 
common, right?

> +
> +description:
> +  This binding describes the reserved memory for secure video path.
> +
> +maintainers:
> +  - Yong Wu <yong.wu@mediatek.com>
> +
> +allOf:
> +  - $ref: reserved-memory.yaml
> +
> +properties:
> +  compatible:
> +    const: mediatek,secure_cma_chunkmem
> +
> +required:
> +  - compatible
> +  - reg
> +  - reusable
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +
> +    reserved-memory {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        reserved-memory@80000000 {
> +            compatible = "mediatek,secure_cma_chunkmem";
> +            reusable;
> +            reg = <0x80000000 0x18000000>;
> +        };
> +    };
> -- 
> 2.25.1
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5645FCE859E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Dec 2025 00:39:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B2494013F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Dec 2025 23:39:32 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 3E58F3F76D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Dec 2025 23:39:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=icO1QuhO;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ACFE56000A;
	Mon, 29 Dec 2025 23:39:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25287C4CEF7;
	Mon, 29 Dec 2025 23:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767051566;
	bh=EmSJ5RDGVomtHdjap3p2iZ3idrkRaL1n89LOHs60OJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=icO1QuhOjcRTRYphaT9ckAEZt0a0F+8OshHNBctrUvrJXtiiy7JaMhapPmNeMdbbH
	 FxF/OsXFQt969xNxNdQtlo2E5D0g43ylTD/qTFQf8pfELCjts7u+xl9lxFMgFc4nwb
	 XH+1qzLXwx6wQKy7+NXrxQpJD0N6Rp+NTLaKPtkzC3tlxnQns8GrJjZ2HWgNdHOrbH
	 nP+wLabskLg8g0/SDbxwZvpG9xIbWVosokA3/pdLKS4HKzoGwB4WAVYe9XXZS+TkdB
	 mrRMRwFEn5eHYbKrCWo402kuwyHMpxP6G8soqrjfkKkummYcTTccAb4cTtNqcbZrSf
	 zdJXogqnZM0gw==
Date: Mon, 29 Dec 2025 17:39:25 -0600
From: Rob Herring <robh@kernel.org>
To: Alain Volmat <alain.volmat@foss.st.com>
Message-ID: <20251229233925.GA2796847-robh@kernel.org>
References: <20251218-stm32-dcmi-dma-chaining-v1-0-39948ca6cbf6@foss.st.com>
 <20251218-stm32-dcmi-dma-chaining-v1-9-39948ca6cbf6@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251218-stm32-dcmi-dma-chaining-v1-9-39948ca6cbf6@foss.st.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[172.105.4.254:server fail,100.75.92.58:server fail];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[foss.st.com,kernel.org,gmail.com,linaro.org,amd.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3E58F3F76D
X-Spamd-Bar: --
Message-ID-Hash: ZHCEJMVUMFNYKWJ4TKZHY57WJV6VES7F
X-Message-ID-Hash: ZHCEJMVUMFNYKWJ4TKZHY57WJV6VES7F
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/12] dt-bindings: media: st: dcmi: add DMA-MDMA chaining properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZHCEJMVUMFNYKWJ4TKZHY57WJV6VES7F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 18, 2025 at 07:44:49PM +0100, Alain Volmat wrote:
> Add properties update and new sram property necessary in order
> to enable the DMA-MDMA chaining.
> 
> Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> ---
>  Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> index 34147127192f..ccaa2d0a2669 100644
> --- a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> +++ b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> @@ -27,11 +27,14 @@ properties:
>        - const: mclk
>  
>    dmas:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    dma-names:
>      items:
>        - const: tx
> +      - const: mdma_tx
> +    minItems: 1
>  
>    resets:
>      maxItems: 1
> @@ -40,6 +43,14 @@ properties:
>      minItems: 1
>      maxItems: 2
>  
> +  sram:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandles to a reserved SRAM region which is used as temporary

phandle to...

> +      storage memory between DMA and MDMA engines.

> +      The region should be defined as child nodes of the AHB SRAM node
> +      as per the generic bindings in Documentation/devicetree/bindings/sram/sram.yaml

Drop this sentence.

Rob
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

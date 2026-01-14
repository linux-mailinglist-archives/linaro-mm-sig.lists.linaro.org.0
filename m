Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA40D21736
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 22:52:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4F2F13F777
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 21:52:12 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 85CDB3F777
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 21:52:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=kwWwxiky;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E1728437C2;
	Wed, 14 Jan 2026 21:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B14CC4CEF7;
	Wed, 14 Jan 2026 21:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768427524;
	bh=M1gJhCbLOU4I/BZFPxEOzvEA0Bnn9+kKwnxcwbbgbkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kwWwxikyHO4uMF7uRfY8WsAKTfTOC5gGgvBeg80DGMtleeRKM40iWnh8pdsn4DKtp
	 q3Y+R51snbfadJlsqcQeacKH64t3GUoczhhBU38DtbP1sMw06HgZmdfHubYNXatH1f
	 Uj3y3WqXHdBr5rDXDrwOO6/BBE9pOxRD73krvnp661saWIQ3hjOh4GCHlOXMS1nLxV
	 AhBWXK1AHTENiCh5Usa0mwV6rXL6dAFEXxm4CxblQmzHW9SqxakDsS+IOsHhSFRFaF
	 PFUV/1ffmIP+0IHbpsi1UQ/iBwZbkUr5wD6CULCpPSQ/eFEiBcsJPSfEon0yr2gxHz
	 I1+eqycXqmEMA==
Date: Wed, 14 Jan 2026 15:52:03 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Alain Volmat <alain.volmat@foss.st.com>
Message-ID: <176842752326.3259543.1333457446847101857.robh@kernel.org>
References: <20260106-stm32-dcmi-dma-chaining-v2-0-70688bccd80a@foss.st.com>
 <20260106-stm32-dcmi-dma-chaining-v2-9-70688bccd80a@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106-stm32-dcmi-dma-chaining-v2-9-70688bccd80a@foss.st.com>
X-Rspamd-Queue-Id: 85CDB3F777
X-Spamd-Bar: --
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,amd.com,linaro.org,lists.linaro.org,kernel.org,foss.st.com,lists.infradead.org,st-md-mailman.stormreply.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DHTDG2POMIT2JSGMMHXPAC4H3DVIV7F4
X-Message-ID-Hash: DHTDG2POMIT2JSGMMHXPAC4H3DVIV7F4
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, devicetree@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Hugues Fruchet <hugues.fruchet@foss.st.com>, linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org, Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 09/12] dt-bindings: media: st: dcmi: add DMA-MDMA chaining properties
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DHTDG2POMIT2JSGMMHXPAC4H3DVIV7F4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Tue, 06 Jan 2026 12:34:37 +0100, Alain Volmat wrote:
> Add properties update and new sram property necessary in order
> to enable the DMA-MDMA chaining.
> 
> Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> 
> ---
> Change in v2:
>   - correct typo (phandles -> phandle)
>   - remove explanation about generic binding sram.yaml
> ---
>  Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

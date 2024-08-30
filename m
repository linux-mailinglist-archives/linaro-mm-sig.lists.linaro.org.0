Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D4B965A02
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 10:20:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6455341126
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Aug 2024 08:20:24 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 4338C40F1F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Aug 2024 08:20:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=S6pf6yW2;
	spf=pass (lists.linaro.org: domain of krzk@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=krzk@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 76C34AE3A49;
	Fri, 30 Aug 2024 08:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E93A5C4CEC2;
	Fri, 30 Aug 2024 08:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725006019;
	bh=8BnN5DBF5PyD8ejLqZl3nUmYt2pMYCYaD3RZT+KL8Js=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S6pf6yW2mEYxVJ8pMscwAphZR8+YV89giq2YbpUBupjpdXp7czVUvq3xG7G9XnRRH
	 zw9ou5Lps/5xdysFVs4DY9PKf2t7oaoQAbZwp4bWCMp+6SlBwTrbYTMWbPKudpor5P
	 zDCFaVZK7RIAlxf8qVydbijUBKgYCvOZlGTQHoYjCmidvs6ShU4NyaQnBiLIbI2vuj
	 htfEL+cm2DaqDVqoCsYSJCBVRtteeljSo2+z7tzzWcc/c68Xbj7Xhmy06B8zOxapOL
	 zf+1CsvX2G7hRz+n5ZIEfixA+8M/2DBMCQygmQMVcgSoUvfiUP6+Lt2dZ6xUvH5inO
	 jtqr7UnuG+dtA==
Date: Fri, 30 Aug 2024 10:20:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jens Wiklander <jens.wiklander@linaro.org>
Message-ID: <3bqb6mktkvbdl6h4eekad4mpjhyvzx7mjidhnanboygbwu2asz@6ros56bp6isd>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-4-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830070351.2855919-4-jens.wiklander@linaro.org>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4338C40F1F
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
Message-ID-Hash: FNVDGUVLZOPQGJEUJGJT7EUGAIRQ4KVG
X-Message-ID-Hash: FNVDGUVLZOPQGJEUJGJT7EUGAIRQ4KVG
X-MailFrom: krzk@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 3/4] dt-bindings: reserved-memory: add linaro,restricted-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FNVDGUVLZOPQGJEUJGJT7EUGAIRQ4KVG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Aug 30, 2024 at 09:03:50AM +0200, Jens Wiklander wrote:
> From: Olivier Masse <olivier.masse@nxp.com>
> 
> DMABUF reserved memory definition for OP-TEE secure data path feature.
> 
> Signed-off-by: Olivier Masse <olivier.masse@nxp.com>
> Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
> ---
>  .../linaro,restricted-heap.yaml               | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml b/Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml
> new file mode 100644
> index 000000000000..0ab87cf02775
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/linaro,restricted-heap.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Linaro Secure DMABUF Heap
> +
> +maintainers:
> +  - Olivier Masse <olivier.masse@nxp.com>
> +
> +description:
> +  Linaro OP-TEE firmware needs a reserved memory for the
> +  Secure Data Path feature (aka SDP).
> +  The purpose is to provide a restricted memory heap which allow
> +  the normal world OS (REE) to allocate/free restricted buffers.
> +  The TEE is reponsible for protecting the SDP memory buffers.
> +  TEE Trusted Application can access restricted memory references
> +  provided as parameters (DMABUF file descriptor).

And what is the difference from regular reserved memory? Why it cannot
be used?

> +
> +allOf:
> +  - $ref: "reserved-memory.yaml"

It does not look like you tested the bindings, at least after quick
look. Please run  (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

> +
> +properties:
> +  compatible:
> +    const: linaro,restricted-heap
> +
> +  reg:
> +    description:
> +      Region of memory reserved for OP-TEE SDP feature
> +
> +  no-map:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Avoid creating a virtual mapping of the region as part of the OS'
> +      standard mapping of system memory.
> +
> +unevaluatedProperties: false

This goes after "required:" block.

> +
> +required:
> +  - compatible
> +  - reg
> +  - no-map
> +
> +examples:
> +  - |
> +  reserved-memory {
> +    #address-cells = <2>;
> +    #size-cells = <2>;
> +
> +    sdp@3e800000 {
> +      compatible = "linaro,restricted-heap";
> +      no-map;
> +      reg = <0 0x3E800000 0 0x00400000>;

lowercase hex

Best regards,
Krzysztof

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

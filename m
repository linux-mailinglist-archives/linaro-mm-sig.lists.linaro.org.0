Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B79A0ABAE08
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 May 2025 07:25:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 99640459A5
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 May 2025 05:25:30 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 7FBDA3F6AC
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 May 2025 05:25:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Uddf+1di;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B4BB443F39;
	Sun, 18 May 2025 05:25:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5340BC4CEE7;
	Sun, 18 May 2025 05:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747545918;
	bh=AWPQKMivdFQ6QmrVDoYacp12BqW2VCLe3IzFWlx64xM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Uddf+1dieisNoH5HrzBDXIHf+XM/7yA77U2KRhS2q6tR81GDcVB9v/mYh2h62VqaD
	 WTib9Ay53Y38HQv8TLgBawwLp7oz+us2AswrD2zSr8m5xFh0y7/oihlt4vWTbJ10tH
	 0CbPcK0vEmciqRnw1GgZ9yTKetxtG5j/7qnutrwu9q6tWgEDaA8c3HBOYLsm3jtnbn
	 g7y18sq64MRK10QUcXvN4ufwWBBFUN9R3Su6qXvNNeebYXuGCm8NY04ZlLW6FWJ+9S
	 0huaTBXXSON7Szj16/+FuQDS90G59z8qRvp2eokPZt8XQYzpavBIy23PGf+6nR7Nqd
	 YVLFdoAHoDDZw==
Date: Sun, 18 May 2025 00:25:16 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
In-Reply-To: <20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net>
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
 <20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net>
Message-Id: <174742024812.3649303.12389396177218408388.robh@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:20940, ipnet:172.232.0.0/13, country:NL];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,suse.de,kernel.org,linux.intel.com,lwn.net,collabora.com,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,amd.com,oss.qualcomm.com,linaro.org,sntech.de,ffwll.ch];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: 7FBDA3F6AC
X-Spamd-Bar: -
Message-ID-Hash: CSEXYXB2O3Q2I2GRLQNXA7UNV2AW7AOA
X-Message-ID-Hash: CSEXYXB2O3Q2I2GRLQNXA7UNV2AW7AOA
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: devicetree@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Simona Vetter <simona@ffwll.ch>, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CSEXYXB2O3Q2I2GRLQNXA7UNV2AW7AOA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Fri, 16 May 2025 18:53:15 +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.
> 
> v2:
> - Adapt to new node structure (one node per core, each with its own
>   IOMMU)
> - Several misc. fixes from Sebastian Reichel
> 
> v3:
> - Split register block in its constituent subblocks, and only require
>   the ones that the kernel would ever use (Nicolas Frattaroli)
> - Group supplies (Rob Herring)
> - Explain the way in which the top core is special (Rob Herring)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/npu/rockchip,rknn-core.yaml           | 162 +++++++++++++++++++++
>  1 file changed, 162 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml: properties:reg-names: 'oneOf' conditional failed, one must be fixed:
	[{'const': 'pc'}, {'const': 'cna'}, {'const': 'core'}] is too long
	[{'const': 'pc'}, {'const': 'cna'}, {'const': 'core'}] is too short
	False schema does not allow 3
	1 was expected
	3 is greater than the maximum of 2
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdab0000 (rockchip,rk3588-rknn-core-top): compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-rknn-core-top', 'rockchip,rknn-core-top'] is too long
	'rockchip,rk3588-rknn-core-top' is not one of ['rockchip,rk3588-rknn-core']
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdab0000 (rockchip,rk3588-rknn-core-top): reg: [[0, 4255842304, 0, 36864]] is too short
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdac0000 (rockchip,rk3588-rknn-core): compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-rknn-core', 'rockchip,rknn-core'] is too long
	'rockchip,rk3588-rknn-core' is not one of ['rockchip,rk3588-rknn-core-top']
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/npu/rockchip,rknn-core.example.dtb: npu-core@fdac0000 (rockchip,rk3588-rknn-core): reg: [[0, 4255907840, 0, 36864]] is too short
	from schema $id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250516-6-10-rocket-v3-1-7051ac9225db@tomeuvizoso.net

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

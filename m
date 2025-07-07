Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0108AFA9D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 04:46:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7E6F44A58
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 02:46:54 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 562004445E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 02:46:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=A32APTP8;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1599261454;
	Mon,  7 Jul 2025 02:46:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFAA5C4CEEE;
	Mon,  7 Jul 2025 02:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751856372;
	bh=7PYgJSXdMi4aGcKW4ofsObuc+McUS8R+eLPSagoqZzk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=A32APTP8IrKq/W/k2xX2mx39uvN7T1T8ErjSBQljGCCkUyM+yQeQAeGPG4F7q/7lP
	 ULdDtIeznXFM0cnCHP69UQSjgJmKquOsiAssj9AI+hCrZ985poM3T+uNZeG+/9auvG
	 c1US5grvRUS7brbkfcQkD9o1Wzr7/bF/AAf9amUe6V1+HPbujYnbzXmaeedKnj1+Dl
	 7aDCr7YlV2Ho5H7rMKXxFOywiEFgbDbJYeIV+4tH2bUCaPbEp/RMqWwJ+m+bSpPQhx
	 mGMRNU4bhT0xLiwGNq2NlMoLC4bYh4at6bRmVb+H9Plc3ssIHRpK24ilBmmMuKhhF7
	 AfgAbYaEOb/wQ==
Date: Sun, 06 Jul 2025 21:46:12 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: shangyao lin <shangyao.lin@mediatek.com>
In-Reply-To: <20250707013154.4055874-4-shangyao.lin@mediatek.com>
References: <20250707013154.4055874-1-shangyao.lin@mediatek.com>
 <20250707013154.4055874-4-shangyao.lin@mediatek.com>
Message-Id: <175185636753.997469.8719246747333010338.robh@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 562004445E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[172.105.4.254:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254:c];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,gmail.com,lists.linaro.org,kernel.org,collabora.com,mediatek.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: GOUVNF6H2D3YJJWQQMCHWB7WSNT3FZPM
X-Message-ID-Hash: GOUVNF6H2D3YJJWQQMCHWB7WSNT3FZPM
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Project_Global_Chrome_Upstream_Group@mediatek.com, linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/13] dt-bindings: media: mediatek: add cam-raw binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GOUVNF6H2D3YJJWQQMCHWB7WSNT3FZPM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Mon, 07 Jul 2025 09:31:44 +0800, shangyao lin wrote:
> From: "shangyao.lin" <shangyao.lin@mediatek.com>
> 
> Add camera isp7x module device document.
> 
> ---
> 
> Changes in v2:
>   - Rename binding file to mediatek,mt8188-cam-raw.yaml
>   - Various fixes per review comments
>   - Update maintainers list
> 
> Signed-off-by: shangyao.lin <shangyao.lin@mediatek.com>
> ---
>  .../mediatek/mediatek,mt8188-cam-raw.yaml     | 156 ++++++++++++++++++
>  1 file changed, 156 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.yaml:156:4: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.yaml: properties:clock-names: {'items': [{'const': 'camsys_cam2mm0_cgpdn'}, {'const': 'camsys_cam2mm1_cgpdn'}, {'const': 'camsys_cam2sys_cgpdn'}, {'const': 'camsys_cam_cgpdn'}, {'const': 'camsys_camtg_cgpdn'}, {'const': 'camsys_rawa_larbx_cgpdn'}, {'const': 'camsys_rawa_cam_cgpdn'}, {'const': 'camsys_rawa_camtg_cgpdn'}, {'const': 'topckgen_top_cam'}, {'const': 'topckgen_top_camtg'}, {'const': 'topckgen_top_camtm'}], 'minItems': 4, 'maxItems': 16, 'description': 'Names of the clocks, must match the order of the clocks property.'} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.yaml: properties:reg-names: {'items': [{'const': 'base'}, {'const': 'inner_base'}], 'minItems': 1, 'maxItems': 2, 'description': 'Names for each register region. Must be "base" and optionally "inner_base".'} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/media/mediatek/mediatek,cam-raw.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.yaml
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dts:33.13-34.43: Warning (reg_format): /example-0/soc/raw@16030000:reg: property has invalid length (32 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dts:37.13-59: Warning (dma_ranges_format): /example-0/soc/raw@16030000:dma-ranges: "dma-ranges" property has invalid length (24 bytes) (parent #address-cells == 2, child #address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dts:31.24-78.13: Warning (avoid_default_addr_size): /example-0/soc/raw@16030000: Relying on default #address-cells value
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dts:31.24-78.13: Warning (avoid_default_addr_size): /example-0/soc/raw@16030000: Relying on default #size-cells value
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: Warning (unique_unit_address_if_enabled): Failed prerequisite 'avoid_default_addr_size'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: raw@16030000 (mediatek,mt8188-cam-raw): dma-ranges: [[2], [0], [0], [1073741824], [1], [0]] is too long
	from schema $id: http://devicetree.org/schemas/media/mediatek/mediatek,cam-raw.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-cam-raw.example.dtb: raw@16030000 (mediatek,mt8188-cam-raw): reg: [[0, 369295360], [0, 32768], [0, 369328128], [0, 32768]] is too long
	from schema $id: http://devicetree.org/schemas/media/mediatek/mediatek,cam-raw.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250707013154.4055874-4-shangyao.lin@mediatek.com

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

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6526DAFA9C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 04:46:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07BC145717
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 02:46:25 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id B3BB13F674
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 02:46:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Q0DjfHEx;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0424461135;
	Mon,  7 Jul 2025 02:46:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EAEAC4CEED;
	Mon,  7 Jul 2025 02:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751856370;
	bh=BDcACAG4vVGyDuB5npFSBSRiHkqSSsookWWex2LHE2A=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Q0DjfHExc/B7bM9ppDa5/0RnzNhvTOwtlWlBXAV0LD6IWntVDakn5kabYAa0PHg7H
	 uoHuos4erh9kmPQIh82f49AN/8gAeekk9ZjnNHFNCw9RqFxndyjqzMBpVrwSbfjP1D
	 rU5Ko8IzkB2bsX55UAskFc6V7YLrJsCikJbQ6HQAFao48s2rqrpnns/CTDndlwW0UY
	 buvM+pg8/4/+LG/cvZsM8OwGV2+deCgXGH6jGolIWnBm1/z8H7eAiF20SNIWgAKNcT
	 gu0jZ4OP+ToKmCKjwz/vOUskeRidumrk8R164R083Voakg8z+moXTHOOLXTzyusJ9Z
	 hbcOXDA0zcc1w==
Date: Sun, 06 Jul 2025 21:46:09 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: shangyao lin <shangyao.lin@mediatek.com>
In-Reply-To: <20250707013154.4055874-2-shangyao.lin@mediatek.com>
References: <20250707013154.4055874-1-shangyao.lin@mediatek.com>
 <20250707013154.4055874-2-shangyao.lin@mediatek.com>
Message-Id: <175185636460.997381.4340336306163290716.robh@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B3BB13F674
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[kernel.org:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[172.105.4.254:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[0.244.36.0:email];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,mediatek.com,lists.linaro.org,collabora.com,lists.infradead.org,kernel.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 5H2EFDNLQMELRXQTSPVIOQ22MTFAM36B
X-Message-ID-Hash: 5H2EFDNLQMELRXQTSPVIOQ22MTFAM36B
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthias Brugger <matthias.bgg@gmail.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, linaro-mm-sig@lists.linaro.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-mediatek@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/13] dt-bindings: media: mediatek: add camisp binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5H2EFDNLQMELRXQTSPVIOQ22MTFAM36B/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Mon, 07 Jul 2025 09:31:42 +0800, shangyao lin wrote:
> From: "shangyao.lin" <shangyao.lin@mediatek.com>
> 
> Add camera isp7x module device document.
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
> ---
>  .../mediatek/mediatek,mt8188-camisp.yaml      | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml:68:4: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml: properties:reg-names: {'items': [{'const': 'base'}], 'minItems': 1, 'maxItems': 1, 'description': 'Name for the register region. Must be "base".'} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml: properties:reg-names: 'oneOf' conditional failed, one must be fixed:
	[{'const': 'base'}] is too short
	False schema does not allow 1
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml: properties:reg: 'anyOf' conditional failed, one must be fixed:
	'minItems' is not one of ['maxItems', 'description', 'deprecated']
		hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
	'minItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	1 is less than the minimum of 2
		hint: Arrays must be described with a combination of minItems/maxItems/items
	hint: cell array properties must define how many entries and what the entries are when there is more than one entry.
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml: properties:power-domains: 'anyOf' conditional failed, one must be fixed:
	'minItems' is not one of ['maxItems', 'description', 'deprecated']
		hint: Only "maxItems" is required for a single entry if there are no constraints defined for the values.
	'minItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	'maxItems' is not one of ['description', 'deprecated', 'const', 'enum', 'minimum', 'maximum', 'multipleOf', 'default', '$ref', 'oneOf']
	1 is less than the minimum of 2
		hint: Arrays must be described with a combination of minItems/maxItems/items
	hint: cell array properties must define how many entries and what the entries are when there is more than one entry.
	from schema $id: http://devicetree.org/meta-schemas/power-domain.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/media/mediatek/mediatek,camisp.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.yaml
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dts:23.13-43: Warning (reg_format): /example-0/soc/isp@16000000:reg: property has invalid length (16 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dtb: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dts:21.24-27.13: Warning (avoid_default_addr_size): /example-0/soc/isp@16000000: Relying on default #address-cells value
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dts:21.24-27.13: Warning (avoid_default_addr_size): /example-0/soc/isp@16000000: Relying on default #size-cells value
Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dtb: Warning (unique_unit_address_if_enabled): Failed prerequisite 'avoid_default_addr_size'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/mediatek/mediatek,mt8188-camisp.example.dtb: isp@16000000 (mediatek,mt8188-camisp): reg: [[0, 369098752], [0, 4096]] is too long
	from schema $id: http://devicetree.org/schemas/media/mediatek/mediatek,camisp.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250707013154.4055874-2-shangyao.lin@mediatek.com

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

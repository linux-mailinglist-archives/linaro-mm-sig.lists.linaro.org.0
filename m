Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E313D76B35E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 13:37:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03B3843EE5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 11:37:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 0B8AF3EBC6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 11:37:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=fail ("headers rsa verify failed") header.d=kernel.org header.s=k20201202 header.b=ORD4V7a0;
	spf=pass (lists.linaro.org: domain of "SRS0=YREN=DS=robh_at_kernel.org=rob@kernel.org" designates 139.178.84.217 as permitted sender) smtp.mailfrom="SRS0=YREN=DS=robh_at_kernel.org=rob@kernel.org";
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9CC506154A;
	Tue,  1 Aug 2023 11:37:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49766C433C7;
	Tue,  1 Aug 2023 11:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690889834;
	bh=nDCDGYvtjb1LnlZeSZWFBHuiMyZdQvnHV1UhBHgSAAs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ORD4V7a0hezEs+CAdVmhQntOWNo2IHKNAIOCqMGSmVqwZYTfnCq+/hGBmmMPkNn4O
	 0JjHxpsK9KN5+dzPhFq1YLVZKUxdu42eYM9yNPJ5MeBCi8NYATdNIud1CyoC86+Hz3
	 h3CqZ0AuxHKTh/SzqFz0lCyNhFVeDmpKtQcCa+g+mWB3r4zNnI9loEys2tXBLbXkVb
	 UzhwtjPS1bHIvw8VZzDBBC4O78e0+pgwCthB8qChulFLzJxaSPWEaMRY/OYJhZor5i
	 mb6Hdxxfj2fcJFAyvDNmFvc4x0aCC8J4Z7wd7l+tC5q+b/fJQJCmW592j8oW1rqjvG
	 AeDDE5tHUq/uQ==
Received: (nullmailer pid 1253242 invoked by uid 1000);
	Tue, 01 Aug 2023 11:37:10 -0000
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
In-Reply-To: <20230801101030.2040-3-keith.zhao@starfivetech.com>
References: <20230801101030.2040-1-keith.zhao@starfivetech.com>
 <20230801101030.2040-3-keith.zhao@starfivetech.com>
Message-Id: <169088983013.1253226.12148549682473320838.robh@kernel.org>
Date: Tue, 01 Aug 2023 05:37:10 -0600
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0B8AF3EBC6
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	FORGED_SENDER(0.30)[robh@kernel.org,SRS0=YREN=DS=robh_at_kernel.org=rob@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,starfivetech.com,pengutronix.de,esmil.dk,linaro.org,dabbelt.com,vger.kernel.org,sntech.de,suse.de,lists.freedesktop.org,ffwll.ch,lists.linaro.org,amd.com,linux.intel.com,gmail.com,sifive.com,eecs.berkeley.edu,hotmail.co m,lists.infradead.org,edgeble.ai];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	URIBL_BLOCKED(0.00)[devicetree.org:url];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCVD_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[kernel.org:s=k20201202];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,none];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,SRS0=YREN=DS=robh_at_kernel.org=rob@kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: XXUPKWRYAVORTO6SJTKJH4TZ3YKLUFGU
X-Message-ID-Hash: XXUPKWRYAVORTO6SJTKJH4TZ3YKLUFGU
X-MailFrom: SRS0=YREN=DS=robh_at_kernel.org=rob@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bjorn Andersson <andersson@kernel.org>, Jack Zhu <jack.zhu@starfivetech.com>, Philipp Zabel <p.zabel@pengutronix.de>, Emil Renner Berthing <kernel@esmil.dk>, Sumit Semwal <sumit.semwal@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org, Changhuang Liang <changhuang.liang@starfivetech.com>, christian.koenig@amd.com, Shengyang Chen <shengyang.chen@starfivetech.com>, Maxime Ripard <mripard@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, Shawn Guo <shawnguo@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, linux-riscv@lists.infradead.or
 g, linux-media@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 v1 2/7] dt-bindings: display: Add yamls for JH7110 display system
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XXUPKWRYAVORTO6SJTKJH4TZ3YKLUFGU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit


On Tue, 01 Aug 2023 18:10:25 +0800, Keith Zhao wrote:
> StarFive SoCs JH7110 display system:
> lcd-controller bases verisilicon dc8200 IP,
> and hdmi bases Innosilicon IP.
> Add bindings for them.
> 
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>  .../starfive/starfive,display-subsystem.yaml  |  41 +++++++
>  .../starfive/starfive,jh7110-dc8200.yaml      | 107 ++++++++++++++++++
>  .../starfive/starfive,jh7110-inno-hdmi.yaml   |  92 +++++++++++++++
>  3 files changed, 240 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-dc8200.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/starfive/starfive,jh7110-inno-hdmi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.example.dtb: display-subsystem: ports: [[4294967295]] is not of type 'object'
	from schema $id: http://devicetree.org/schemas/display/starfive/starfive,display-subsystem.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/starfive/starfive,display-subsystem.example.dtb: display-subsystem: ports: More than one condition true in oneOf schema:
	{'additionalProperties': False,
	 'oneOf': [{'required': ['port']},
	           {'required': ['#address-cells', '#size-cells']}],
	 'patternProperties': {'^port@[0-9a-f]+$': {'required': ['reg'],
	                                            'type': 'object'},
	                       'pinctrl-[0-9]+': True},
	 'properties': {'#address-cells': {'items': [{'items': [{'const': 1}],
	                                              'maxItems': 1,
	                                              'minItems': 1,
	                                              'type': 'array'}],
	                                   'maxItems': 1,
	                                   'minItems': 1,
	                                   'type': 'array'},
	                '#size-cells': {'items': [{'items': [{'const': 0}],
	                                           'maxItems': 1,
	                                           'minItems': 1,
	                                           'type': 'array'}],
	                                'maxItems': 1,
	                                'minItems': 1,
	                                'type': 'array'},
	                '$nodename': True,
	                'bootph-all': True,
	                'bootph-pre-ram': True,
	                'bootph-pre-sram': True,
	                'bootph-some-ram': True,
	                'bootph-verify': True,
	                'phandle': True,
	                'pinctrl-names': True,
	                'port': {'type': 'object'},
	                'secure-status': True,
	                'status': True},
	 'type': 'object'}
	from schema $id: http://devicetree.org/schemas/display/starfive/starfive,display-subsystem.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230801101030.2040-3-keith.zhao@starfivetech.com

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

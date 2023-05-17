Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4634B706CCD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 17:28:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AA87411B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 15:28:24 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lists.linaro.org (Postfix) with ESMTPS id E80F23E940
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 15:28:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robherring2@gmail.com designates 209.85.210.47 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=none)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6ab1a20aa12so685370a34.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 08:28:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684337300; x=1686929300;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RASfi4C6iFM4Ndi70/5KgD6n2tXBLGdQMzw0G7ZIRkw=;
        b=Nhlh8GhkrYIbvUp/ClhjcMCF8KuNyROZdm7ndA5f9WQ3if2MSa/Q/NegPr+p2qw78P
         WsWbQE1/mjnETh5/9ibXPNilIKU2bH6LFwQb46XnJ4x1SHixy2TPAZQyfjuTdgmcnTPH
         FPZsDaM8vSpjuYW/FSG0EtwK7Z6RhFgMzQ/luiN79LdNfiy1B5uYzSJAo6E1WbJvX8EQ
         /38gJkQM7sTTIrsEnPtf43V6yrR+VxN0MTgfu/HuYy3G4nF5i7h2cENsPUBfFAjCtoEk
         QAXJgZe4DDlZUjnuCixynAusmGNmTTPfApdpWcd6Sa2C9NNRmCzVxlfQ/aKfa7izNI50
         K+2Q==
X-Gm-Message-State: AC+VfDxUREgoQ4WtVSJY7AgAnfjO0qkBFRqhLGOgluDrNfw1S0gj8jCa
	aCRar5jqH87wKZv/Q1W9xw==
X-Google-Smtp-Source: ACHHUZ6ijD9N5SseCCQ1cWe5HZUVSbftXF5bMVUuAmhW+DgCGKOm3XkKpKsWZ5OlaP5anPyYkVoUGA==
X-Received: by 2002:a05:6830:14c9:b0:6ab:840:c498 with SMTP id t9-20020a05683014c900b006ab0840c498mr15482515otq.33.1684337300240;
        Wed, 17 May 2023 08:28:20 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id di10-20020a0568303a0a00b006a5db4474c8sm13400347otb.33.2023.05.17.08.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 08:28:19 -0700 (PDT)
Received: (nullmailer pid 894363 invoked by uid 1000);
	Wed, 17 May 2023 15:28:17 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <20230517145237.295461-8-abailon@baylibre.com>
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-8-abailon@baylibre.com>
Message-Id: <168433729744.894347.3314650002007733913.robh@kernel.org>
Date: Wed, 17 May 2023 10:28:17 -0500
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	FORGED_SENDER(0.30)[robh@kernel.org,robherring2@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	DMARC_POLICY_SOFTFAIL(0.10)[kernel.org : SPF not aligned (relaxed), No valid DKIM,none];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.47:from];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[66.90.144.107:server fail];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.999];
	FREEMAIL_CC(0.00)[baylibre.com,lists.infradead.org,suse.de,vger.kernel.org,gmail.com,linux.intel.com,lists.linaro.org,linaro.org,ffwll.ch,kernel.org,amd.com,lists.freedesktop.org,collabora.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[0:email,devicetree.org:url,baylibre.com:email,ozlabs.org:url];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,robherring2@gmail.com];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E80F23E940
X-Spamd-Bar: /
Message-ID-Hash: KMECUHPEA23X5RMTINEG5LJDSQUASOVK
X-Message-ID-Hash: KMECUHPEA23X5RMTINEG5LJDSQUASOVK
X-MailFrom: robherring2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: khilman@baylibre.com, linux-mediatek@lists.infradead.org, tzimmermann@suse.de, devicetree@vger.kernel.org, linux-media@vger.kernel.org, matthias.bgg@gmail.com, nbelin@baylibre.com, linux-arm-kernel@lists.infradead.org, maarten.lankhorst@linux.intel.com, linaro-mm-sig@lists.linaro.org, krzysztof.kozlowski+dt@linaro.org, daniel@ffwll.ch, conor+dt@kernel.org, christian.koenig@amd.com, mripard@kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, bero@baylibre.com, dri-devel@lists.freedesktop.org, jstephan@baylibre.com, sumit.semwal@linaro.org, angelogioacchino.delregno@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KMECUHPEA23X5RMTINEG5LJDSQUASOVK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Wed, 17 May 2023 16:52:37 +0200, Alexandre Bailon wrote:
> This adds the device tree bindings for the APU DRM driver.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> Reviewed-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml: 'maintainers' is a required property
	hint: Metaschema for devicetree binding documentation
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
./Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/gpu/mtk,apu-drm.yaml#
Documentation/devicetree/bindings/gpu/mtk,apu-drm.example.dts:18.15-22.11: Warning (unit_address_vs_reg): /example-0/apu@0: node has a unit name, but no reg or ranges property
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpu/mtk,apu-drm.example.dtb: apu@0: remoteproc: [[4294967295, 4294967295]] is too short
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230517145237.295461-8-abailon@baylibre.com

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

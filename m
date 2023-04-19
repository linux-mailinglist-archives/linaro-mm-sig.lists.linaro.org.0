Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1FB6E7985
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Apr 2023 14:20:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8CEC3F5B9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Apr 2023 12:20:31 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by lists.linaro.org (Postfix) with ESMTPS id 9C24B3EBC6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 12:20:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of robherring2@gmail.com designates 209.85.160.51 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=none)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-18785c2f39fso866426fac.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 05:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681906824; x=1684498824;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vDWn7LWX55rdAgK8lkZTjI/cl/gmcQIjVsQZmuaFPok=;
        b=gDL05zy/LHiCMvJV85dMXtFiRdb/pkKnTCePYsWjYwyBhmoQ0zYP9GA/xngkfIUQmX
         4oNa721G4tYskbXDp0zgZ20CxAUuVNKKH8sMqedDo8rGD6hZKGHEtmgSiJi7VMLZX2Uy
         6MfP4xlxuSkNheA3ZwrkF4NR4ZIwfVhHoO/9yT4Rj5EZ0qw024eGnCQWuddZDjMDq4y9
         2zXV8raM5q76URQdczJgie4OXJGdGmC7r7yIy4K4Dv5QG1B4IQ8NlXCz8++V+fvsciid
         55nufABbLTGYc3585zRxmWVcx1yAzO6Q1tq8Or1m8XWvqTKMFr8qEk86NtVInZyKwyyx
         PJkg==
X-Gm-Message-State: AAQBX9cUsPauw4lCGPPsRyYMdgEX44vDXC/21MHFmXJvDyBbLuPR/K3q
	mSvEEn/jD+MzRPcmTTrlxg==
X-Google-Smtp-Source: AKy350achMGLsukLbt5lzLwN1OM7sY4Y18eDzdY5EhXFZgcfFGxbh3Xvp0buod3QAyAniCdmJL8Ycg==
X-Received: by 2002:a05:6870:f295:b0:17f:e768:60fb with SMTP id u21-20020a056870f29500b0017fe76860fbmr3024069oap.54.1681906823992;
        Wed, 19 Apr 2023 05:20:23 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 64-20020a4a0143000000b00529cc3986c8sm6920510oor.40.2023.04.19.05.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 05:20:23 -0700 (PDT)
Received: (nullmailer pid 3779626 invoked by uid 1000);
	Wed, 19 Apr 2023 12:20:22 -0000
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Justin Chen <justinpopo6@gmail.com>
In-Reply-To: <1681863018-28006-2-git-send-email-justinpopo6@gmail.com>
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-2-git-send-email-justinpopo6@gmail.com>
Message-Id: <168190678873.3778743.3635324500677416742.robh@kernel.org>
Date: Wed, 19 Apr 2023 07:20:22 -0500
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[66.90.144.107:received,209.85.160.51:from];
	FORGED_SENDER(0.30)[robh@kernel.org,robherring2@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.51:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[kernel.org : SPF not aligned (relaxed), No valid DKIM,none];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,davemloft.net,broadcom.com,lists.freedesktop.org,armlinux.org.uk,lists.linaro.org,redhat.com,google.com,kernel.org,linaro.org,amd.com,lunn.ch];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,robherring2@gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9C24B3EBC6
X-Spamd-Bar: -
Message-ID-Hash: PZ3J5JJPJ347I6XJUHFN44ACWHQFMS5T
X-Message-ID-Hash: PZ3J5JJPJ347I6XJUHFN44ACWHQFMS5T
X-MailFrom: robherring2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, hkallweit1@gmail.com, davem@davemloft.net, netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com, dri-devel@lists.freedesktop.org, linux@armlinux.org.uk, f.fainelli@gmail.com, opendmb@gmail.com, linaro-mm-sig@lists.linaro.org, pabeni@redhat.com, edumazet@google.com, robh+dt@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, andrew@lunn.ch, richardcochran@gmail.com, kuba@kernel.org, krzysztof.kozlowski+dt@linaro.org, justin.chen@broadcom.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 1/6] dt-bindings: net: Brcm ASP 2.0 Ethernet controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PZ3J5JJPJ347I6XJUHFN44ACWHQFMS5T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: 7bit


On Tue, 18 Apr 2023 17:10:13 -0700, Justin Chen wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> Add a binding document for the Broadcom ASP 2.0 Ethernet
> controller.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>
> ---
>  .../devicetree/bindings/net/brcm,asp-v2.0.yaml     | 146 +++++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dtb: asp@9c00000: mdio@c614:compatible:0: 'brcm,asp-v2.0-mdio' is not one of ['brcm,genet-mdio-v1', 'brcm,genet-mdio-v2', 'brcm,genet-mdio-v3', 'brcm,genet-mdio-v4', 'brcm,genet-mdio-v5', 'brcm,unimac-mdio']
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dtb: asp@9c00000: mdio@c614: Unevaluated properties are not allowed ('compatible' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dtb: asp@9c00000: mdio@ce14:compatible:0: 'brcm,asp-v2.0-mdio' is not one of ['brcm,genet-mdio-v1', 'brcm,genet-mdio-v2', 'brcm,genet-mdio-v3', 'brcm,genet-mdio-v4', 'brcm,genet-mdio-v5', 'brcm,unimac-mdio']
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dtb: asp@9c00000: mdio@ce14: Unevaluated properties are not allowed ('compatible' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dtb: /example-0/asp@9c00000/mdio@c614: failed to match any schema with compatible: ['brcm,asp-v2.0-mdio']
Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dtb: /example-0/asp@9c00000/mdio@ce14: failed to match any schema with compatible: ['brcm,asp-v2.0-mdio']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1681863018-28006-2-git-send-email-justinpopo6@gmail.com

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

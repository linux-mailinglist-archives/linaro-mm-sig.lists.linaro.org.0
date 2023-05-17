Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4D5706EC4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 18:53:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 329AB411F4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 May 2023 16:53:53 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 2D4423EBCF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 16:53:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=LuAGyfOo;
	spf=pass (lists.linaro.org: domain of krzysztof.kozlowski@linaro.org designates 209.85.208.45 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-510d8b0169fso1004694a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 09:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684342428; x=1686934428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3hIDvPEdjftlVYbqhIG0JXGHdNlYOdLmSjve7aY9Eo0=;
        b=LuAGyfOolGY2lv4bXLQZDUlCkYAFbMjVgJBhtQ35ZvoRANe0rP+NbkFwtPlSSeIKq/
         Z1ELa4OdH1BhZPPVuEcS54mWAsAWMdI99jGP8mvKnKSUwftMqm5xSRaOfxTPxFqtkLxY
         qdUkIgvZbQvT+RLeoqerdDueR+U+biU/Yr3n0d7E/Y5DiwxKMmqsHwOlN18at7sz3xX0
         hix+tDpT085M0KrBRn5JxxVnqtP8l3xr6wG5PX+qP30zi+WThJQQGkTX+BzXAmY+WljI
         684VChIFfk5qFuVy1ZK+D6QjxLctgUm4HmqkW+vvQDOPqCPVkbasYZ1D9Mdfy/5Rs9bJ
         aCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684342428; x=1686934428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3hIDvPEdjftlVYbqhIG0JXGHdNlYOdLmSjve7aY9Eo0=;
        b=DH1hTukLsLuhmC0cA258zmDgTTREpilapMqeJYvM89gkEP1VOZyHTut3JwQgmiC5Yr
         Mqd1sRpKElaM/5pw6hIB+ohr8htl0mlaXt4YJ0USr4RqmUbvCkvvUbg2K6pPQZnY77eS
         cuzP7Djrug7tjq1CjFn5nVTMwOF1t+3k3Zk5IhkezNByKQzO9nPHRGCFKSa5WZRAhPEJ
         gxWTJSgwyGsw/xjV8YPU0Vr6PRqX4GPybLWJF0au3fwrhNF7G6Uk0tUKE9NrepDYEoUu
         jQ7v+YPpkw/w1CiWyI9B9C1tX4QO2wFmi4CemddqPH0hkrSRliB+Nn2VLAbBHEwyHRLk
         Rq0g==
X-Gm-Message-State: AC+VfDwwhKX+xI7CCrjtam2/+9pJFLbp2TW208qdA1q02hoaVnwhuBhp
	dgOjBhvM6g9fD1dO9Qor3dweta8U
X-Google-Smtp-Source: ACHHUZ41XuiV/6uHDBhzp+l1Rm28KeZOiUPPrRFoy46T5x5hqEOTvHbPfGD88VINkhOzOmp9caPxnQ==
X-Received: by 2002:a17:906:9b86:b0:96a:5a59:92cb with SMTP id dd6-20020a1709069b8600b0096a5a5992cbmr24102081ejc.47.1684342428067;
        Wed, 17 May 2023 09:53:48 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id mc27-20020a170906eb5b00b00966330021e9sm12332628ejb.47.2023.05.17.09.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 09:53:47 -0700 (PDT)
Date: Wed, 17 May 2023 18:53:44 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Bailon <abailon@baylibre.com>
Message-ID: <20230517165344.6gzwzkwzu44noyqm@krzk-bin>
References: <20230517145237.295461-1-abailon@baylibre.com>
 <20230517145237.295461-8-abailon@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230517145237.295461-8-abailon@baylibre.com>
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,vger.kernel.org,gmail.com,linaro.org,ffwll.ch,suse.de,amd.com,linux.intel.com,lists.infradead.org,lists.linaro.org,lists.freedesktop.org,baylibre.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[ozlabs.org:url];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.45:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2D4423EBCF
X-Spamd-Bar: -
Message-ID-Hash: VM6ZVJA6SYAQIIACAEB4JD2JJA6OSA6S
X-Message-ID-Hash: VM6ZVJA6SYAQIIACAEB4JD2JJA6OSA6S
X-MailFrom: krzysztof.kozlowski@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: conor+dt@kernel.org, angelogioacchino.delregno@collabora.com, linux-media@vger.kernel.org, matthias.bgg@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, tzimmermann@suse.de, christian.koenig@amd.com, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, linux-mediatek@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, bero@baylibre.com, mripard@kernel.org, nbelin@baylibre.com, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, khilman@baylibre.com, jstephan@baylibre.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 7/7] dt-bindings: Add bidings for mtk,apu-drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VM6ZVJA6SYAQIIACAEB4JD2JJA6OSA6S/>
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

See https://patchwork.ozlabs.org/patch/1782720

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

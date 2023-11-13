Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9B37EA4FA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 21:41:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AB68940F1F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 20:41:00 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by lists.linaro.org (Postfix) with ESMTPS id DF6293F0B9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Nov 2023 20:40:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=kernel.org (policy=none);
	spf=pass (lists.linaro.org: domain of robherring2@gmail.com designates 209.85.167.181 as permitted sender) smtp.mailfrom=robherring2@gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3b3ec45d6e9so3039772b6e.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Nov 2023 12:40:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699908044; x=1700512844;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kIUOg6xcD1mveQt4yAqYkPtye9ZANiCj61RnWxJZ9RE=;
        b=ZDKkTMfgg9dtcYW9jWn81EXM1Lhwy6h5QcGM5GP5PPjsQPGaok6aB5e55sGza80GOY
         ujKUz5F9YUnGJBODPk1bygiqU8D7ZEFogoOpSEjKDvWJiL4L3Nh4i7g+Z8j/MYgadUFl
         jFN5e/XOLTPkjZeLxDxDbwlARXp8nXKe2iccb0jqeXEXBgXQ5wR0gPdNkbOqLx8REx1G
         hEQxCjaI0xampVyBNLxGb8qqIblWCriDRbDO90EFVNMuoMYgUryx7mNOKnzs/H2X/PSM
         hKjIK77UdPAxuUNdJhOb/P9TiuCjG8ai6WwHQ6OkKGyZrMFQT/TIQ+WbZzhpAcPQ+3kb
         +1hA==
X-Gm-Message-State: AOJu0Yx7N3lBseCUFv+4WiEpcTn3F2lG9nw5akUKDRkD10wdJhISXYgl
	nNkcDSO+VO7/j8UHeGR6ag==
X-Google-Smtp-Source: AGHT+IE+M7ODqvletmAN6kZJ6EBjwVhQYADFHXDZ0Hl1ZJYebTPk7Dxy4FLEWYDWixjDGGboIOMmUw==
X-Received: by 2002:a54:4586:0:b0:3ab:8431:8037 with SMTP id z6-20020a544586000000b003ab84318037mr9564352oib.32.1699908044232;
        Mon, 13 Nov 2023 12:40:44 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b7-20020aca1b07000000b003af732a2054sm902879oib.57.2023.11.13.12.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 12:40:43 -0800 (PST)
Received: (nullmailer pid 38662 invoked by uid 1000);
	Mon, 13 Nov 2023 20:40:42 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
In-Reply-To: <20231111111559.8218-7-yong.wu@mediatek.com>
References: <20231111111559.8218-1-yong.wu@mediatek.com>
 <20231111111559.8218-7-yong.wu@mediatek.com>
Message-Id: <169990800956.37900.2282148242749436119.robh@kernel.org>
Date: Mon, 13 Nov 2023 14:40:42 -0600
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF6293F0B9
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	FORGED_SENDER(0.30)[robh@kernel.org,robherring2@gmail.com];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[kernel.org : SPF not aligned (relaxed), No valid DKIM,none];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,collabora.com,mediatek.com,ndufresne.ca,google.com,amd.com,arm.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,quicinc.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.181:from];
	RCPT_COUNT_TWELVE(0.00)[26];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,robherring2@gmail.com];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 6FXJD63OAPXBIHMYMEBHT2A5PV2QY676
X-Message-ID-Hash: 6FXJD63OAPXBIHMYMEBHT2A5PV2QY676
X-MailFrom: robherring2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, Nicolas Dufresne <nicolas@ndufresne.ca>, Jeffrey Kardatzke <jkardatzke@google.com>, christian.koenig@amd.com, Brian Starkey <Brian.Starkey@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <jstultz@google.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, dri-devel@lists.freedesktop.org, tjmercier@google.com, linaro-mm-sig@lists.linaro.org, Joakim Bech <joakim.bech@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Vijayanand Jitta <quic_vjitta@quicinc.com>, jianjiao.zeng@mediatek.com, linux-mediatek@lists.infradead.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, devicetree@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/8] dt-bindings: reserved-memory: Add secure CMA reserved memory range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6FXJD63OAPXBIHMYMEBHT2A5PV2QY676/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Sat, 11 Nov 2023 19:15:57 +0800, Yong Wu wrote:
> Add a binding for describing the secure CMA reserved memory range. The
> memory range also will be defined in the TEE firmware. It means the TEE
> will be configured with the same address/size that is being set in this
> DT node.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  .../reserved-memory/secure_cma_region.yaml    | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/secure_cma_region.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/reserved-memory/secure_cma_region.yaml:12:1: [error] syntax error: could not find expected ':' (syntax)

dtschema/dtc warnings/errors:
make[2]: *** Deleting file 'Documentation/devicetree/bindings/reserved-memory/secure_cma_region.example.dts'
Documentation/devicetree/bindings/reserved-memory/secure_cma_region.yaml:12:1: could not find expected ':'
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/reserved-memory/secure_cma_region.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/reserved-memory/secure_cma_region.yaml:12:1: could not find expected ':'
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/reserved-memory/secure_cma_region.yaml: ignoring, error parsing file
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231111111559.8218-7-yong.wu@mediatek.com

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

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FDB40FFF4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 21:49:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F396A64AD8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 19:49:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7EE7363514; Fri, 17 Sep 2021 19:49:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 619B763421;
	Fri, 17 Sep 2021 19:49:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9EA9960991
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 19:49:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9C3DF63421; Fri, 17 Sep 2021 19:49:06 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by lists.linaro.org (Postfix) with ESMTPS id 9691960991
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 19:49:04 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id p2so15516802oif.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=pE+4bnzWEy5M45GFHsCRmVHyw6zJKyXPFQ+Hy8/7q2k=;
 b=34hNoJoGQHC3zTsSzZR+RnzOXW44VM99ekkEISsEP58ezQIkNOQ5aq7xTI/pnsXKsj
 Ku2elPUSfmUH4IWmjNRlXmo0uWUKNdrf55YrppBcXbs6C4tFnn5p74EkpTnzMkd1pX4l
 jxF10G365dt4t1zeOsEOnvRZvtFubFQtPDDE7K1OAlc3OdrQgLMplPl1g5HBxMvrSBV6
 7QexFLKPsh9JSWfY1v88A+GOoIygJFEJOa94CYkMQaSYbMQeygxO5tI8f3f9LbGAUOy0
 kDqbOoOy9FNpC6iWRyl66G/iNh0CUOp2eYxY9yqqte19EZjf2gpK7GtIWtydWlWXQjX0
 t3xA==
X-Gm-Message-State: AOAM5316Mc5UxqpGeYYe76ZTGQcIbhWo9E6GKtP+PZJgLo3xT3cfkxpS
 WxSly/JeWin6gnuNW0oL0g==
X-Google-Smtp-Source: ABdhPJw33RfJFXipWnsomu5OMJbVFalUdObkurEitpoBWQS/R7QjuAoRiC8fBREZ7YS1JypZmiMHIw==
X-Received: by 2002:a05:6808:bc2:: with SMTP id
 o2mr5488000oik.73.1631908142931; 
 Fri, 17 Sep 2021 12:49:02 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id v11sm1805276oto.22.2021.09.17.12.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 12:49:01 -0700 (PDT)
Received: (nullmailer pid 2025335 invoked by uid 1000);
 Fri, 17 Sep 2021 19:48:54 -0000
From: Rob Herring <robh@kernel.org>
To: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <20210917125945.620097-2-abailon@baylibre.com>
References: <20210917125945.620097-1-abailon@baylibre.com>
 <20210917125945.620097-2-abailon@baylibre.com>
Date: Fri, 17 Sep 2021 14:48:54 -0500
Message-Id: <1631908134.342766.2025334.nullmailer@robh.at.kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 1/4] dt-bindings: Add bidings for
 mtk, apu-drm
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: airlied@linux.ie, linux-remoteproc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bjorn.andersson@linaro.org,
 khilman@baylibre.com, linux-media@vger.kernel.org, ohad@wizery.com,
 devicetree@vger.kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, gpain@baylibre.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, linaro-mm-sig@lists.linaro.org,
 mathieu.poirier@linaro.org, linux-kernel@vger.kernel.org, daniel@ffwll.ch,
 christian.koenig@amd.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, 17 Sep 2021 14:59:42 +0200, Alexandre Bailon wrote:
> This adds the device tree bindings for the APU DRM driver.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> ---
>  .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml: 'maintainers' is a required property
	hint: Metaschema for devicetree binding documentation
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
./Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/gpu/mtk,apu-drm.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
Documentation/devicetree/bindings/gpu/mtk,apu-drm.example.dts:19.15-23.11: Warning (unit_address_vs_reg): /example-0/apu@0: node has a unit name, but no reg or ranges property
Documentation/devicetree/bindings/gpu/mtk,apu-drm.example.dt.yaml:0:0: /example-0/apu@0: failed to match any schema with compatible: ['mediatek,apu-drm']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1529388

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

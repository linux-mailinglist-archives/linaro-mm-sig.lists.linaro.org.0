Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BC241278F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 22:56:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E002E63524
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 20:56:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A048C62DEF; Mon, 20 Sep 2021 20:56:14 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE36761F3E;
	Mon, 20 Sep 2021 20:56:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 522C2610BE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 20:56:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 438F861ECD; Mon, 20 Sep 2021 20:56:03 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by lists.linaro.org (Postfix) with ESMTPS id 38614610BE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 20:56:01 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id
 x10-20020a056830408a00b004f26cead745so25397186ott.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 13:56:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XPatjUnaHnEphbp45Tc3T1p6HiP/lC6r/ygiKd/wpQg=;
 b=s0uFRYzA5eoDQQxDM8pD6bxP1L704hTX/L3mmjSjUXuaFOWzMxU0M9ZhrJqUsxc+Y+
 uR0kOvE3mGLI033e+oQ+pQ/ZIKsRkoJIchjMwxZC1sRNJMI2qTrq1jdjKIzD8O6rcoHg
 hZacQypLJgrp7LQTutlIWi3P/+6hOR5kiZ3UafF1qsBw6zGg3FYx82ZQ5aqDSoDQWbo8
 viWciCe19ilOE1czsg/kcfhKzSIT+8Mr+ojNyjFhoFJZjYwZjfUKV3i/4/RzrOcOQImI
 VUDtqXeisVD0LNWNYlv8bpR/tIQ1pWbCsnAPE4QcK/GmThBq4Hdt9Dv8CcPJYTiDjXXt
 l2pw==
X-Gm-Message-State: AOAM5313os0wlc/gMYBfQ2/DONISKjjlKxceMwnYsIGu465ae6lK4qnG
 pEJQXTxls69obVN/a3qFLA==
X-Google-Smtp-Source: ABdhPJw0Ubx9PITUcYUz1zNNca0q8nJ7I3Nn2f8OSxbuj/hwXREco2J/I6rnExb8fxBIFDz9aO3PRg==
X-Received: by 2002:a9d:4681:: with SMTP id z1mr23005506ote.42.1632171360541; 
 Mon, 20 Sep 2021 13:56:00 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x192sm2337226oix.9.2021.09.20.13.55.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 13:55:59 -0700 (PDT)
Received: (nullmailer pid 744183 invoked by uid 1000);
 Mon, 20 Sep 2021 20:55:58 -0000
Date: Mon, 20 Sep 2021 15:55:58 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandre Bailon <abailon@baylibre.com>
Message-ID: <YUj1XnBbyNEqrV2g@robh.at.kernel.org>
References: <20210917125945.620097-1-abailon@baylibre.com>
 <20210917125945.620097-2-abailon@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917125945.620097-2-abailon@baylibre.com>
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
Cc: ohad@wizery.com, devicetree@vger.kernel.org, tzimmermann@suse.de,
 mathieu.poirier@linaro.org, christian.koenig@amd.com, airlied@linux.ie,
 linux-remoteproc@vger.kernel.org, maarten.lankhorst@linux.intel.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, bjorn.andersson@linaro.org,
 linaro-mm-sig@lists.linaro.org, gpain@baylibre.com,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, khilman@baylibre.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 17, 2021 at 02:59:42PM +0200, Alexandre Bailon wrote:
> This adds the device tree bindings for the APU DRM driver.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
> ---
>  .../devicetree/bindings/gpu/mtk,apu-drm.yaml  | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> new file mode 100644
> index 0000000000000..6f432d3ea478c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/mediatek,apu-drm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AI Processor Unit DRM

DRM is a linux thing, not h/w.

> +
> +properties:
> +  compatible:
> +    const: mediatek,apu-drm
> +
> +  remoteproc:

So is remoteproc.

Why don't you have the remoteproc driver create the DRM device?

> +    maxItems: 2
> +    description:
> +      Handle to remoteproc devices controlling the APU
> +
> +  iova:
> +    maxItems: 1
> +    description:
> +      Address and size of virtual memory that could used by the APU

Why does this need to be in DT? If you need to reserve certain VAs, then 
this discussion[1] might be of interest.

Rob

[1] https://lore.kernel.org/all/YUIPCxnyRutMS47%2F@orome.fritz.box/
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

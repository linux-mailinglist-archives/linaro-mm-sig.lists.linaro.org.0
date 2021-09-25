Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AF74184E5
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 26 Sep 2021 00:16:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C8C262079
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Sep 2021 22:16:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6BE2C62072; Sat, 25 Sep 2021 22:16:40 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DE65C60AC5;
	Sat, 25 Sep 2021 22:16:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 00BC66062F
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 22:16:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F272F60AC5; Sat, 25 Sep 2021 22:16:35 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by lists.linaro.org (Postfix) with ESMTPS id ECEA46062F
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 22:16:33 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id v10so19815593oic.12
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 15:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=4zZa0pNx5SO7y8XUgl4L6wylE3A2MDP8EXBjRieRoGg=;
 b=yOo1zATjYRWRT8E9LJrmf3jGX+jVsG20JsndvvEZmhXIH9p2DIC7QxWjMA6oDRHScp
 vryqQQdHFH3UcB8m8sgQ2S/ZGmlwvNbsuTVLONxGOxIctVorrHuEZGYwoz3J+Znwqqva
 OE6AYjOPUGGU4EY5RjLHLmj1P3KhHfQAWpzNx5tBtorL6tinXhw3uLkwB5eqQsnwXsnq
 Wh1g3iV0+rbdYrNRHbtk19ObfXkg5kwnJ2jQlnxHOTNKaJ0GcfAbSKs7C2qC/ePvQ2WL
 bYqI8uMMrk/O/oSm79K2JqtDTVgMjvA8EROf0svVg7h3fOnfORgZcuqVCtfqibWA7iy/
 Scuw==
X-Gm-Message-State: AOAM531n0NuUNXRekCDyWnlyPHAV5TnfuWV0nuy1u3PNidl+yG3iwrkV
 LeS5RHC/wEcn75zjpeVgTA==
X-Google-Smtp-Source: ABdhPJyxrl+MLrGaVMhZlIuZKpsBWIPx8RYrEaa/BgmMRqDJoT3O8C2TV3JX6WZQqreUbBZ5fKjhtQ==
X-Received: by 2002:a05:6808:1a04:: with SMTP id
 bk4mr6680603oib.85.1632608193387; 
 Sat, 25 Sep 2021 15:16:33 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id z17sm2305434ooz.38.2021.09.25.15.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Sep 2021 15:16:32 -0700 (PDT)
Received: (nullmailer pid 3839363 invoked by uid 1000);
 Sat, 25 Sep 2021 22:16:30 -0000
From: Rob Herring <robh@kernel.org>
To: Justin Chen <justinpopo6@gmail.com>
In-Reply-To: <1632519891-26510-2-git-send-email-justinpopo6@gmail.com>
References: <1632519891-26510-1-git-send-email-justinpopo6@gmail.com>
 <1632519891-26510-2-git-send-email-justinpopo6@gmail.com>
Date: Sat, 25 Sep 2021 17:16:30 -0500
Message-Id: <1632608190.772021.3839362.nullmailer@robh.at.kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH net-next 1/5] dt-bindings: net: Brcm ASP
 2.0 Ethernet controller
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
Cc: Andrew Lunn <andrew@lunn.ch>, Geert Uytterhoeven <geert+renesas@glider.be>,
 dri-devel@lists.freedesktop.org,
 =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Florian Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux.org.uk>,
 bcm-kernel-feedback-list@broadcom.com, Jakub Kicinski <kuba@kernel.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linaro-mm-sig@lists.linaro.org,
 Doug Berger <opendmb@gmail.com>, Michael Chan <michael.chan@broadcom.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, 24 Sep 2021 14:44:47 -0700, Justin Chen wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> Add a binding document for the Broadcom ASP 2.0 Ethernet controller.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>
> ---
>  .../devicetree/bindings/net/brcm,asp-v2.0.yaml     | 147 +++++++++++++++++++++
>  1 file changed, 147 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml:79:10: [warning] wrong indentation: expected 10 but found 9 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dt.yaml: asp@9c00000: 'mdio@c614', 'mdio@ce14' do not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dt.yaml:0:0: /example-0/asp@9c00000/mdio@c614: failed to match any schema with compatible: ['brcm,asp-v2.0-mdio']
Documentation/devicetree/bindings/net/brcm,asp-v2.0.example.dt.yaml:0:0: /example-0/asp@9c00000/mdio@ce14: failed to match any schema with compatible: ['brcm,asp-v2.0-mdio']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1532528

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

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AE14184E8
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 26 Sep 2021 00:16:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB7D5606F5
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Sep 2021 22:16:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9DBB66241C; Sat, 25 Sep 2021 22:16:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2DC4A61ECD;
	Sat, 25 Sep 2021 22:16:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3D13A60AD0
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 22:16:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2136E606F5; Sat, 25 Sep 2021 22:16:38 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by lists.linaro.org (Postfix) with ESMTPS id DE92A606F5
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 22:16:35 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id
 l16-20020a9d6a90000000b0053b71f7dc83so18514668otq.7
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 15:16:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=FpW3DBFCE8qk3/WrOETm+elC+ikU+jNmzXfQ4H1gg0E=;
 b=NMcqzHsGrqZqKBhxcv5P0zcBUfc/nOyQ+OyA562SrK7coil6VrZH9htmlEHccd52lT
 5Sk7K3PCmLU5DSleLW43BxjAZLjpJrTn97okD8h1E9K9kcFW8dlvPcOiYOLd8/BdQ/ha
 N16r0DBAaaHKpBy9cTXA69Tz0+kRO9m0UeFlcEx8d/6st8pzQzJ+EC9aKK5OwJbK2Hon
 eyZ0lSnaDvdsHYJzF6umj+TK1BO+M3kfmOhS1WyShTNB7TkSKNS4WiyukebhxRM9QJf/
 e3GUtdy2F84pPEAhTBK5U4Sg2PvSVLD7ZBMxtdY7If60xwTjkkzYWHjfCcXPMEXwzIrW
 NyTA==
X-Gm-Message-State: AOAM530hMOOv8Vu2ikOBMp4kF/9W1mC6NNvxyFdNyuKpYLI9CppEVNdK
 1moE+BO13Fl2OnjxIHQtmA==
X-Google-Smtp-Source: ABdhPJxDZmLtb6AEW6lYozXpuwFp7CVefOJn9HXZ8cCR5cQl8/2w5SChodyo8ByACA4nNEmpUmtxrw==
X-Received: by 2002:a9d:6c52:: with SMTP id g18mr10068166otq.75.1632608195370; 
 Sat, 25 Sep 2021 15:16:35 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 10sm587122oti.79.2021.09.25.15.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Sep 2021 15:16:34 -0700 (PDT)
Received: (nullmailer pid 3839366 invoked by uid 1000);
 Sat, 25 Sep 2021 22:16:30 -0000
From: Rob Herring <robh@kernel.org>
To: Justin Chen <justinpopo6@gmail.com>
In-Reply-To: <1632519891-26510-3-git-send-email-justinpopo6@gmail.com>
References: <1632519891-26510-1-git-send-email-justinpopo6@gmail.com>
 <1632519891-26510-3-git-send-email-justinpopo6@gmail.com>
Date: Sat, 25 Sep 2021 17:16:30 -0500
Message-Id: <1632608190.786543.3839365.nullmailer@robh.at.kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH net-next 2/5] dt-bindings: net: brcm,
 unimac-mdio: Add asp-v2.0
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
 bcm-kernel-feedback-list@broadcom.com, Doug Berger <opendmb@gmail.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, 24 Sep 2021 14:44:48 -0700, Justin Chen wrote:
> The ASP 2.0 Ethernet controller uses a brcm unimac.
> 
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1532529


mdio@e14: #address-cells:0:0: 1 was expected
	arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dt.yaml
	arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dt.yaml
	arch/arm/boot/dts/bcm2711-rpi-400.dt.yaml
	arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml

mdio@e14: #size-cells:0:0: 0 was expected
	arch/arm64/boot/dts/broadcom/bcm2711-rpi-400.dt.yaml
	arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dt.yaml
	arch/arm/boot/dts/bcm2711-rpi-400.dt.yaml
	arch/arm/boot/dts/bcm2711-rpi-4-b.dt.yaml

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

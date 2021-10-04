Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DB242157D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Oct 2021 19:50:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 463E866C02
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Oct 2021 17:50:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40ABC63249; Mon,  4 Oct 2021 17:50:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66F9F63261;
	Mon,  4 Oct 2021 17:50:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8569360A86
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Oct 2021 17:50:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 82CFD63261; Mon,  4 Oct 2021 17:50:27 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by lists.linaro.org (Postfix) with ESMTPS id 7B15D60A86
 for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Oct 2021 17:50:25 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id t189so22697315oie.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Oct 2021 10:50:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nExK0Sv28mbDB3Mt1OQhUPXvDIcix9XdHS0KQ339UaA=;
 b=JY3yj1g79SIgTlrDW2fdlu/vHDZl8mciZBR/NSgkEZRHjKUwNrtAxpI5vVNuQW17CX
 +YUwvjnGy55u20tr6lGPAuQhhvLW2/g2lvO3A0kWIKbetwiJisiovX6Qi0X9oMwJTdoV
 FSOq0eKzDLxwXNZBrkWxdtTiGB+mukEtLrWjYJsmKAzYTLnHYCPm/saQr55rsTm5qdBu
 IRZfZboRN30TTOWMs23jsrz6rGN4PXI+pkEWZdOhhVOFPB82ykgWYTo6scIOWaW+JmHZ
 sO0l5rJx5+YkUDnM7hAmwdhCDHmi/nmUmeyhpzWr1k4QQWtwe3/QCJWZ9EQE7Yg/eJ40
 qpAw==
X-Gm-Message-State: AOAM530hcgOLsR/AN69ZmezqAEdQ/hfX83Trrg3RQ0br60QDMQIyQVfh
 eeEY1huVuMPVHT6wVRFzcA==
X-Google-Smtp-Source: ABdhPJxMQm9vu5rBQQ5RoKlPfiDHh/XfWflRLqQTnEdgqzQ6yZh5clCu6/D1ptFLE2757iK4ibZG7g==
X-Received: by 2002:aca:604:: with SMTP id 4mr14070540oig.8.1633369824777;
 Mon, 04 Oct 2021 10:50:24 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p18sm3105444otk.7.2021.10.04.10.50.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 10:50:23 -0700 (PDT)
Received: (nullmailer pid 1551421 invoked by uid 1000);
 Mon, 04 Oct 2021 17:50:22 -0000
Date: Mon, 4 Oct 2021 12:50:22 -0500
From: Rob Herring <robh@kernel.org>
To: Justin Chen <justinpopo6@gmail.com>
Message-ID: <YVs+3mfImSGq9ww9@robh.at.kernel.org>
References: <1632519891-26510-1-git-send-email-justinpopo6@gmail.com>
 <1632519891-26510-3-git-send-email-justinpopo6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1632519891-26510-3-git-send-email-justinpopo6@gmail.com>
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
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Florian Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux.org.uk>,
 bcm-kernel-feedback-list@broadcom.com, Jakub Kicinski <kuba@kernel.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linaro-mm-sig@lists.linaro.org,
 Rob Herring <robh+dt@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
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

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 705234182B4
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Sep 2021 16:26:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C619062164
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Sep 2021 14:26:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A870E6048D; Sat, 25 Sep 2021 14:26:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB76C60C37;
	Sat, 25 Sep 2021 14:26:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4C39B6048D
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 14:26:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 47D4760C37; Sat, 25 Sep 2021 14:26:08 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by lists.linaro.org (Postfix) with ESMTPS id 423D86048D
 for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Sep 2021 14:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=GIoIFS8oysAVK606odyYm+NnfqhL/RtH/bn53TX3cfE=; b=HjJrUTCk9nfyUdYrqlQER55LNl
 bK2GVwXRCiVF31kumJrOs6gqHBB9/PeEy7NrtM+93p77z4KxBGYzcZd/+ztTlel9UkRm55pZnVzod
 d1irtnX0sGeuaFuLvHsE/w3/uvC0CvWl/pLbFP+c5opalejgRY1E0Vk3jnwAMDD0NweU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mU8cR-008DSx-Pv; Sat, 25 Sep 2021 16:25:35 +0200
Date: Sat, 25 Sep 2021 16:25:35 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Justin Chen <justinpopo6@gmail.com>
Message-ID: <YU8xX0fUWAoEnmRR@lunn.ch>
References: <1632519891-26510-1-git-send-email-justinpopo6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1632519891-26510-1-git-send-email-justinpopo6@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH net-next 0/5] brcm ASP 2.0 Ethernet
 controller
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Doug Berger <opendmb@gmail.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Jakub Kicinski <kuba@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Sep 24, 2021 at 02:44:46PM -0700, Justin Chen wrote:
> This patch set adds support for Broadcom's ASP 2.0 Ethernet controller.


Hi Justin

Does the hardware support L2 switching between the two ports? I'm just
wondering if later this is going to be modified into a switchdev
driver?

	Andrew
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

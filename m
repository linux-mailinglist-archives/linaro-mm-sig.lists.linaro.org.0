Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA375315BC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 21:27:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B98023F4CB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 19:27:13 +0000 (UTC)
Received: from twspam01.aspeedtech.com (twspam01.aspeedtech.com [211.20.114.71])
	by lists.linaro.org (Postfix) with ESMTPS id 4CF244049A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 May 2022 06:58:24 +0000 (UTC)
Received: from mail.aspeedtech.com ([192.168.0.24])
	by twspam01.aspeedtech.com with ESMTP id 24D6iAZH026760;
	Fri, 13 May 2022 14:44:10 +0800 (GMT-8)
	(envelope-from neal_liu@aspeedtech.com)
Received: from localhost.localdomain (192.168.10.10) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 13 May
 2022 14:57:32 +0800
From: Neal Liu <neal_liu@aspeedtech.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@aj.id.au>,
        Felipe Balbi <balbi@kernel.org>,
        Sumit Semwal
	<sumit.semwal@linaro.org>,
        =?UTF-8?q?Christian=20K=C3=B6nig?=
	<christian.koenig@amd.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        "Li
 Yang" <leoyang.li@nxp.com>
Date: Fri, 13 May 2022 14:57:25 +0800
Message-ID: <20220513065728.857722-1-neal_liu@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [192.168.10.10]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 24D6iAZH026760
X-MailFrom: neal_liu@aspeedtech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V44EQNZDRCKP64A2X4UOV3KJ5XSNGUBU
X-Message-ID-Hash: V44EQNZDRCKP64A2X4UOV3KJ5XSNGUBU
X-Mailman-Approved-At: Mon, 23 May 2022 19:27:10 +0000
CC: Neal Liu <neal_liu@aspeedtech.com>, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, BMC-SW@aspeedtech.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/3] add Aspeed udc driver for ast2600
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V44EQNZDRCKP64A2X4UOV3KJ5XSNGUBU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This patch series aim to add Aspeed USB 2.0 Device Controller (udc)
driver, including driver itself, device tree node and documentation.

*** BLURB HERE ***

Neal Liu (3):
  usb: gadget: add Aspeed ast2600 udc driver
  ARM: dts: aspeed: Add USB2.0 device controller node
  dt-bindings: usb: add documentation for aspeed udc

 .../devicetree/bindings/usb/aspeed,udc.yaml   |   52 +
 MAINTAINERS                                   |    7 +
 arch/arm/boot/dts/aspeed-g6.dtsi              |   10 +
 drivers/usb/gadget/udc/Kconfig                |   13 +
 drivers/usb/gadget/udc/Makefile               |    1 +
 drivers/usb/gadget/udc/aspeed_udc.c           | 1594 +++++++++++++++++
 6 files changed, 1677 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,udc.yaml
 create mode 100644 drivers/usb/gadget/udc/aspeed_udc.c

-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

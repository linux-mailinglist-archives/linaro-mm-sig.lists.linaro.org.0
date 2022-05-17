Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 482135324A9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 09:59:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C7FC3F4AC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 May 2022 07:59:44 +0000 (UTC)
Received: from twspam01.aspeedtech.com (twspam01.aspeedtech.com [211.20.114.71])
	by lists.linaro.org (Postfix) with ESMTPS id 9FD294106F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 17 May 2022 08:27:18 +0000 (UTC)
Received: from mail.aspeedtech.com ([192.168.0.24])
	by twspam01.aspeedtech.com with ESMTP id 24H8CQVW039692;
	Tue, 17 May 2022 16:12:26 +0800 (GMT-8)
	(envelope-from neal_liu@aspeedtech.com)
Received: from localhost.localdomain (192.168.10.10) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 17 May
 2022 16:26:04 +0800
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
Date: Tue, 17 May 2022 16:25:55 +0800
Message-ID: <20220517082558.3534161-1-neal_liu@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [192.168.10.10]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 24H8CQVW039692
X-MailFrom: neal_liu@aspeedtech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GJDLK3BTEBIZXV4OAE46M32SDYRJCXVR
X-Message-ID-Hash: GJDLK3BTEBIZXV4OAE46M32SDYRJCXVR
X-Mailman-Approved-At: Tue, 24 May 2022 07:59:22 +0000
CC: Neal Liu <neal_liu@aspeedtech.com>, linux-aspeed@lists.ozlabs.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/3] add Aspeed udc driver for ast2600
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GJDLK3BTEBIZXV4OAE46M32SDYRJCXVR/>
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

Change since v1:
- Fix build test warning reported by kernel test robot.
- Rename proper name for dt-bindings document.

*** BLURB HERE ***

Neal Liu (3):
  usb: gadget: add Aspeed ast2600 udc driver
  ARM: dts: aspeed: Add USB2.0 device controller node
  dt-bindings: usb: add documentation for aspeed udc

 .../bindings/usb/aspeed,ast2600-udc.yaml      |   52 +
 MAINTAINERS                                   |    7 +
 arch/arm/boot/dts/aspeed-g6.dtsi              |   10 +
 drivers/usb/gadget/udc/Kconfig                |   13 +
 drivers/usb/gadget/udc/Makefile               |    1 +
 drivers/usb/gadget/udc/aspeed_udc.c           | 1601 +++++++++++++++++
 6 files changed, 1684 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/aspeed,ast2600-udc.yaml
 create mode 100644 drivers/usb/gadget/udc/aspeed_udc.c

-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

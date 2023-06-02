Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F8F722A33
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 17:06:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73CEC43BEB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jun 2023 15:06:05 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lists.linaro.org (Postfix) with ESMTP id D79533F205
	for <linaro-mm-sig@lists.linaro.org>; Fri,  2 Jun 2023 07:40:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of keith.zhao@starfivetech.com designates 61.152.239.71 as permitted sender) smtp.mailfrom=keith.zhao@starfivetech.com;
	dmarc=none
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 546D280E2;
	Fri,  2 Jun 2023 15:40:47 +0800 (CST)
Received: from EXMBX061.cuchost.com (172.16.6.61) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 2 Jun
 2023 15:40:47 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX061.cuchost.com
 (172.16.6.61) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 2 Jun
 2023 15:40:46 +0800
From: Keith Zhao <keith.zhao@starfivetech.com>
To: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
Date: Fri, 2 Jun 2023 15:40:34 +0800
Message-ID: <20230602074043.33872-1-keith.zhao@starfivetech.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX061.cuchost.com
 (172.16.6.61)
X-YovoleRuleAgent: yovoleflag
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.50)[175.102.18.54:received,180.164.60.184:received,61.152.239.71:from];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:61.152.239.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	ASN(0.00)[asn:4812, ipnet:61.152.0.0/16, country:CN];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[starfivetech.com];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D79533F205
X-Spamd-Bar: -
X-MailFrom: keith.zhao@starfivetech.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GRU2KPUDZ5XZLWPG7MHKLSGP2FTA3BX6
X-Message-ID-Hash: GRU2KPUDZ5XZLWPG7MHKLSGP2FTA3BX6
X-Mailman-Approved-At: Mon, 05 Jun 2023 15:06:02 +0000
CC: Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Keith Zhao <keith.zhao@starfivetech.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/9] Add DRM driver for StarFive SoC JH7110
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GRU2KPUDZ5XZLWPG7MHKLSGP2FTA3BX6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

This series is a DRM driver for StarFive SoC JH7110, which includes a
display controller driver for Verisilicon DC8200 and an HMDI driver.

We use GEM framework for buffer management and allocate memory by 
using DMA APIs.

The JH7110 display subsystem includes a display controller Verisilicon
DC8200 and an HDMI transmitter. The HDMI TX IP is designed for transmitting 
video and audio data from DC8200 to a display device. The HDMI TX IP 
consists of  the digital controller and the physical layer.

This series does not support HDMI audio driver.

Keith Zhao (9):
  dt-bindings: display: Add yamls for JH7110 display subsystem
  riscv: dts: starfive: jh7110: add dc&hdmi controller node
  drm/verisilicon: Add basic drm driver
  drm/verisilicon: Add gem driver for JH7110 SoC
  drm/verisilicon: Add mode config funcs
  drm/verisilicon: Add drm crtc funcs
  drm/verisilicon: Add drm plane funcs
  drm/verisilicon: Add verisilicon dc controller driver
  drm/verisilicon: Add starfive hdmi driver

 .../display/verisilicon/starfive-hdmi.yaml    |   93 +
 .../display/verisilicon/verisilicon-dc.yaml   |  110 +
 .../display/verisilicon/verisilicon-drm.yaml  |   42 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 MAINTAINERS                                   |    9 +
 .../jh7110-starfive-visionfive-2.dtsi         |   87 +
 arch/riscv/boot/dts/starfive/jh7110.dtsi      |   46 +
 drivers/gpu/drm/Kconfig                       |    2 +
 drivers/gpu/drm/Makefile                      |    1 +
 drivers/gpu/drm/verisilicon/Kconfig           |   24 +
 drivers/gpu/drm/verisilicon/Makefile          |   13 +
 drivers/gpu/drm/verisilicon/starfive_hdmi.c   |  928 ++++++++
 drivers/gpu/drm/verisilicon/starfive_hdmi.h   |  296 +++
 drivers/gpu/drm/verisilicon/vs_crtc.c         |  388 ++++
 drivers/gpu/drm/verisilicon/vs_crtc.h         |   74 +
 drivers/gpu/drm/verisilicon/vs_dc.c           | 1040 +++++++++
 drivers/gpu/drm/verisilicon/vs_dc.h           |   62 +
 drivers/gpu/drm/verisilicon/vs_dc_hw.c        | 2008 +++++++++++++++++
 drivers/gpu/drm/verisilicon/vs_dc_hw.h        |  496 ++++
 drivers/gpu/drm/verisilicon/vs_drv.c          |  301 +++
 drivers/gpu/drm/verisilicon/vs_drv.h          |   52 +
 drivers/gpu/drm/verisilicon/vs_fb.c           |  181 ++
 drivers/gpu/drm/verisilicon/vs_fb.h           |   15 +
 drivers/gpu/drm/verisilicon/vs_gem.c          |  372 +++
 drivers/gpu/drm/verisilicon/vs_gem.h          |   72 +
 drivers/gpu/drm/verisilicon/vs_plane.c        |  440 ++++
 drivers/gpu/drm/verisilicon/vs_plane.h        |   74 +
 drivers/gpu/drm/verisilicon/vs_type.h         |   72 +
 include/uapi/drm/drm_fourcc.h                 |   83 +
 include/uapi/drm/vs_drm.h                     |   50 +
 30 files changed, 7433 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml
 create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml
 create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
 create mode 100644 drivers/gpu/drm/verisilicon/Makefile
 create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.c
 create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_fb.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_fb.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_gem.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_gem.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_type.h
 create mode 100644 include/uapi/drm/vs_drm.h

-- 
2.34.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

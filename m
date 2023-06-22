Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C960F749E9F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 16:09:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5B7743CC0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 14:09:02 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by lists.linaro.org (Postfix) with ESMTPS id 23F1D3ED9C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jun 2023 18:19:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=dabbelt-com.20221208.gappssmtp.com header.s=20221208 header.b=hJ2zkmtw;
	spf=pass (lists.linaro.org: domain of palmer@dabbelt.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=palmer@dabbelt.com;
	dmarc=none
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-38dec65ab50so5529059b6e.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jun 2023 11:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1687457955; x=1690049955;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2eCSU8eCreQMQARaqFK0Z7W8VecyujL3iJIi084r8bk=;
        b=hJ2zkmtwhWO4g6OT6PCjZBUnY/2he9q5drY/j/hU4kEwc0SEnsoJHwTW8w45eM3b4w
         RN+PcJ/CqcpXve69GuN6LRpJXwbStZICZdvtuz9ODFbTBwVrIi4df9d37SnQbadciOVX
         PUWTPjiEemuj1TK613lA+nTvPw7a9KxaI1DpKzSwG53ZJ6cICspUvwoP2+qVvLhzdJBO
         XvSD2WpkIhuOezesW//T48I3MF5cbE7ICNuM9mESqaUSO6Sb1IIqLdz128uSW8oE6emF
         WFbEZsha4ORo5ZYpAK507l77w6vQFM/JTqFd6iyy9X378usl35oJycAQ0wWSu9U37mM8
         J7ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687457955; x=1690049955;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2eCSU8eCreQMQARaqFK0Z7W8VecyujL3iJIi084r8bk=;
        b=Iu4uBKuWfb7iQFoC2G03/MdjtZXS6NlPpu2rQwHCUyV225mfQ4XuvR71skzlJT3dVB
         wLlXw/4Mn4tVi9uxio/9HcoDczmS3KRakEyoXLKl9JczUm/QhZFJfbbXbx5zRInInVeA
         iFJisu6ZU7WoVG48eoGH2dXWngP294SaTKNnRVQPPfUwCYzW319Xnr0DQEFjYawqiYA3
         5wlpP521lo1/d9YOYT5hqh81VKIjzCbDLmFZtlTe3QDv6PXdhgnK3NM2ZTeckqnsr0mN
         Pfn7ERKB1Jb1c6z+LyOInJ88unHgorWjGt/nYGROzwFdQgMjq/XqszgdSetGkc1Ae59y
         7AGQ==
X-Gm-Message-State: AC+VfDxnmQSQnA0JnnOVnuWPGrENAUY+zEQ7zKemxd2EMHRkfJJNCX4h
	3k3tqOYUIzcdV1Cx7ItDiMs0bg==
X-Google-Smtp-Source: ACHHUZ7EBnnb4fJReoZIx5GFM1PIx+0BLy2Aj/TnlqNdQHm7hdf+kUGwMO2gLRRcnjXYslyeHFqv0w==
X-Received: by 2002:a05:6808:8e8:b0:39e:dc23:d835 with SMTP id d8-20020a05680808e800b0039edc23d835mr13371412oic.48.1687457955221;
        Thu, 22 Jun 2023 11:19:15 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id h8-20020a63df48000000b00548fb73874asm5184584pgj.37.2023.06.22.11.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 11:19:14 -0700 (PDT)
Date: Thu, 22 Jun 2023 11:19:14 -0700 (PDT)
X-Google-Original-Date: Thu, 22 Jun 2023 11:18:34 PDT (-0700)
In-Reply-To: <20230602074043.33872-1-keith.zhao@starfivetech.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: keith.zhao@starfivetech.com
Message-ID: <mhng-17a80922-c7a0-4717-adfa-0959d3dfab77@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
X-Spamd-Result: default: False [-1.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[dabbelt-com.20221208.gappssmtp.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[30];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[dabbelt-com.20221208.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_NA(0.00)[dabbelt.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.172:from];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 23F1D3ED9C
X-Spamd-Bar: -
X-MailFrom: palmer@dabbelt.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5ZHHBHQPTOLLWTNPQYFXKAZIEV7NRBZK
X-Message-ID-Hash: 5ZHHBHQPTOLLWTNPQYFXKAZIEV7NRBZK
X-Mailman-Approved-At: Thu, 06 Jul 2023 14:08:47 +0000
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kernel@esmil.dk, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, p.zabel@pengutronix.de, sumit.semwal@linaro.org, christian.koenig@amd.com, andersson@kernel.org, heiko@sntech.de, shawnguo@kernel.org, jagan@edgeble.ai, macromorgan@hotmail.com, keith.zhao@starfivetech.com, jack.zhu@starfivetech.com, shengyang.chen@starfivetech.com, changhuang.liang@starfivetech.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/9] Add DRM driver for StarFive SoC JH7110
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5ZHHBHQPTOLLWTNPQYFXKAZIEV7NRBZK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On Fri, 02 Jun 2023 00:40:34 PDT (-0700), keith.zhao@starfivetech.com wrote:
> Hi,
>
> This series is a DRM driver for StarFive SoC JH7110, which includes a
> display controller driver for Verisilicon DC8200 and an HMDI driver.
>
> We use GEM framework for buffer management and allocate memory by
> using DMA APIs.
>
> The JH7110 display subsystem includes a display controller Verisilicon
> DC8200 and an HDMI transmitter. The HDMI TX IP is designed for transmitting
> video and audio data from DC8200 to a display device. The HDMI TX IP
> consists of  the digital controller and the physical layer.
>
> This series does not support HDMI audio driver.
>
> Keith Zhao (9):
>   dt-bindings: display: Add yamls for JH7110 display subsystem
>   riscv: dts: starfive: jh7110: add dc&hdmi controller node
>   drm/verisilicon: Add basic drm driver
>   drm/verisilicon: Add gem driver for JH7110 SoC
>   drm/verisilicon: Add mode config funcs
>   drm/verisilicon: Add drm crtc funcs
>   drm/verisilicon: Add drm plane funcs
>   drm/verisilicon: Add verisilicon dc controller driver
>   drm/verisilicon: Add starfive hdmi driver
>
>  .../display/verisilicon/starfive-hdmi.yaml    |   93 +
>  .../display/verisilicon/verisilicon-dc.yaml   |  110 +
>  .../display/verisilicon/verisilicon-drm.yaml  |   42 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
>  MAINTAINERS                                   |    9 +
>  .../jh7110-starfive-visionfive-2.dtsi         |   87 +
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      |   46 +
>  drivers/gpu/drm/Kconfig                       |    2 +
>  drivers/gpu/drm/Makefile                      |    1 +
>  drivers/gpu/drm/verisilicon/Kconfig           |   24 +
>  drivers/gpu/drm/verisilicon/Makefile          |   13 +
>  drivers/gpu/drm/verisilicon/starfive_hdmi.c   |  928 ++++++++
>  drivers/gpu/drm/verisilicon/starfive_hdmi.h   |  296 +++
>  drivers/gpu/drm/verisilicon/vs_crtc.c         |  388 ++++
>  drivers/gpu/drm/verisilicon/vs_crtc.h         |   74 +
>  drivers/gpu/drm/verisilicon/vs_dc.c           | 1040 +++++++++
>  drivers/gpu/drm/verisilicon/vs_dc.h           |   62 +
>  drivers/gpu/drm/verisilicon/vs_dc_hw.c        | 2008 +++++++++++++++++
>  drivers/gpu/drm/verisilicon/vs_dc_hw.h        |  496 ++++
>  drivers/gpu/drm/verisilicon/vs_drv.c          |  301 +++
>  drivers/gpu/drm/verisilicon/vs_drv.h          |   52 +
>  drivers/gpu/drm/verisilicon/vs_fb.c           |  181 ++
>  drivers/gpu/drm/verisilicon/vs_fb.h           |   15 +
>  drivers/gpu/drm/verisilicon/vs_gem.c          |  372 +++
>  drivers/gpu/drm/verisilicon/vs_gem.h          |   72 +
>  drivers/gpu/drm/verisilicon/vs_plane.c        |  440 ++++
>  drivers/gpu/drm/verisilicon/vs_plane.h        |   74 +
>  drivers/gpu/drm/verisilicon/vs_type.h         |   72 +
>  include/uapi/drm/drm_fourcc.h                 |   83 +
>  include/uapi/drm/vs_drm.h                     |   50 +
>  30 files changed, 7433 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/verisilicon/starfive-hdmi.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-dc.yaml
>  create mode 100644 Documentation/devicetree/bindings/display/verisilicon/verisilicon-drm.yaml
>  create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
>  create mode 100644 drivers/gpu/drm/verisilicon/Makefile
>  create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.c
>  create mode 100644 drivers/gpu/drm/verisilicon/starfive_hdmi.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_drv.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_fb.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_fb.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_gem.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_gem.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_type.h
>  create mode 100644 include/uapi/drm/vs_drm.h

This popped up in the RISC-V patchwork, so

Acked-by: Palmer Dabbelt <palmer@rivosinc.com> # RISC-V

in case anyone was looking for one -- I definately don't know anything 
about DRM, though, so not sure that means much...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

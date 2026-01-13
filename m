Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHfPB3wL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:17:00 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D37411858
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:16:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C689140518
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:16:58 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by lists.linaro.org (Postfix) with ESMTPS id C08263F7CF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 17:44:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of tomeu.vizoso@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=tomeu.vizoso@gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b87281dbdbcso314366966b.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 09:44:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326286; x=1768931086;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nRDDaI8PSQ9i8fUQYmRubU2lZ9FKKoqL8+7T/Yos84E=;
        b=iQmjJ1aQmDBVGzuYjf7w0e0huA75TPQiZAOO/uou5lZZYnc36YrUuMTyXquimI+NT5
         H+X58hODvgk+x5x7AGfHUXK5Ou607grOV43zEXjRfMQcNN46N6TlLVbD7ws6G+HLNwAk
         kxtbHekNl/2JOY1QdTP25znMzszxwQkrNDV6jujWURathsz/XGI9ue6vKLXf4qW/8R/1
         Xwjivpfg4/gpe1dR29bFQSKQ5eQ4U/TF73Ry7zd6mJ/FiUsrkk1mBtvnnwemjSCVdW6E
         euUa6kLhCsGSsOLQMK3ixbMX3x5dFfzxAA68R2QtLc3M7xPRWxnQMfaEl6SZqLtNkMhl
         Ftmw==
X-Forwarded-Encrypted: i=1; AJvYcCWDY9p9yPrrXiAPbbs66B3sYI0qJ24o/J5RxTjdZY6gAVTaQEsjtFllcjNAPy7BHdwd8lr0VKrJtyDjf3qf@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/cpBhY86LiZ9KomXDsKZFFeT5TmQXiWudTHSViCXiuwvQHbm3
	NDJJUPwRxPWOWufdS685Uu+xlm3XzLc+Z6j0VRr+mWsqe3grW1T0fHJa
X-Gm-Gg: AY/fxX4kePJQu8uqRl7JuYb2EAenX2qabZYA1LS/msjV95LlTF4Sgeo1twEm9YR9URV
	EmfhtMCG+H9n3ttRxhSCq8eGUu2DLUIO4PWR2bHu5dx8Xe1wTsWtUl4jdje0HMiZDtIMkGpHYlF
	cm6hE9cgb4VBi7JwgpHZ9PoWLyQqVJzYKOaGUZlJ7ruACHQj0J7DetnelxuFKCDrWh34oW3c4BG
	ZGRrhsdHELCqaSqln2CSLFrO8eCgin6bn4OsxOCogXE8G8zdfBBYxfxvEvfx61B3o7FySkp0D8W
	yNcTnJSnVZGKqQ3lhSKHI5q4SapmBhEepRUdOTOLJH2/nvvhYY29bIpzZ/iG376zMguvE4Jacfi
	mu5kKTAHgf+nUfQqva/XM2QZMluMU7qPLfaNs0cIljmPx/0PZrRRVOFTbVdw2mtil49o0egAXpf
	aV/gqo3kOlc9NUr6WUg1DzZZh4cveetVFW3a+P4UQW7uGWdQ==
X-Google-Smtp-Source: AGHT+IF2LxGsN/6Keoe3DyT2UHG1IbdrBpLZY09D3elBScNdSzuVpg3kGMzeCVp/wgijXP8twmjnjw==
X-Received: by 2002:a17:906:7954:b0:b87:2579:b6cf with SMTP id a640c23a62f3a-b872579ba1bmr579850766b.41.1768326285367;
        Tue, 13 Jan 2026 09:44:45 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm20873259a12.17.2026.01.13.09.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:44:44 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 13 Jan 2026 18:44:34 +0100
Message-Id: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIKEZmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0Nj3ZKMxNzUYl1jYxNDI/NEoxRLwxQloOKCotS0zAqwQdGxtbUAsQm
 1olgAAAA=
X-Change-ID: 20260113-thames-334127a2d91d
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>,
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailer: b4 0.14.2
X-Spamd-Bar: --
X-MailFrom: tomeu.vizoso@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BYSC5QF4AJAZIBKBK34Q2EBRUX5JAGGX
X-Message-ID-Hash: BYSC5QF4AJAZIBKBK34Q2EBRUX5JAGGX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:52 +0000
CC: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/5] New DRM accel driver for Texas Instruments' C7x DSPs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BYSC5QF4AJAZIBKBK34Q2EBRUX5JAGGX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2230];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[tomeuvizoso.net];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[tomeu@tomeuvizoso.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,tomeuvizoso.net:mid,tomeuvizoso.net:email,mesa3d.org:url]
X-Rspamd-Queue-Id: A6D37411858
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds a new DRM/Accel driver that supports the C7x DSPs
inside some Texas Instruments SoCs such as the J722S. These can be used
as accelerators for various workloads, including machine learning
inference.

This driver controls the power state of the hardware via remoteproc and
communicates with the firmware running on the DSP via rpmsg_virtio.  The
kernel driver itself allocates buffers, manages contexts, and submits
jobs to the DSP firmware. Buffers are mapped by the DSP itself using its
MMU, providing memory isolation among different clients.

The source code for the firmware running on the DSP is available at:
https://gitlab.freedesktop.org/tomeu/thames_firmware/.

Everything else is done in userspace, as a Gallium driver (also called
thames) that is part of the Mesa3D project: https://docs.mesa3d.org/teflon.html

If there is more than one core that advertises the same rpmsg_virtio
service name, the driver will load balance jobs between them with
drm-gpu-scheduler.

Userspace portion of the driver: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/39298

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
Tomeu Vizoso (5):
      arm64: dts: ti: k3-j722s-ti-ipc-firmware: Add memory pool for DSP i/o buffers
      accel/thames: Add driver for the C7x DSPs in TI SoCs
      accel/thames: Add IOCTLs for BO creation and mapping
      accel/thames: Add IOCTL for job submission
      accel/thames: Add IOCTL for memory synchronization

 Documentation/accel/thames/index.rst               |  28 ++
 MAINTAINERS                                        |   9 +
 .../boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi      |  11 +-
 drivers/accel/Kconfig                              |   1 +
 drivers/accel/Makefile                             |   3 +-
 drivers/accel/thames/Kconfig                       |  26 ++
 drivers/accel/thames/Makefile                      |  11 +
 drivers/accel/thames/thames_core.c                 | 161 +++++++
 drivers/accel/thames/thames_core.h                 |  53 +++
 drivers/accel/thames/thames_device.c               |  93 +++++
 drivers/accel/thames/thames_device.h               |  46 ++
 drivers/accel/thames/thames_drv.c                  | 180 ++++++++
 drivers/accel/thames/thames_drv.h                  |  21 +
 drivers/accel/thames/thames_gem.c                  | 407 ++++++++++++++++++
 drivers/accel/thames/thames_gem.h                  |  45 ++
 drivers/accel/thames/thames_ipc.h                  | 204 +++++++++
 drivers/accel/thames/thames_job.c                  | 463 +++++++++++++++++++++
 drivers/accel/thames/thames_job.h                  |  51 +++
 drivers/accel/thames/thames_rpmsg.c                | 276 ++++++++++++
 drivers/accel/thames/thames_rpmsg.h                |  27 ++
 20 files changed, 2113 insertions(+), 3 deletions(-)
---
base-commit: 27927a79b3c6aebd18f38507a8160294243763dc
change-id: 20260113-thames-334127a2d91d

Best regards,
-- 
Tomeu Vizoso <tomeu@tomeuvizoso.net>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

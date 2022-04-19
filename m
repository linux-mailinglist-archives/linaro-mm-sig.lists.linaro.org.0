Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1031D511150
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 08:38:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F95248013
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 27 Apr 2022 06:38:30 +0000 (UTC)
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
	by lists.linaro.org (Postfix) with ESMTPS id 4ED263EF0D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Apr 2022 13:59:43 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1650376782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mFWtlF0oHPGP6DlOf6E0rXJ/V6DYNXr//ANS9HvqQvw=;
	b=aJtULM7iH7zTY3r4fHqFFgnk7UShgfYh7JBWbfvVijbe+NAZk7o5lf0cGTu4BrE8W68yHM
	5o9hD6w59zxGhT62iGBdulTuLB1xhfCnA3e+QqpQXs6mueg80DkTVbXmdLZShHm+I/ZG/d
	kwxrgWiHz7qYebXVBViiZxDA+YvydT8=
From: Cai Huoqing <cai.huoqing@linux.dev>
To: cai.huoqing@linux.dev
Date: Tue, 19 Apr 2022 21:58:58 +0800
Message-Id: <20220419135908.39606-1-cai.huoqing@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: linux.dev
X-MailFrom: cai.huoqing@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MI4P2444QY2Z2WNISFC5CBJJRZMROXS7
X-Message-ID-Hash: MI4P2444QY2Z2WNISFC5CBJJRZMROXS7
X-Mailman-Approved-At: Wed, 27 Apr 2022 06:38:25 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/2] drm/nvdla: Add driver support for NVDLA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MI4P2444QY2Z2WNISFC5CBJJRZMROXS7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The NVIDIA Deep Learning Accelerator (NVDLA) is an open source IP
which is integrated into NVIDIA Jetson AGX Xavier,
so add driver support for this accelerator.

NVDLA introduce:
http://nvdla.org/primer.html

User mode driver:
https://github.com/caihuoq/nvdla/tree/main/sw/umd


Cai Huoqing (2):
  MAINTAINERS: Add the driver info of the NVDLA
  drm/nvdla: Add driver support for NVDLA

 MAINTAINERS                             |    7 +
 drivers/gpu/drm/Kconfig                 |    2 +
 drivers/gpu/drm/Makefile                |    1 +
 drivers/gpu/drm/nvdla/Kconfig           |    8 +
 drivers/gpu/drm/nvdla/Makefile          |   19 +
 drivers/gpu/drm/nvdla/nvdla_bdma.c      |  200 +
 drivers/gpu/drm/nvdla/nvdla_cache.c     |  215 +
 drivers/gpu/drm/nvdla/nvdla_cdp.c       |  300 ++
 drivers/gpu/drm/nvdla/nvdla_common.c    |  295 ++
 drivers/gpu/drm/nvdla/nvdla_common.h    |  835 +++
 drivers/gpu/drm/nvdla/nvdla_conv.c      |  683 +++
 drivers/gpu/drm/nvdla/nvdla_drm.c       |  695 +++
 drivers/gpu/drm/nvdla/nvdla_drm.h       |  127 +
 drivers/gpu/drm/nvdla/nvdla_engine.c    |  233 +
 drivers/gpu/drm/nvdla/nvdla_engine.h    |  272 +
 drivers/gpu/drm/nvdla/nvdla_gem.c       |  393 ++
 drivers/gpu/drm/nvdla/nvdla_ioctl.h     |   99 +
 drivers/gpu/drm/nvdla/nvdla_pdp.c       |  446 ++
 drivers/gpu/drm/nvdla/nvdla_reg.h       | 6411 +++++++++++++++++++++++
 drivers/gpu/drm/nvdla/nvdla_rubik.c     |  217 +
 drivers/gpu/drm/nvdla/nvdla_sched.h     |   52 +
 drivers/gpu/drm/nvdla/nvdla_scheduler.c | 1005 ++++
 drivers/gpu/drm/nvdla/nvdla_sdp.c       |  728 +++
 23 files changed, 13243 insertions(+)
 create mode 100644 drivers/gpu/drm/nvdla/Kconfig
 create mode 100644 drivers/gpu/drm/nvdla/Makefile
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_bdma.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_cache.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_cdp.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_common.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_common.h
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_conv.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_drm.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_drm.h
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_engine.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_engine.h
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_gem.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_ioctl.h
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_pdp.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_reg.h
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_rubik.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_sched.h
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_scheduler.c
 create mode 100644 drivers/gpu/drm/nvdla/nvdla_sdp.c

-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

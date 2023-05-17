Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F89E70F2C9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 11:30:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27BA441405
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 May 2023 09:30:54 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by lists.linaro.org (Postfix) with ESMTPS id 0ABD33EA46
	for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 14:52:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=U6DObmhK;
	spf=pass (lists.linaro.org: domain of abailon@baylibre.com designates 209.85.221.68 as permitted sender) smtp.mailfrom=abailon@baylibre.com;
	dmarc=none
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-3077d134028so624519f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 17 May 2023 07:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684335164; x=1686927164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v9W6xTSdLFIJuQ/KjRd4yXxi7gzv1/GuKhJzV0MwXqg=;
        b=U6DObmhKv1Q/NeXMNtscNlGUJxhj4j2R1C6zujYJ7GYGm6RfKyHRK5rbpxOyQCRr7p
         9wmVRKphBLBj8MafZEBG1rA5CFz7KS70zcAz/4RuL5ItJXDP6C6mnVePcC7sg+PtOyK7
         GX0rkHrtku6mDN69D2KdFk+cTyqH5eGb+lklYFi4mCti31SxZJ1z6zJ7jWhpec4tgylp
         5QET8jdB/pkb2enuppJmj+frSrUbJ15LBNRRj80E2/ynzgDytoBdxYKVmP0OUFMEo9Ab
         gR9cJ/+3ZSqKvTvqeybQmboG6MXAgKdPr24rCyfy5XrkqMCByzu7P8I+GlRexg2KZJZu
         jQuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684335164; x=1686927164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v9W6xTSdLFIJuQ/KjRd4yXxi7gzv1/GuKhJzV0MwXqg=;
        b=DYaCzWrwx8e1259VbnT2DHE07QJAj/e1jDdcb11jjTXc6JzB/swcWWoOtQWfNJ7S+S
         Deszt8yP34dJXd0Ck2tMhWu0ahImjp5qZMR5dkGnsZXO/Ar57slCSsLMuBOYpA12sVGl
         8Nnl0QjekmlI9x1nGbwCrm+RsMDLf8oSpKu1AZcsp1HVM3EbfWIZiTLFhu0+Kfcd/kMS
         rnRpTWP0Yccglx3hyrsu21bJxpXc/bOS4pdxTGzP/NQ0QpJ2EfK6RS1+3l6aX7wiGKjg
         JHwDWLAUPSD7E5K/PzomzGRhNQWOadN1bEUOPLYQx3aEVSEsMgSRVFPVl3wnPZWOsLiF
         0zqg==
X-Gm-Message-State: AC+VfDxIGtAKjI0Ttqh/imKXNOdO4KvEUH7mXHa6b16x+yP51EEh5axH
	lHl80rG8PAo+rafsMxudnEJinA==
X-Google-Smtp-Source: ACHHUZ7IUdIfSJ/RjD1XHlXKNgHreYBrpH+v8F3m/6tEEkXNve0qaiL5jYWNc/RtwyFAENvpakbl+g==
X-Received: by 2002:adf:e0c4:0:b0:306:3b39:9a3d with SMTP id m4-20020adfe0c4000000b003063b399a3dmr920596wri.15.1684335163959;
        Wed, 17 May 2023 07:52:43 -0700 (PDT)
Received: from blaptop.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id v11-20020a5d678b000000b002f7780eee10sm2979098wru.59.2023.05.17.07.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 07:52:43 -0700 (PDT)
From: Alexandre Bailon <abailon@baylibre.com>
To: airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Date: Wed, 17 May 2023 16:52:30 +0200
Message-Id: <20230517145237.295461-1-abailon@baylibre.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20221208.gappssmtp.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,collabora.com,amd.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.68:from];
	DKIM_TRACE(0.00)[baylibre-com.20221208.gappssmtp.com:+];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0ABD33EA46
X-Spamd-Bar: /
X-MailFrom: abailon@baylibre.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3MP4TME667TZ5CQTQPV7NZHMTEXQSXF7
X-Message-ID-Hash: 3MP4TME667TZ5CQTQPV7NZHMTEXQSXF7
X-Mailman-Approved-At: Wed, 24 May 2023 09:30:51 +0000
CC: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, sumit.semwal@linaro.org, christian.koenig@amd.com, jstephan@baylibre.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, khilman@baylibre.com, nbelin@baylibre.com, bero@baylibre.com, Alexandre Bailon <abailon@baylibre.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/7] Add a DRM driver to support AI Processing Unit (APU)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3MP4TME667TZ5CQTQPV7NZHMTEXQSXF7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This adds a DRM driver that implements communication between the CPU and an
APU. The driver target embedded device that usually run inference using some
prebuilt models. The goal is to provide common infrastructure that could be
re-used to support many accelerators. Both kernel, userspace and firmware tries
to use standard and existing to leverage the development and maintenance effort.
The series implements two platform drivers, one for simulation and another one for
the mt8183 (compatible with mt8365).

For the people interested by the firmware or userspace library,
the sources are available here:
https://gitlab.baylibre.com/baylibre/libapu/libapu

The support of APU has to be upstreamed to libdrm.
Until this is done, you could find the source here:
https://gitlab.baylibre.com/baylibre/libapu/libdrm/-/tree/abailon/main

The driver for mt8183 depends on this series (which is currently blocked):
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=620429

Alexandre Bailon (5):
  drm: Add support of AI Processor Unit (APU)
  drm/apu: Add memory allocator
  drm/apu: Add support of requests
  drm/apu: Add support of IOMMU
  dt-bindings: Add bidings for mtk,apu-drm

Julien Stephan (2):
  drm/apu: allow platform driver to implement their own mmap function
  drm/apu: Add support for a simulated APU

 .../devicetree/bindings/gpu/mtk,apu-drm.yaml  |  38 ++
 drivers/gpu/drm/Kconfig                       |   2 +
 drivers/gpu/drm/Makefile                      |   1 +
 drivers/gpu/drm/apu/Kconfig                   |  22 +
 drivers/gpu/drm/apu/Makefile                  |  10 +
 drivers/gpu/drm/apu/apu_drv.c                 | 282 +++++++++
 drivers/gpu/drm/apu/apu_gem.c                 | 230 +++++++
 drivers/gpu/drm/apu/apu_internal.h            | 205 ++++++
 drivers/gpu/drm/apu/apu_sched.c               | 592 ++++++++++++++++++
 drivers/gpu/drm/apu/simu_apu.c                | 313 +++++++++
 include/uapi/drm/apu_drm.h                    |  81 +++
 11 files changed, 1776 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpu/mtk,apu-drm.yaml
 create mode 100644 drivers/gpu/drm/apu/Kconfig
 create mode 100644 drivers/gpu/drm/apu/Makefile
 create mode 100644 drivers/gpu/drm/apu/apu_drv.c
 create mode 100644 drivers/gpu/drm/apu/apu_gem.c
 create mode 100644 drivers/gpu/drm/apu/apu_internal.h
 create mode 100644 drivers/gpu/drm/apu/apu_sched.c
 create mode 100644 drivers/gpu/drm/apu/simu_apu.c
 create mode 100644 include/uapi/drm/apu_drm.h

-- 
2.39.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

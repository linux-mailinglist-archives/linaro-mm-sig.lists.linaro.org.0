Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0916CCD45
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 00:34:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CBD03F8E4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Mar 2023 22:34:26 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by lists.linaro.org (Postfix) with ESMTPS id E64F83E957
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 22:34:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=lJbb7OKe;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.210.42 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f42.google.com with SMTP id k14-20020a9d700e000000b0069faa923e7eso7240517otj.10
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 15:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680042853;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LQkDgg9vRxmw6OR2ZcWKh/O2EZ+U208KlBquhlXylKk=;
        b=lJbb7OKeGfSEi9V5+N2I0ScWhsHffGoOv4pJ2AxMX3zd8SMyEnOKU6HHw75B0uNTou
         iC3LHUwMWDxs4QeT46toqjrLWUj7RlZRz7mV1hsg3xs1GE0c7lMIX+0Nj5rLGcewZ0Rk
         cHgpvfi/U8Dy1g1MEZUXnU1djnhYcElvBy1SGa2eX1Qs/Tjn/NVtGCGtS0SwnAUjoQIf
         vTjPBMXGzcU0sb2KA+SqcGUjv455PYBUu0iQ0pkQMdLJq0b+kqt9UtHEdTE3yE+0SjR0
         7HCbhRt6VVW3LXtfck2jN0HdYXLlp+fgYOTZtwjQumyzUxLNSjoxErmTO+tmEENn1Qcw
         5g1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680042853;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LQkDgg9vRxmw6OR2ZcWKh/O2EZ+U208KlBquhlXylKk=;
        b=ObirdNrLKmB5AhiudlMAfD/KWElAjkkS14aU/5VW3qMFcOpQGxtdhL4qUsQMvSj2cq
         oA2IbX/prYz67K/qTE8h6y4eUqeKNm65Qjt780sk0xiRi9eRHQ/dIGgUvM2iejlHAG75
         I7pD2WHV/xmy898Y6yFzVWsUUzjiCOAPkFoeDm1nGn2Qr/f7fQhtMcKWq4UEdqbK4J9P
         cRmUwbB5JmrOlS3dWwVtWkbXTiDdtoG7Jr44Swhj4BO26z49/LP6FgBir4xZ5p4wjwOP
         yf6Etq2cmKD37gBHutoHo/KCabeOw5F0JbRZImL5OOXWynCMen1et+t3bk1yIl+dJRTS
         uxsA==
X-Gm-Message-State: AO0yUKUvCfpy1FjHUIWje3Uxjk/C5zCCx5/umi8UscLAZT8VbIn7j+4H
	0PKvJaZU3a+F5gwXJ3m7j/gvrzLZ9+QPntUKTnE=
X-Google-Smtp-Source: AK7set8tvdwF8ZdoVo5bXcV3/xC2jpDyF11C+vSLHDAxnOuyLEsUpC4swbAUBD1WnDRBJrSvWP/XtbmFiHhzZJ8xmlw=
X-Received: by 2002:a9d:67d0:0:b0:68b:cd1e:1ef1 with SMTP id
 c16-20020a9d67d0000000b0068bcd1e1ef1mr5904971otn.7.1680042853372; Tue, 28 Mar
 2023 15:34:13 -0700 (PDT)
MIME-Version: 1.0
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 28 Mar 2023 15:34:02 -0700
Message-ID: <CAF6AEGt5nDQpa6J86V1oFKPA30YcJzPhAVpmF7N1K1g2N3c=Zg@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E64F83E957
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.210.42:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.42:from];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-ot1-f42.google.com:helo,mail-ot1-f42.google.com:rdns,gitlab.freedesktop.org:url];
	DKIM_TRACE(0.00)[gmail.com:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: KG2KZIUSTGXBSYDON4KXPQ4DFNHZ3B7Z
X-Message-ID-Hash: KG2KZIUSTGXBSYDON4KXPQ4DFNHZ3B7Z
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [pull] drm: dma-fence-deadline for v6.4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KG2KZIUSTGXBSYDON4KXPQ4DFNHZ3B7Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Dave and Daniel,

Here is the series for dma-fence deadline hint, without driver
specific patches, or UAPI, with the intent that it can be merged into
drm-next as well as -driver next trees to enable landing driver
specific support through their corresponding -next trees.

The following changes since commit eeac8ede17557680855031c6f305ece2378af326:

  Linux 6.3-rc2 (2023-03-12 16:36:44 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/msm.git tags/dma-fence-deadline

for you to fetch changes up to d39e48ca80c0960b039cb38633957f0040f63e1a:

  drm/atomic-helper: Set fence deadline for vblank (2023-03-28 14:52:59 -0700)

----------------------------------------------------------------
This series adds a deadline hint to fences, so realtime deadlines
such as vblank can be communicated to the fence signaller for power/
frequency management decisions.

This is partially inspired by a trick i915 does, but implemented
via dma-fence for a couple of reasons:

1) To continue to be able to use the atomic helpers
2) To support cases where display and gpu are different drivers

See https://patchwork.freedesktop.org/series/93035/

This does not yet add any UAPI, although this will be needed in
a number of cases:

1) Workloads "ping-ponging" between CPU and GPU, where we don't
   want the GPU freq governor to interpret time stalled waiting
   for GPU as "idle" time
2) Cases where the compositor is waiting for fences to be signaled
   before issuing the atomic ioctl, for example to maintain 60fps
   cursor updates even when the GPU is not able to maintain that
   framerate.

----------------------------------------------------------------
Rob Clark (8):
      dma-buf/dma-fence: Add deadline awareness
      dma-buf/fence-array: Add fence deadline support
      dma-buf/fence-chain: Add fence deadline support
      dma-buf/dma-resv: Add a way to set fence deadline
      dma-buf/sync_file: Surface sync-file uABI
      drm/scheduler: Add fence deadline support
      drm/vblank: Add helper to get next vblank time
      drm/atomic-helper: Set fence deadline for vblank

 Documentation/driver-api/dma-buf.rst    | 16 +++++++--
 drivers/dma-buf/dma-fence-array.c       | 11 ++++++
 drivers/dma-buf/dma-fence-chain.c       | 12 +++++++
 drivers/dma-buf/dma-fence.c             | 59 +++++++++++++++++++++++++++++++++
 drivers/dma-buf/dma-resv.c              | 22 ++++++++++++
 drivers/gpu/drm/drm_atomic_helper.c     | 37 +++++++++++++++++++++
 drivers/gpu/drm/drm_vblank.c            | 53 ++++++++++++++++++++++++-----
 drivers/gpu/drm/scheduler/sched_fence.c | 46 +++++++++++++++++++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
 include/drm/drm_vblank.h                |  1 +
 include/drm/gpu_scheduler.h             | 17 ++++++++++
 include/linux/dma-fence.h               | 22 ++++++++++++
 include/linux/dma-resv.h                |  2 ++
 include/uapi/linux/sync_file.h          | 37 +++++++++------------
 14 files changed, 303 insertions(+), 34 deletions(-)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

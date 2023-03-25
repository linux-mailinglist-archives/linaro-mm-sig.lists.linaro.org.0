Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0F76C9005
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Mar 2023 19:25:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B186D43CDC
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Mar 2023 18:25:18 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	by lists.linaro.org (Postfix) with ESMTPS id 5C85E3E940
	for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Mar 2023 18:25:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=IIKdUHOj;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.160.50 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-17786581fe1so5112316fac.10
        for <linaro-mm-sig@lists.linaro.org>; Sat, 25 Mar 2023 11:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679768708;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Zv2AOLFAYteFp+AowBRja2dl0J96TUiqgF3Bi/Fb/iM=;
        b=IIKdUHOjAQX4LSgoR6mF8epmQ26sbpuWHLIo1NIGRoCpGYOoCTb8H8F4UP3vOWDh7I
         N1PqE7GPZMFm862LujqB66zncE5JU41xzs1R3PJfvgMMdezeO/Kp1az7VCs3Pjx8qbCi
         qIXIc2N9Mj2Ou97l+fYvjb4KPyLnY145TN+n3Hj2KK5If4b2zVfPWyIM7lpG7QdpC5Vb
         YdQ/CkzwFpXt0AC6H6Wzb8xEQPF0/a4zrVscL7RIHgjISiNHnsBIRRC14SWYRPFya4Cm
         ShhpARY/FMyqU6jN/KOD5UmDd+MwNngCuqlaMXGYp1pclAYiy6TU2ppIFKWZDs4AI+zr
         P3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679768708;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zv2AOLFAYteFp+AowBRja2dl0J96TUiqgF3Bi/Fb/iM=;
        b=IhYYKeeTEN/wDuBlM3Pot4gm4H9jnC5f2ysefMvqjrbE9Afw/K0YDIGnqvdvs2iu56
         RwLdzMIIebCkY6lZcjqo7khNXzsW6QmzpjQWJmmT0JmZbADoFKLFPXl9biCosUTlOMIH
         totj74M464ZdehA5eB4CIEPBbZpQagAp9rQRmtpwXLzxyAeZc1tRyOa7EB2fREIaTgIS
         0chcqXQF7xWvM/3KHDaq2QcFDb1/cQWCZ46z1kSsIsDTwuUSIqwCBu8qx6bJ3unLBJ30
         WEraY+xyQrnNnZThUVnv3Z/E5kNnaZHhGal/wT3VOCWJZjDkXUPhXxZ/WKBoe5Vhu2IQ
         WFGw==
X-Gm-Message-State: AAQBX9ejHT12uDqaPMm4A22DPyAlLeG6j2iZHxgWX0r6Acyttc1BW4Au
	9lb1+QWBebx8c1l5Qh3OW4/hS09sqNcCTdxnu8g=
X-Google-Smtp-Source: AK7set8beFZbRr14YJRguqanD0yyv+oDy45SsA6pNydyVUekyzmjilf6dFPjjqWR7JHEVeM8c9W17aU3QDUHeG91zug=
X-Received: by 2002:a05:6870:f816:b0:177:aa31:79d6 with SMTP id
 fr22-20020a056870f81600b00177aa3179d6mr4559574oab.4.1679768707685; Sat, 25
 Mar 2023 11:25:07 -0700 (PDT)
MIME-Version: 1.0
From: Rob Clark <robdclark@gmail.com>
Date: Sat, 25 Mar 2023 11:24:56 -0700
Message-ID: <CAF6AEGvoP9_FERdL6U8S2O-BVt-oAUgAytbE6RvygsoAOwOHvw@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5C85E3E940
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.10 / 15.00];
	DWL_DNSWL_HI(-3.50)[gmail.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.160.50:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.50:from];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: ECGLMFN46SR32RST4LQZKTIAQTHICJ7L
X-Message-ID-Hash: ECGLMFN46SR32RST4LQZKTIAQTHICJ7L
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [pull] drm: dma-fence-deadline-core for v6.4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ECGLMFN46SR32RST4LQZKTIAQTHICJ7L/>
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
specific patches, with the intent that it can be merged into drm-next
as well as -driver next trees to enable landing driver specific
support through their corresponding -next trees.

The following changes since commit eeac8ede17557680855031c6f305ece2378af326:

  Linux 6.3-rc2 (2023-03-12 16:36:44 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/msm.git tags/dma-fence-deadline-core

for you to fetch changes up to 0bcc8f52a8d9d1f9cd5af7f88c6599a89e64284a:

  drm/atomic-helper: Set fence deadline for vblank (2023-03-25 10:55:08 -0700)

----------------------------------------------------------------
Immutable branch with dma-fence deadline hint support between drm-next
and driver -next trees.

----------------------------------------------------------------
Rob Clark (11):
      dma-buf/dma-fence: Add deadline awareness
      dma-buf/fence-array: Add fence deadline support
      dma-buf/fence-chain: Add fence deadline support
      dma-buf/dma-resv: Add a way to set fence deadline
      dma-buf/sync_file: Surface sync-file uABI
      dma-buf/sync_file: Add SET_DEADLINE ioctl
      dma-buf/sw_sync: Add fence deadline support
      drm/scheduler: Add fence deadline support
      drm/syncobj: Add deadline support for syncobj waits
      drm/vblank: Add helper to get next vblank time
      drm/atomic-helper: Set fence deadline for vblank

 Documentation/driver-api/dma-buf.rst    | 16 ++++++-
 drivers/dma-buf/dma-fence-array.c       | 11 +++++
 drivers/dma-buf/dma-fence-chain.c       | 12 +++++
 drivers/dma-buf/dma-fence.c             | 60 ++++++++++++++++++++++++
 drivers/dma-buf/dma-resv.c              | 22 +++++++++
 drivers/dma-buf/sw_sync.c               | 81 +++++++++++++++++++++++++++++++++
 drivers/dma-buf/sync_debug.h            |  2 +
 drivers/dma-buf/sync_file.c             | 19 ++++++++
 drivers/gpu/drm/drm_atomic_helper.c     | 37 +++++++++++++++
 drivers/gpu/drm/drm_syncobj.c           | 64 ++++++++++++++++++++------
 drivers/gpu/drm/drm_vblank.c            | 53 +++++++++++++++++----
 drivers/gpu/drm/scheduler/sched_fence.c | 46 +++++++++++++++++++
 drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
 include/drm/drm_vblank.h                |  1 +
 include/drm/gpu_scheduler.h             | 17 +++++++
 include/linux/dma-fence.h               | 22 +++++++++
 include/linux/dma-resv.h                |  2 +
 include/uapi/drm/drm.h                  | 17 +++++++
 include/uapi/linux/sync_file.h          | 59 +++++++++++++++---------
 19 files changed, 496 insertions(+), 47 deletions(-)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

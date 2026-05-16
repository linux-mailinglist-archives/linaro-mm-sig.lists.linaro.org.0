Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAHjF9NPCGoMjAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:06:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E126B55B466
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 13:06:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E078C404E3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 11:06:57 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 6C63E3F732
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 11:06:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=k+7YN3W2;
	spf=pass (lists.linaro.org: domain of ju.orth@gmail.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=ju.orth@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488ff90d6c7so4171765e9.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 04:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778929604; x=1779534404; darn=lists.linaro.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gz4+cZA8LSphozrVyKGbCKvf5hEOiKCi+FAiUdVKJ/A=;
        b=k+7YN3W2M3RnIBnWY4crXrOUVYNYw2lb7GUUcIUSlLkWL7PWUebBpIAAgtEwTEIBPt
         U+HaoA0QqxNib3/ZS4PeY+YuJIlmVVbd759vPoiSVMtjHHy4tQU5ppiT4943ovA0AZNp
         kgRU8s02OgAMcFqIHRPztGJ4DdCqRQBZ33BkNL/sI94r0KV7VfIIGwwHEq+AArjdVzqs
         Y38xMgGCg9AFDq3HjTcpwF54ep1frq1tyuD7srK1bjdGhuodMQU16ZLnBMHv4dSlZ1to
         gJsgRgm/whbNPDr12q/lKYWPaxHOKLSfma/j2oCCZZqlYWO4+KUrZoerFgKJQwHY/PGo
         UZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778929604; x=1779534404;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gz4+cZA8LSphozrVyKGbCKvf5hEOiKCi+FAiUdVKJ/A=;
        b=sVLr+Axpv5IyHdGM8kpg6RaG+7RXFHxw/zAefnMdYDoQ1PQQRv46hDUk4VqA3iG8e0
         DKesnPVMQCgX8qZQRJPFrZU/ebyEuKDgZeKHcMIi3ahcbEvKcv649iXUqWultl4WpU1l
         G9hCeay9m2QShotGdVC/n/ReyoeGZQ64gppMFkS2q8SuadDw4w6uw8az4OTuseonRvwQ
         mcgVjQjQS7AqEuXCScmTBZRxxX+qpRZLM65hzSKh3WXdDwixw8zGWBNsqDGE8FyjRcu2
         1n9f6hOiSefagDLfa5f1BAhIKAFk0V6H943WSJzOk/JeFQkJhsRP7Tq/UKU3EiFxVfXG
         OSkw==
X-Forwarded-Encrypted: i=1; AFNElJ8Iidz2b3Urn841o4Jd2Y75lBhV/4pMBKra4sM0SAyEls0VNEZm5k7ycojMoC8+zRa/wxnEDmL8yF3e73gm@lists.linaro.org
X-Gm-Message-State: AOJu0YwALGsSueUXnNNRVafjDFF7uiK11gRwDUjLbUYKWSVJD+gdR0fQ
	2N/HHrYFjtw8t6NQywD3Kc1m0e8TJsyZeOkGntbje8mlwFtCFezLHL3o
X-Gm-Gg: Acq92OE1M/waJOo5gKDigTlbesLFhIAkBeQvXsasY9QFvh3q54/3h6+c7jmIMfwWyki
	DA6VOEoEPShIOkkbcEiDePR9b+QMcB0yDzzkbAtVQfcBIj3Vi5WotnI27ZPzBSsPS3pTkie6XBP
	Lwk/U+aETLMOuEgfn35vGgA3xFaYljbmIiqspondAm3+s9YQdUwuYkSnv5N433tX7bE6DnlYbjK
	qSkNL2rRwhv1Vpv13KS+zpxVR22L5VMJngJPgc/gXfp2P2uezdN3fzSohb+ucjhG3Em8OxPwSTO
	89P/Vz4pp5U0lhzFGyheqhl7kzHcWVrfTezX+pyJ4ltUR/LdYfEbVMFm/91lOdfH2BGqbs3cBYB
	sSULWtXTomwhmj8wAMyokpVCVaiUmztIGuoBASbRosOk3MiCZsYcy5TJn10/fLKLEtdT0WNIcq5
	Mtavp5sm2FgcGnWE8ezi1RuisP+zLSLf0US9xcdAxFFGDtfyajOY8ESIl7YWB7f4CubAaI4odFU
	NqtRWtVvd6NNSwJiw==
X-Received: by 2002:a05:600c:8b45:b0:489:1ba8:5bf0 with SMTP id 5b1f17b1804b1-48fe63253f3mr102196835e9.21.1778929604120;
        Sat, 16 May 2026 04:06:44 -0700 (PDT)
Received: from [10.13.0.20] (ip87-106-117-14.pbiaas.com. [87.106.117.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48feb00e5easm36399545e9.13.2026.05.16.04.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 04:06:43 -0700 (PDT)
From: Julian Orth <ju.orth@gmail.com>
Date: Sat, 16 May 2026 13:06:03 +0200
Message-Id: <20260516-jorth-syncobj-v1-0-88ede9d98a81@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDU0Mz3az8opIM3eLKvOT8pCzdFJMUY3OTZItkM8MkJaCegqLUtMwKsHn
 RsRB+cWlSVmpyCcgQpdpaAM1IAHdxAAAA
X-Change-ID: 20260516-jorth-syncobj-d4d374c8c61b
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778929602; l=3472;
 i=ju.orth@gmail.com; s=20251120; h=from:subject:message-id;
 bh=xGLM080fZDT6fjgKMdHlzv2Fg/jga2+0PO1niQABJfY=;
 b=zo0vZL9hPQu19bKw29wiQABC4vBPxw410iM5DsRWLuc6m/S5L7nGm9ePhoRvAq++IQEZPRF8E
 59xKe6ltBezDBB645EtSqjyATdjsklrspEITvGiRK0KsaSfJfdtER39
X-Developer-Key: i=ju.orth@gmail.com; a=ed25519;
 pk=uM2SS4lelkuIoYHc7v9N9bgBZ3hS632zJS2xjRJLPLI=
X-Spamd-Bar: ---
Message-ID-Hash: APCBCOUDXR7L52JUZGWY3SHQOUNP4ZCA
X-Message-ID-Hash: APCBCOUDXR7L52JUZGWY3SHQOUNP4ZCA
X-MailFrom: ju.orth@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, ju.orth@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 00/12] misc/syncobj: add /dev/syncobj device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/APCBCOUDXR7L52JUZGWY3SHQOUNP4ZCA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E126B55B466
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lwn.net,linuxfoundation.org,arndb.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juorth@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.linaro.org,gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.529];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

This series adds a new device /dev/syncobj that can be used to create
and manipulate DRM syncobjs. Previously, these operations required the
use of a DRM device and the device needed to support the DRIVER_SYNCOBJ
and DRIVER_SYNCOBJ_TIMELINE features.

There are several issues with the existing API:

- Syncobjs are the only explicit sync mechanism available on wayland.
  Most compositors do not use GPU waits. Instead, they use the
  DRM_IOCTL_SYNCOBJ_EVENTFD ioctl to perform a CPU wait. Being tied to
  DRM devices means that compositors cannot consistently offer this
  feature even though no device-specific logic is involved.
- llvmpipe currently cannot offer syncobj interop because it does not
  have access to a DRM device. This means that applications using
  llvmpipe cannot present images before they have finished rendering,
  despite llvmpipe using threaded rendering.
- Clients that do not use the Vulkan WSI need to manually probe /dev/dri
  for devices that support the syncobj ioctls in order to use the
  wayland syncobj protocol.
- Similarly, clients that want to use screen capture have no equivalent
  to the WSI and are therefore forced into that path.
- Having to keep a DRM device open has potentially negative interactions
  with GPU hotplug.
- Having to translate between syncobj FDs and handles is troublesome in
  the compositor usecase since syncobjs come and go frequently and need
  to be cleaned up when clients disconnect.

/dev/syncobj solves these issues by providing all syncobj ioctls under a
consistent path that is not tied to any DRM device. It also operates
directly on file descriptors instead of syncobj handles.

The series starts with a number of small refactorings in drm_syncobj.c
to make its functionality available outside of the file and without the
need for drm_file/handle pairs.

The last commit adds the /dev/syncobj module. I've added it as a misc
device but maybe this should instead live somewhere under gpu/drm.

An application using the new interface can be found at [1].

[1]: https://github.com/mahkoh/jay/pull/947

---
Julian Orth (12):
      drm/syncobj: add drm_syncobj_from_fd
      drm/syncobj: add drm_syncobj_fence_lookup
      drm/syncobj: make drm_syncobj_array_wait_timeout public
      drm/syncobj: add drm_syncobj_register_eventfd
      drm/syncobj: have transfer functions accept drm_syncobj directly
      drm/syncobj: add drm_syncobj_transfer
      drm/syncobj: add drm_syncobj_timeline_signal
      drm/syncobj: add drm_syncobj_query
      drm/syncobj: fix resource leak in drm_syncobj_import_sync_file_fence
      drm/syncobj: add drm_syncobj_import_sync_file
      drm/syncobj: add drm_syncobj_export_sync_file
      misc/syncobj: add new device

 Documentation/userspace-api/ioctl/ioctl-number.rst |   1 +
 drivers/gpu/drm/drm_syncobj.c                      | 374 ++++++++++++++-----
 drivers/misc/Kconfig                               |  10 +
 drivers/misc/Makefile                              |   1 +
 drivers/misc/syncobj.c                             | 404 +++++++++++++++++++++
 include/drm/drm_syncobj.h                          |  21 ++
 include/uapi/linux/syncobj.h                       |  75 ++++
 7 files changed, 795 insertions(+), 91 deletions(-)
---
base-commit: 6916d5703ddf9a38f1f6c2cc793381a24ee914c6
change-id: 20260516-jorth-syncobj-d4d374c8c61b

Best regards,
--  
Julian Orth <ju.orth@gmail.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

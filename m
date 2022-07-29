Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 231B5585426
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Jul 2022 19:07:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD72947ED7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 29 Jul 2022 17:07:18 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by lists.linaro.org (Postfix) with ESMTPS id 825C03F207
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Jul 2022 17:07:16 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id c139so5151353pfc.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 29 Jul 2022 10:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=xOX9chVYPROOGAwdmaGgZcPW07GxLyOUqTmIVsiyRrY=;
        b=MRLwlAUouciI2C7C4GlFSSMaiCgUFvFJHEtdHFSFik2hSiv0VP8gL4ZSfprY2hsTK1
         71DIYxBGrwqXFBScOnqP+VzlVWE/yF7/4yB3mDGe+vThJBq8uPvmws21UEmirDlolpMy
         x549Jju9p8IU2GkZyiWgwKVdtIHXMUNPMhzRBu+dYou1+wt+08d0lBPCrTdJXwzkiDN6
         JGHGbeMh9SUdLwzzK3x2hd2GyvGvJjuGYxepwaCRt1WmmePQgRRw+KTKKuRl+7PDrYbw
         HFD4qHEQTMrxQPUwhb11Op/lv6vtakCbR4692upCeChRxW01QL5PORt1xeQ8tBNUL24N
         4sXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=xOX9chVYPROOGAwdmaGgZcPW07GxLyOUqTmIVsiyRrY=;
        b=NHUnJ8f6P/iME27478XjVgMC1L3wvZIqvqJvvGn5xk2o99Gd8nxOOLnWNxvoPelILR
         7Z/X6oJZ4Z1qnAdEiWVvge91d8nbHo5WP35lo3NuhZ9ufU2I6P/l91goDoyALEgma34N
         +38H8ZVAirtQxH1zBmE3KpBQeTnbhDBOmHFbTUZHMiCMGb5pOp3uScXNlxIY9UaTt3L+
         SGl/lZjo77r676Upb6CcACNGRrAfa2iVx0OWmEQAsH5f0STMgyusd8k9ky/0TgtMmUDm
         02+0PK284DieVRpjKKy1UB9SkobzsV6XwtlseZGgfuADIepZdEcJqm7GeD6Zir7CDttF
         SRGw==
X-Gm-Message-State: AJIora/D033zNABZf1QLxIxzkJDN3AvQFJTZH7Pt3HeFIQ35VsNVd2st
	wUBw7ejDa9gU1SyU+MDq3WA=
X-Google-Smtp-Source: AGRyM1uGBuQ9vqrdjA1iXWiRUZ+wtLiHx4OPCFlykBcsRNNxwJRC70pXFBsgRPqQ7gjXtfmlRSztjQ==
X-Received: by 2002:a63:4546:0:b0:41a:5e8f:508a with SMTP id u6-20020a634546000000b0041a5e8f508amr3767050pgk.419.1659114435380;
        Fri, 29 Jul 2022 10:07:15 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:2703:3c72:eb1a:cffd])
        by smtp.gmail.com with ESMTPSA id bg1-20020a056a02010100b00419a6f3c8f5sm2778376pgb.19.2022.07.29.10.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 10:07:14 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 29 Jul 2022 10:07:39 -0700
Message-Id: <20220729170744.1301044-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Message-ID-Hash: DGEPSWI3CMM4GVUHKDB4ZSZ45HWA72IL
X-Message-ID-Hash: DGEPSWI3CMM4GVUHKDB4ZSZ45HWA72IL
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Sean Paul <sean@poorly.run>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 0/3] dma-buf: map-info support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DGEPSWI3CMM4GVUHKDB4ZSZ45HWA72IL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Rob Clark <robdclark@chromium.org>

See 1/3 for motivation.

Rob Clark (3):
  dma-buf: Add ioctl to query mmap info
  drm/prime: Wire up mmap_info support
  drm/msm/prime: Add mmap_info support

 drivers/dma-buf/dma-buf.c           | 26 ++++++++++++++++++++++++++
 drivers/gpu/drm/drm_prime.c         | 12 ++++++++++++
 drivers/gpu/drm/msm/msm_drv.c       |  1 +
 drivers/gpu/drm/msm/msm_drv.h       |  1 +
 drivers/gpu/drm/msm/msm_gem_prime.c | 11 +++++++++++
 include/drm/drm_drv.h               |  7 +++++++
 include/linux/dma-buf.h             |  7 +++++++
 include/uapi/linux/dma-buf.h        | 28 ++++++++++++++++++++++++++++
 8 files changed, 93 insertions(+)

-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F6E593E9F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Aug 2022 23:14:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5830F3F524
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Aug 2022 21:14:52 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id D7F823F4D5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Aug 2022 21:14:49 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id d65-20020a17090a6f4700b001f303a97b14so7852353pjk.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Aug 2022 14:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=X3Fu4ehStrUEKyTXt+fee6+Wug+zWXwk64af5B5Ru/4=;
        b=HaCbD+HDElK/diS+4llLWSlfdYQZ9dhgsMPOP1KRoiDFm0npey1Bqa9/oVRvRlmMgD
         9RnEx1/9LjeYmmhxwgvIEhTBuv/80m4RTRXqZ2NIIN7342CVBG8pwf7idUapDTtycmNC
         iMjnjJVXDV1snHkG/s2ykjGrlToed+buswZ10/XVNE93crGX5U9glQ6siCgMZ7wGgSuO
         +o7Swelyq6Wsr2Wm1lPPhQ7IpyEtlJVwBkiHzC/t4LsipXNSWJ8+cy3EurJuTBTncRBj
         Tka2ijvbVuiN0O8CfMRv1Db/cGVXkTPRKshz1b5h3QxyqHl1VVMQxzSG1uEXUGNLd60Y
         eLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=X3Fu4ehStrUEKyTXt+fee6+Wug+zWXwk64af5B5Ru/4=;
        b=mEUXyKrmgY5IxeNjXYPs3sgNBd5QFYuclnid9Jh9+53ZzjmVTwErNWfVW+OGbSOZKz
         +wJpDcscqRpSU/FEt7rgkYaJwEBaCdhpoxw5WNm/4Q+/S3JfqPrY0gG0sXBtbhPeq2Zw
         BYfnjoTMK79Fn7MKYt02W+CyfgwhuxxxfwUNUjdBJuc4caUsqLlrzetpfpXCMQlmnbx0
         ZBFATET0TkHBqU1dLGNQLoe5RKCAkwB/lG/ndHee1m96e866weMiVcFz52maoeurM4u3
         XMvzf8LXbqKGyk02psnm43M1TGQH2K9y2PFSdQ43Pk3edB/thmNAou0i2vsc8TbDpCSr
         Fqlg==
X-Gm-Message-State: ACgBeo01fgWs/ww6IO9VhMRl155ExYVxmRKWLgjgWA2pdwf97KO3IaKq
	9IT7F1sR6Oo1fdG+fT3PxMVpqljGXMs=
X-Google-Smtp-Source: AA6agR44865ylIMa+b8PphQX9njk4C+gUcPVunj5mJCRWKVNX7lX7QczSovUoJeBOAsy56Hbx/SlLQ==
X-Received: by 2002:a17:903:120a:b0:172:5a63:7442 with SMTP id l10-20020a170903120a00b001725a637442mr13083405plh.55.1660598088926;
        Mon, 15 Aug 2022 14:14:48 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:2703:3c72:eb1a:cffd])
        by smtp.gmail.com with ESMTPSA id a24-20020a63d418000000b004277f43b736sm3569439pgh.92.2022.08.15.14.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Aug 2022 14:14:47 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 15 Aug 2022 14:15:11 -0700
Message-Id: <20220815211516.3169470-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Message-ID-Hash: B74WGHW3RB52B57N6WNPQX6NINO7XQRA
X-Message-ID-Hash: B74WGHW3RB52B57N6WNPQX6NINO7XQRA
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Sean Paul <sean@poorly.run>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/3] dma-buf: map-info support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/B74WGHW3RB52B57N6WNPQX6NINO7XQRA/>
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
  dma-buf: Add ioctl to query mmap coherency/cache info
  drm/prime: Wire up mmap_info support
  drm/msm/prime: Add mmap_info support

 drivers/dma-buf/dma-buf.c     | 63 ++++++++++++++++++++++++++------
 drivers/gpu/drm/drm_prime.c   |  3 ++
 drivers/gpu/drm/msm/msm_gem.c | 12 +++++++
 include/drm/drm_gem.h         | 11 ++++++
 include/linux/dma-buf.h       | 11 ++++++
 include/uapi/linux/dma-buf.h  | 68 +++++++++++++++++++++++++++++++++++
 6 files changed, 158 insertions(+), 10 deletions(-)

-- 
2.36.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB73586F2C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Aug 2022 19:04:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E39F33ECBC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Aug 2022 17:04:30 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by lists.linaro.org (Postfix) with ESMTPS id B84D83ECBC
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Aug 2022 17:04:27 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id h21-20020a17090aa89500b001f31a61b91dso13080484pjq.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Aug 2022 10:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=xOX9chVYPROOGAwdmaGgZcPW07GxLyOUqTmIVsiyRrY=;
        b=APqGvEY9aCng9joJBKu4D5mC2tl8a1Y345jPp7UNZbhXrBCzYzipvvUw6DJuz/DyMh
         xUwH38OxWdYI5ubyyM9eYy7A9keEqSdj6kjsrM1r0EO0opDIPanW7or/+pN6ouFdYpeE
         cUg5u+pTWdd7+6lgxaDAeWdasptlCzw/MG+OdazqsPSBJcITD1rGEZ43khcN5DYRdNBc
         mpBZbCLB+Ci36ZBqqwamfhQpbdvIK6X4S77rJX2aagCc76p1sMjOPa+Ms5vR1p1VKdCg
         THWheImhu7rAq+i/2t1MpySjeVhjTTaw0oHSWovn0rE/Yrxe8EwMIJ8mfKpklG2R6+t3
         2BAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=xOX9chVYPROOGAwdmaGgZcPW07GxLyOUqTmIVsiyRrY=;
        b=G5UPOYd1yn8wWN1P/ZIbJ1XkItWT09mpp5edKp0K1/X85xnk3Zb2VHEx/OW5UVD2FY
         Fqsnj9DBrlOPQLNMjsmlotVGFJsqc/jWEwFevFqdN0fofivRCsvNFj+PGjnekHVj0yla
         +Myw3rIvGgcvRIraBzinWg8pm3vKIcCBKreUKJDTwpP+ty2H0IPiftdhdDzVxexlZ0rH
         otrRE/MS1ulaRW9a9ksFRDzBN/9NZaiRxNiToJus8LY3BRdLRztqU0SmfEUqkMDYFhPy
         D1fe5PcbL/duazMo8aI2RIoSggXu+JPPTbi7wxDrOFtpIXhi6lHWsfWR5+x3AFGMF+jw
         qtWA==
X-Gm-Message-State: ACgBeo3MlJl8t7HB5rtVLAkKjNs3zO/6xjD5zsN+QNDICVyi234eAcMo
	exP9KqVgAPsiqQ3g75w+lw8=
X-Google-Smtp-Source: AA6agR4Wp1sdG2ePJHPzujo2lxC4pM4up8FzRO7eHzEQfmz1DeZIq9jjtKnY1WFOjVr4/m8ni0CLdw==
X-Received: by 2002:a17:902:da91:b0:16d:3bc2:ff49 with SMTP id j17-20020a170902da9100b0016d3bc2ff49mr17520540plx.85.1659373466548;
        Mon, 01 Aug 2022 10:04:26 -0700 (PDT)
Received: from localhost ([2a00:79e1:abd:4a00:2703:3c72:eb1a:cffd])
        by smtp.gmail.com with ESMTPSA id y3-20020a17090a1f4300b001f2e50bd789sm11953200pjy.31.2022.08.01.10.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 10:04:24 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  1 Aug 2022 10:04:54 -0700
Message-Id: <20220801170459.1593706-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Message-ID-Hash: FBFWO7PAXTSEM33VEY5V6JGKPB7PUF4O
X-Message-ID-Hash: FBFWO7PAXTSEM33VEY5V6JGKPB7PUF4O
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, Sean Paul <sean@poorly.run>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/3] dma-buf: map-info support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FBFWO7PAXTSEM33VEY5V6JGKPB7PUF4O/>
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

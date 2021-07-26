Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BFE3D5BE6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 16:40:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA2DC634D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Jul 2021 14:39:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2787B634CD; Mon, 26 Jul 2021 14:39:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8F64634CD;
	Mon, 26 Jul 2021 14:39:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 60D3C60570
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 14:39:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 54123634C4; Mon, 26 Jul 2021 14:39:52 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by lists.linaro.org (Postfix) with ESMTPS id 4CE8160570
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 14:39:50 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id
 mz5-20020a17090b3785b0290176ecf64922so4200987pjb.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Jul 2021 07:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yYvK9aTzc6a6mw4NkjoqvsdrfloQMHrbtNcPQkcDqvs=;
 b=sNrV1hIjNLb+jarQ5Td+Ia164crR90C5uz98OgfCVUBSZZB7/clHXhcPJv6x8DJbuN
 rKAl8/Ar8I6pkKdPNSovPLl7JlOOgFjvJXzAuW26ut/CUiuT1JWum4Hevp1VNL0gph5m
 GmmJSTraAZ+BgqAIvbTV6c1bYkAKqAsESejOKo/kIlGO5LEBQJpHURthQyl65kK0s2vs
 TdMMaM4c4ifKl6/FWHeBy4+0vUT59SfiX1RCnXvuXjBbVqCohj7oQObXCI/3vERRIifH
 K6xvLCFG790+7pwl0Wr+ujMKC14Q3gls9yn+gHe4y7PvpALLJSMTDYylu+L2Ut6CFo+4
 jGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yYvK9aTzc6a6mw4NkjoqvsdrfloQMHrbtNcPQkcDqvs=;
 b=HXv6FVsxI/bF3F76xQVe0VmgN3EXd6aXnxghLhWRMA2ar0TAbLeMnNz7VSjqSPjLcG
 p6JVyzv9rgYio3U0f4W7iE9mEEXvwNcb4bWmt8J6GlUHXQ7E3hw61MXHkeIMfkHBGUSL
 ksQbQJI7o6NLrIWfPglaOBf+xuAy9yQOTMEQO7CyQgt911vbeYQuA4Jt+TsE0aXRHcmT
 mrzxCVT3Q4ZuJJ0oRvrKG8FBaYxDWYjDFFyT15G0p91jPAzpiBBMWS0nxdGn2OWyTOHE
 WkosYCNJMRfnMLlLyMOB0OzRan4EZvw/RiQ6MqJnLum7GqqfrVJ/zG3qWhoRY2fPTMvq
 tjtw==
X-Gm-Message-State: AOAM531hdr9+Li4D5PXZ0tqdIFp45NYdGM+6JcHtlyQL6iexjEpNmqWF
 Y8xQeoUYwxD8FmER8Tjlt/w=
X-Google-Smtp-Source: ABdhPJyANxBEIcujpjY/aUnkk7Nm6OAiHljjrusdLSVto/jwB7ZIzT4K22rrIQ3wqUrjA6/cHXMBeg==
X-Received: by 2002:a17:90b:1e46:: with SMTP id
 pi6mr8048098pjb.57.1627310389230; 
 Mon, 26 Jul 2021 07:39:49 -0700 (PDT)
Received: from localhost ([2601:1c0:5200:a6:307:a401:7b76:c6e5])
 by smtp.gmail.com with ESMTPSA id d31sm28342226pgd.33.2021.07.26.07.39.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 07:39:48 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 07:43:56 -0700
Message-Id: <20210726144359.2179302-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 0/2] drm/msm: Reduce fence signal latency
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

A couple tweaks to reduce fence signal latency.

Rob Clark (2):
  drm/msm: Let fences read directly from memptrs
  drm/msm: Signal fences sooner

 drivers/gpu/drm/msm/msm_fence.c      | 11 +++++--
 drivers/gpu/drm/msm/msm_fence.h      | 41 +++++++++++++++++++++++---
 drivers/gpu/drm/msm/msm_gpu.c        | 44 ++++++++++++++++------------
 drivers/gpu/drm/msm/msm_ringbuffer.c |  2 +-
 4 files changed, 73 insertions(+), 25 deletions(-)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

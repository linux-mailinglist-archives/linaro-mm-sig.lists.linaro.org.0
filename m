Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE27389584
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 20:35:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0476E61185
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 May 2021 18:35:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5C9B561161; Wed, 19 May 2021 18:35:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B939D610EC;
	Wed, 19 May 2021 18:35:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8E86D610C3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 18:35:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8A90761149; Wed, 19 May 2021 18:35:10 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by lists.linaro.org (Postfix) with ESMTPS id 848EA610C3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 18:35:08 +0000 (UTC)
Received: by mail-pj1-f49.google.com with SMTP id
 gb21-20020a17090b0615b029015d1a863a91so4014821pjb.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 May 2021 11:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OXGExEV9DKzHJXkbbNu+OVKImQdQyVv51ZhcABCoj+c=;
 b=VZnQB3TxN9YgO/dIaFVc2+8H4/rfLP27UtLLUyHSQnGpnObGKzI49EYOFNj55HB1Ib
 KDN3mpnAfRCZWzYXRhCZfmOHesq7zvueE9s9hkhFZvaRmd7Dan9VeXNl9u+jLqheXsbV
 XqOPaKcxraAO9TpALhWIaLd0hW/+IR3k3yhcH6ScPBCHyejoghtRjIM2TkjFPHt8qOCZ
 cPIFpSi8EtmD5buBu4Uc47iP7kXsMzEu8/wuwHyhxePBEdKVQ/v9URBCJSlPZdAr4pHa
 RI3v65vcbzc2BQ1Z6MVuOCjZOaCS7NQq/ygVahpH8PbmiyFbGcH+pfW9xTrk1y7v3GR3
 2olQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OXGExEV9DKzHJXkbbNu+OVKImQdQyVv51ZhcABCoj+c=;
 b=SdO+uc0az3q4jRlETlH3bsmY0QMpQl1jXItP4Ge246ND6sHyZp3zGn01vmWsdkTFtZ
 nLVrLBJYPD3YMtyp6g+ICvQ4cV8hh2FgbdF00j9lXigrqUXl+BQGhrxvoXhGS+uACZH1
 P7D3sgTyYsRHz1joaQVqts1OGgmnQtoekm/EmsZewfL72l8ZyTN5N2MjMXFPDVOeRnh6
 UW1jahhUCgBWdif4IvSj6gf2h0z/7Xv1F4fzFRNPbuJ1/4oFgNBA8NOlzlUY1bbBzMhR
 93cIdLOB4JNEtio11YmozshF04/OVSrWEn7f8pjVT6WY0bJVdBadBjXSGc7RnZARWG1r
 XdRg==
X-Gm-Message-State: AOAM532s6NnGAE4jGGfqxILfjKz77mmS979V58F/a/2RBthIizouCUIL
 tlDKOBI+tw1GLFNPOEl644o=
X-Google-Smtp-Source: ABdhPJzT41yLbhtZB7tJviu8pahUyGJsXxTpFBsuKRqM6hf3433QzAmTmbncbwVd3iCvrem4aPOSdA==
X-Received: by 2002:a17:90b:1041:: with SMTP id
 gq1mr697596pjb.224.1621449307682; 
 Wed, 19 May 2021 11:35:07 -0700 (PDT)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 k7sm4759153pjj.46.2021.05.19.11.35.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 11:35:06 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 19 May 2021 11:38:51 -0700
Message-Id: <20210519183855.1523927-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC 0/3] dma-fence: Add a "boost" mechanism
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
Cc: Rob Clark <robdclark@chromium.org>, linux-arm-msm@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 freedreno@lists.freedesktop.org,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

In some cases, like double-buffered rendering, missing vblanks can
trick the GPU into running at a lower frequence, when really we
want to be running at a higher frequency to not miss the vblanks
in the first place.

This is partially inspired by a trick i915 does, but implemented
via dma-fence for a couple of reasons:

1) To continue to be able to use the atomic helpers
2) To support cases where display and gpu are different drivers

The last patch is just proof of concept, in reality I think it
may want to be a bit more clever.  But sending this out as it
is as an RFC to get feedback.

Rob Clark (3):
  dma-fence: Add boost fence op
  drm/atomic: Call dma_fence_boost() when we've missed a vblank
  drm/msm: Wire up gpu boost

 drivers/gpu/drm/drm_atomic_helper.c | 11 +++++++++++
 drivers/gpu/drm/msm/msm_fence.c     | 10 ++++++++++
 drivers/gpu/drm/msm/msm_gpu.c       | 13 +++++++++++++
 drivers/gpu/drm/msm/msm_gpu.h       |  2 ++
 include/linux/dma-fence.h           | 26 ++++++++++++++++++++++++++
 5 files changed, 62 insertions(+)

-- 
2.30.2

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

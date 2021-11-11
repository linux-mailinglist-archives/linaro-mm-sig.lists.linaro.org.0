Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 995E644DC19
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Nov 2021 20:20:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4749760BF0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Nov 2021 19:20:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1E2A060BE0; Thu, 11 Nov 2021 19:19:58 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2412060AB5;
	Thu, 11 Nov 2021 19:19:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF9186049D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Nov 2021 19:19:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BDC8D60AB5; Thu, 11 Nov 2021 19:19:53 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by lists.linaro.org (Postfix) with ESMTPS id B36D26049D
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Nov 2021 19:19:51 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id
 nh10-20020a17090b364a00b001a69adad5ebso5569968pjb.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Nov 2021 11:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mnClQSjEhm/eSZEhg1ceDCJC2RbfYwpO3EmjSoG3eiY=;
 b=iZ28J2QtEw2msl6DLSAVdUtNxIys3SxqnhCyXq6fahn7le6CDS9sArDiDVKVfy9P3A
 oPkDdQWWW8l7yfjQfB8WjT31NomdncUfih8eIhdJDaNKE+YCdYuq/GbPPM7ihk8g1Z/h
 Nf0mBpyNz3XfF8z8JD7u4ReFIJjQEYOVbJBlMYqnbg47AH42cxdfB7GPeveZzPYaBYYg
 E9heRYsoX25eHWEZx3X8KABGrZ1qLjeDRaXmbfs/uRWGLKiXTPk4cZCc+PJ4lxvoCC1t
 rIaL5zM4bjARwcKcXHFz2YOJwMceJfQJuyadlGQSNh/hFle70LQC0bhBfgVMVnbOzhWn
 qNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mnClQSjEhm/eSZEhg1ceDCJC2RbfYwpO3EmjSoG3eiY=;
 b=aqSAa0ICA/3nCGjW6qZTkxmGLjYmCytmohJgumwu8GXC+J+GzS1JE6yRUD3vaxj3i2
 NRrVQXHnqtL2GRGQxff0RcMeRcL2N+IY0u30Bv+kCIusn2fVVayx9mWC1G0hKHhbV6VR
 Pl/e6XIbb9FlqzKYtxqNn9jgeaLxGCi25E5ms8Ohi3Re56EIY4VYFOCMrfSv1YIq67ll
 qkNL1oHn2wzab6i0+YPjAFZW7Zdti/UnZ2kjfN+4q3O4d7CvOO5M8DjwthfrsR0qcnt4
 ++sTFDeV7mP+ajJxOggA7md60k0fLMWGPUGq+IMbC5RCPeiZY69/RHsZk64i8z194/hs
 MAyw==
X-Gm-Message-State: AOAM530hWbNj61UsEtmTO/GhzO5mCULTYKutGRKRT9RGH1Tlzrx1dH50
 NfUIh5RKGJznh0/eNLFmm68=
X-Google-Smtp-Source: ABdhPJzxwyWl9UV6QH6/mW38wRX+pZlUKYcDNARu6F5mlIBszSzIsI5pOWC6EJQCrYXo0YQR95WKNw==
X-Received: by 2002:a17:90a:ba03:: with SMTP id
 s3mr10906891pjr.116.1636658390904; 
 Thu, 11 Nov 2021 11:19:50 -0800 (PST)
Received: from localhost (c-73-25-156-94.hsd1.or.comcast.net. [73.25.156.94])
 by smtp.gmail.com with ESMTPSA id
 fs21sm8193034pjb.1.2021.11.11.11.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Nov 2021 11:19:49 -0800 (PST)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 11 Nov 2021 11:24:54 -0800
Message-Id: <20211111192457.747899-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 0/2] drm/msm: wait_fence fixes
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
 Akhil P Oommen <akhilpo@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 freedreno@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

From: Rob Clark <robdclark@chromium.org>

A couple of wait_fence related fixes.

Rob Clark (2):
  drm/msm: Fix wait_fence submitqueue leak
  drm/msm: Restore error return on invalid fence

 drivers/gpu/drm/msm/msm_drv.c        | 49 ++++++++++++++++++----------
 drivers/gpu/drm/msm/msm_gem_submit.c |  1 +
 drivers/gpu/drm/msm/msm_gpu.h        |  3 ++
 3 files changed, 36 insertions(+), 17 deletions(-)

-- 
2.31.1

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

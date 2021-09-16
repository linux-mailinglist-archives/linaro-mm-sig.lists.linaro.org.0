Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A9C40D896
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 13:31:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C8C568641
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Sep 2021 11:30:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D6F3E63424; Thu, 16 Sep 2021 11:30:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1C39629CD;
	Thu, 16 Sep 2021 11:30:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 09A3F62630
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 05C7362CF7; Thu, 16 Sep 2021 11:30:49 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id F191462630
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 11:30:46 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 d207-20020a1c1dd8000000b00307e2d1ec1aso4230043wmd.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Sep 2021 04:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JGNtBFFeXnnCnrSDFPgub+2yBqbDjJC9rYoYFIcuhHM=;
 b=Nbnk97eM9wgjZbjEhozZeeQ9jLrrJIWXM7tnp0QyAHiHlNcE15tulovNH3mLKOD5DV
 WRB2X4L8Xh/u43oLPinbPqyyj++YXI2kGeeacr/bSrTRnXuIxPDUFeOAQn6qmjcP9joI
 baXPgxcfHW/QDL/pKgpoN6tQlftrj0iJVKp1zDJchSyfgGl5TqZvRtDWV+JQpiMqksIV
 KRfLhRloMsC0oWv1wLMdTiaGfBh3LrAd5pEpqK0rOmRtolnRF7iAE7aVv5TI+tl7wxeJ
 2w7qw4w2MLo0YXVyYNLePDepcgc2cdTiWyMISFL5s57Xfn0xdwXgOPK0vmJL5CGd/tkV
 yQxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JGNtBFFeXnnCnrSDFPgub+2yBqbDjJC9rYoYFIcuhHM=;
 b=iqzKD1iadzuy6sOEpi7NEvRh9IziakjthcxqCEGAZYLU4AHEDoMnlo/dSPI6AlPT8f
 iIOmiO1jJgZaG2PvY5tjEne4L7Abu7k7W9TEpNXOUblB2tw2/WP98ALFNSfAYqMgEOx/
 JGJ2mv7SaS8OMnufj/nT522kbyyUpvWzUKCWikuNcwd4S3RWFf9cSLb+MltinPnB57W6
 Ck6Ikd3Z9P/rpMb3SfUaCaroz/vzePIaV1O1oBi3j5TBtc90vpPOD6I0ASnVKAcmyWFQ
 G0Z3u03QDS8jVNqgsEmJRNd2SH4RE61MxnakjMl+mvSnEhKi8q4rRhgFs/Z2XdsnGkoM
 EX0g==
X-Gm-Message-State: AOAM532Z2AZ9bHDhihtBjUx/G9CyOXVJgnYV5RSeyMxToqf9FcvHD7PY
 bjzR4vS+OPyxeQTeoRaqWwKIc1TSVji+Z/7K
X-Google-Smtp-Source: ABdhPJxUy+sVzLEtRLYNKYyci9xprjccER7X07W9mkIGelPR0RGcNhyoM0Z62f/RuRQPUv8k4cAbsg==
X-Received: by 2002:a1c:4c14:: with SMTP id z20mr9528904wmf.82.1631791846090; 
 Thu, 16 Sep 2021 04:30:46 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 c17sm3803674wrn.54.2021.09.16.04.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 04:30:45 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 13:30:16 +0200
Message-Id: <20210916113042.3631-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Deploying new iterator interface for dma-buf
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Next round for that one here, maybe the CI systems are now more
gracefully with me :)

I'm pretty sure that a couple of those dma_resv_for_each_fence_unlocked
should actually be replaced with lock+dma_resv_for_each_fence, but that
needs more auditing.

Please review and comment.

Thanks,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

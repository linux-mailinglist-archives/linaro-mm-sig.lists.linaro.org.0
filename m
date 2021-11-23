Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4804645A53A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 15:21:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 345E662C9D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Nov 2021 14:21:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 93BB560BE6; Tue, 23 Nov 2021 14:21:27 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 077FC6216B;
	Tue, 23 Nov 2021 14:21:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1BF6A60AB6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 016B562168; Tue, 23 Nov 2021 14:21:19 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id E739260AB6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 14:21:17 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id b12so39257683wrh.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Nov 2021 06:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L0WQbPMmu7q1niXukhiHRfwOhv7htBGMZaUFwRTW/pU=;
 b=E8AElN6+/bBVTPJB1wlzguxBOE6x6n5zrNRdHXJyNZHjIyGsuO3OLe0mqHRs57A4ag
 Gxm+UVD+N7+eEdkm4KMGQDOnsizFXwDSmUCwAMuJhl35KmUOiUlt89nZYwWqIv24f4fK
 gw9peW2/IQVheul8jqWHfHnu88Mz2kQtagB51z0aUC08V3+zhqli6xS18Anv//qBqp61
 fUmEdq6sDcP/ORG4jKSmRLGxXnwHqkiS9g0ApmyTQoHZ5b4kOebPVA3jfb8tae37FbcZ
 O9n1wH5rUrPaHhW3YJqf4yud61GFKVD0LU5iMX+P6ceS9fa6BfhgL7rmFUjhHjDrErBa
 axrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L0WQbPMmu7q1niXukhiHRfwOhv7htBGMZaUFwRTW/pU=;
 b=Z3sjTpxsY1c7DslcyuG7RYMtevivP3d3vpKc+8xtn0RYsA/2Z2f5u/Kht177WvhS60
 KQadCs45MILaJqKgfZlXCYnng/88j06TRG8Ya/nX8gQEBsdbRT2TQDdIuc/X6qBEGa0L
 qhD6GGhzLPZnPQnzrofbqjBRJH18enhsPyngo8PvIx8CVXrSjH0GpwUTN841b9Bh2hs/
 kM0DvBj/vJMDJcPDkpgoO6oHe33R6J6LKvi0EUR86sja1FeBahXvsgdSleowkySYxCsX
 rhb7niuNU8vn2P27+XvwDu86enqQjZtR2jwIqFPQVaJyfgTjRFDN5OJJLad5YFnKLKxU
 XIgA==
X-Gm-Message-State: AOAM531KXGJpw3kSCPr+JbaZermsUqjptnDE9ME/q7ARaAYj+/Q3+dzB
 Bm3SLNOJwseMhudCOIWEdrE=
X-Google-Smtp-Source: ABdhPJxMp1wlSMUNWPTuyd4QDJB4bZkg86F/2VpDGO6xW6jlSNTQmog4E4SSMIMlxZX8BompHjcOSQ==
X-Received: by 2002:a5d:6043:: with SMTP id j3mr7507583wrt.375.1637677276940; 
 Tue, 23 Nov 2021 06:21:16 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id t8sm1645928wmq.32.2021.11.23.06.21.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 06:21:16 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	daniel@ffwll.ch
Date: Tue, 23 Nov 2021 15:20:45 +0100
Message-Id: <20211123142111.3885-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] completely rework the dma_resv semantic
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi guys,

as discussed before this set of patches completely rework the dma_resv semantic
and spreads the new handling over all the existing drivers and users.

First of all this drops the DAG approach because it requires that every single
driver implements those relatively complicated rules correctly and any
violation of that immediately leads to either corruption of freed memory or
even more severe security problems.

Instead we just keep all fences around all the time until they are signaled.
Only fences with the same context are assumed to be signaled in the correct
order since this is exercised elsewhere as well. Replacing fences is now only
supported for hardware mechanism like VM page table updates where the hardware
can guarantee that the resource can't be accessed any more.

Then the concept of a single exclusive fence and multiple shared fences is
dropped as well.

Instead the dma_resv object is now just a container for dma_fence objects where
each fence has associated usage flags. Those use flags describe how the
operation represented by the dma_fence object is using the resource protected
by the dma_resv object. This allows us to add multiple fences for each usage
type.

Additionally to the existing WRITE/READ usages this patch set also adds the new
KERNEL and OTHER usages. The KERNEL usages is used in cases where the kernel
needs to do some operation with the resource protected by the dma_resv object,
like copies or clears. Those are mandatory to wait for when dynamic memory
management is used.

The OTHER usage is for cases where we don't want that the operation represented
by the dma_fence object participate in any implicit sync but needs to be
respected by the kernel memory management. Examples for those are VM page table
updates and preemption fences.

While doing this the new implementation cleans up existing workarounds all over
the place, but especially amdgpu and TTM. Surprisingly I also found two use
cases for the KERNEL/OTHER usage in i915 and Nouveau, those might need more
thoughts.

In general the existing functionality should been preserved, the only downside
is that we now always need to reserve a slot before adding a fence. The newly
added call to the reservation function can probably use some more cleanup.

TODOs: Testing, testing, testing, doublechecking the newly added
kerneldoc for any typos.

Please review and/or comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

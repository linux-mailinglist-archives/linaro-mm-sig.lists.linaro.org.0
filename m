Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE6F382F25
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 16:13:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EC4360BF0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 14:13:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CC0A560E15; Mon, 17 May 2021 14:12:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8D41608ED;
	Mon, 17 May 2021 14:12:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0EF76607C8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0A8AD60B82; Mon, 17 May 2021 14:11:35 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id E147B607C8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 14:11:32 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id df21so7092415edb.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 07:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/uYIsc2htyUAohYH85H3sbQHCzRV4AhZ3J/6S4v6z08=;
 b=ZMT+aN3bQ36dHjsVPAejG43SAmkoEd0Qm9eqOZuzBt7yR5uCEVWzOqx/OXgsulQXh1
 lkRtb0S20RgS6RH2JUwXvd5y72dPEEdat+U1H0ZhncSQdAfMIrGzSRdP5o/RJsy2Urhs
 yehbdjSxyIVROcrPeOIsuxdbE/Cnl9MHvJIf/4KVngUFJ+joRN7alAxBFNNQpqDjv+fO
 gt8jbwVHADfczaJmHLijeKnD10c3seDVPiNPGDZUll6w2r+fEtKxOn2SuHTdhufd1L4T
 asi6ghZVtMLMR17OAPV5w9e6TX1iU/aqtjSs9Ry/3+gZCuN5ML4254TRO33pdEJ1U0Jj
 ZlIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/uYIsc2htyUAohYH85H3sbQHCzRV4AhZ3J/6S4v6z08=;
 b=mw3OhUnKmERB6HORJ3BpJ5EDZ4lVMCSWgar5j18forpqQ/tBHNMKvSnpivx8O+qB8r
 MmJwigR3RQ5Rq57/ycDglzJ+YcYh+wqorw+VDSSa266NQwTeJWXWl7QKEpwF7wgFRRDJ
 SEQJdVwJXjGR81OGJz0NP2FxI3Pf4rRxP1Z1ICmaTS01ylnQGfIbu5HjL+CGJPkTfr0i
 xWCp/qmbXUsZEk3g33CeyaH85ooTaNwWqEoZ/UadHxZpm4CMHObOmL0BBJsjDFv9VkYf
 WSHswldZueTPGIuIm7ElNUlu8MHSnYTCBHoFS9rETCBSoV94fY2UxB1+buWuXVjGfWDS
 a1BQ==
X-Gm-Message-State: AOAM533z2JeqXfoOhrdlV2IzHhhUlWHBmEddz0y3SpB/kvUFZIWsP8AU
 2oUjd39DWwR3/6h715nOpIY=
X-Google-Smtp-Source: ABdhPJwTKKSzjbWvrXVZRu1jfVInDY6a4RxjqvP6I4PFceoNd/UnGgKIZD2ZP1lKx3/D20/pWDdrkw==
X-Received: by 2002:a05:6402:2682:: with SMTP id
 w2mr235852edd.101.1621260692091; 
 Mon, 17 May 2021 07:11:32 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:1df4:c5b6:b8fd:3c4b])
 by smtp.gmail.com with ESMTPSA id b9sm2419624edt.71.2021.05.17.07.11.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 07:11:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 17 May 2021 16:11:18 +0200
Message-Id: <20210517141129.2225-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC] Add DMA_RESV_USAGE flags
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

We had a long outstanding problem in amdgpu that buffers exported to user drivers by DMA-buf serialize all command submissions using them.

In other words we can't compose the buffer with different engines and then send it to another driver for display further processing.

This was added to work around the fact that i915 didn't wanted to wait for shared fences in the dma_resv objects before displaying a buffer.

Since this problem is now causing issues with Vulkan we need to find a better solution for that.

The patch set here tries to do this by adding an usage flag to the shared fences noting when and how they should participate in implicit synchronization.

Please review and/or comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

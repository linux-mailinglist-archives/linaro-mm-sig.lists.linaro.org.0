Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E02C40F798
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:35:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFDAB6328C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:35:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B4A5D64AD8; Fri, 17 Sep 2021 12:35:23 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 391FD63424;
	Fri, 17 Sep 2021 12:35:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 12D586328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 10A9963421; Fri, 17 Sep 2021 12:35:19 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 01C196328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:17 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id w29so14919387wra.8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NqzuWFeqLMR3DIAr8L16pZ3er+uc6gXgKxZaXcF1adA=;
 b=MR4GVrYUq6pOKxeWCneMvbSRqOC+VP7J5W57KEltAJySgk58K8pLppWet97v8xr9aX
 eb2V/mPYRz6HL01TnvLNKPQ8Tz2PlzAAqNDxPkCgOec3gIuwxxFwml86jPEsA8B3aQQ8
 iZB/PiZ4oLuGzCphdVPgKJ6L54dJvbQ46+jf3uI7NTYjLgv9o3HLQk949201HWtFMOXM
 xAYI/JNljopIky6BUOHugrkZZyUec0piAVdIschbj4Er9Ak502jXuQ3qJFIkMzquZa8Q
 n43uaQzUhAPF8ddZ3lRUE+oZtPlVf7U5Dzrl1Pk9J9wsAQ/dH8KARjNA0DIonGaHMW3s
 oRRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NqzuWFeqLMR3DIAr8L16pZ3er+uc6gXgKxZaXcF1adA=;
 b=NvA9AkE50K48EQqzPegbOIIE0H+HqU/nahBAUbBuQ031t/skN4rVYVnIxS3NcqBluw
 LJtuBUcapUwoilC0uI7Dv2eqOLrxIE8URdPgOcfxZDN/2l2FKGZsIANeiCkfUu0FLnD3
 oTzcnPZ+1yNyHVrUTxvEXr4/IVUUSDEiYdjjC+TRAJ7BDosOCezIFxwqBPS37UTE3vw5
 CoDTpbA/QLVc4pe8j0bC3/GpHbVos6cC0XqIDldCnEjXgViDx2rhfa/OR65zWs9zhH3S
 RlFm+/J/R5qUkq34zp+0vdAKfzL7dFTGgSQPkxxi2e5w4sfFaQAJnH2x8qQwoBH2BE19
 jADw==
X-Gm-Message-State: AOAM5308DOf4r3HRXN4BA/G7tN1dUWHz3udrN3eZHlSE4OdX9BHVdPFO
 4SBMd3jHdqlq+EIVG2q8BqVX1O818KQ=
X-Google-Smtp-Source: ABdhPJyK+onjjmSAKaFQWBBQw+peagAXA1OgNeJVDQ/AMdoYnHiB3CR/VT28asGrQ3AobNAvWnDc4g==
X-Received: by 2002:adf:f18a:: with SMTP id h10mr12091268wro.42.1631882116093; 
 Fri, 17 Sep 2021 05:35:16 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:15 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:47 +0200
Message-Id: <20210917123513.1106-1-christian.koenig@amd.com>
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
Cc: daniel@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hopefully the last round for this.

Added dma_resv_iter_begin/end as requested by Daniel. Fixed a bunch of
problems pointed out by the CI systems and found a few more myselve.

Please review and/or comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

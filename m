Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4EC461488
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:07:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5107E62CFC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:07:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B8ACC611B3; Mon, 29 Nov 2021 12:07:11 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 947DE60B20;
	Mon, 29 Nov 2021 12:07:07 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9C87260557
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 98AF460A79; Mon, 29 Nov 2021 12:07:05 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 86A9060557
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:03 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id a9so36268522wrr.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zHSdQUo/Z1ZUW2K5tQ/UFoyARgZ8X0ChGzLOvRpv+d0=;
 b=X9+o7iX5QfU7Ab0akA1dDvE2mT0HK8UOLIgco2KjGFZkh13zyRptiW3RR2HPLxCMlr
 K3I8Xwd8jwKKeOwFXHiCymTNGMXdaCdnMfLiWItsIS3DqESMXpPGkvk8eSnVSQlizVQM
 25kCS2PIOBra3yyk/9fMKi73GYmWj1ao1VE2rI/AysW/CYl7+A71OWUoVjv0P5RWzvmF
 ei4VR+Og5xrTbOvUhCm5OKvYgce64ioRfT64xyAL/MvgR4RoAkdTdg+/yaX07cLUX2qd
 87ks8GKrCjaJayYD8vkRPYAnZ0V8GhIKpYBaTogI7ZheY6CnEk9Wr2lDGwv1b5r70E5b
 74zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zHSdQUo/Z1ZUW2K5tQ/UFoyARgZ8X0ChGzLOvRpv+d0=;
 b=xxgFgJDi4acBIZWFmiATj4dBlw4uDH3P5H2z+MO6L8r2uvrLo+LbtfYo1GVhiAZLab
 9X+GslKuklG8Y9/rPe64XNfonlkfRNMH3hq/2WWlYZZTR/w5pzOsp7+tNsJkQeUe2bQc
 Yeodt2CxkQXVh3yoTQE0sKLWk9NJ2pcOqlasm+70va/29iRNCrEVfzTjXT26FFToR7Ch
 DOlOCTIGij48T6q1ZmLK0ZA5R1TdUQxmiELpyhHyc/Z/wCuJf0XKBztJn/JBndUgrUuo
 Wpde43V/fpfE7Gx8xLBExF5G+/mqKxfkjPw9SVLVlRT7NA2sRFq7Nsrk2bB6P0b/RbKp
 YJXg==
X-Gm-Message-State: AOAM5326EU9ScS42UNaNhnLtHoCcSooa0cd00wNaQYg/j8AF8mHrkp3w
 sdk9CHXRM0lvoghGlBi19e8=
X-Google-Smtp-Source: ABdhPJy28uYGJlxEr/SzYN0VNKwr33UJ/8ZdAHdtvlS/NExTfCzbnCk11Gflha3P8ddzATr74mIGpQ==
X-Received: by 2002:adf:eac8:: with SMTP id o8mr34155552wrn.337.1638187622570; 
 Mon, 29 Nov 2021 04:07:02 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:02 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:31 +0100
Message-Id: <20211129120659.1815-1-christian.koenig@amd.com>
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

Hi everyone,

compared to the last version I've dropped the pruning as suggested by
Maarten, split the new DMA_RESV_USAGE_* patches from the general
introduction as suggeted by Daniel and renamed OTEHRS to BOOKKEEP as
suggested by Pekka.

Please take a look and review,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

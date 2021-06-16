Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED5C3A94F6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 10:27:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE0EB60B21
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Jun 2021 08:27:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 15E1B60B26; Wed, 16 Jun 2021 08:27:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9819B60501;
	Wed, 16 Jun 2021 08:27:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3A56660501
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3638C60B21; Wed, 16 Jun 2021 08:27:02 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by lists.linaro.org (Postfix) with ESMTPS id 20E7E60501
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 08:27:00 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id s6so1520666edu.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Jun 2021 01:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZD1oIEshyi5mEs2vX/ty3wdwPQu3S284MwRCDJHvwJg=;
 b=qCU6SCauZj7AZ5D7QDK8O0HF9eqJLgNurO4UAiW1PoDRoXD7jn7wlhiFaUpoQIZzOm
 uuwRJDaLTLXPixUmeTl7Vrl7mLOs+OyOkmKjYSNghyyMQV7jIXEdC9EB/kCfAVb4Hkuu
 KUXe4bDOVoWOImx0YOrkKiAYkZzVysiX0PPODpyMMdTW3XtHSgnke64nfVBjKv6yB+xJ
 aVARzLzjtKNHV5ooPwV8qwC3XbNAA3DALVyBi7bLoHDxQpQ/qcNbel23LtgfewdWRGhl
 7v3iVEDRQbS1TluR7J3xnouy5T34zwHUPhBzzYVTKJeG828Ix8KCxlEMEfBKinv2u22Y
 dNIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZD1oIEshyi5mEs2vX/ty3wdwPQu3S284MwRCDJHvwJg=;
 b=GE7esPoz64a/xEEKKLbinYFrOGrWqzAoNd3YvnAP4Eps8MAPSLrCBfH9Icn+qckLMw
 jVqT0t8qOG7nFvqIswv8pcMWYoJLBA3L8UulMIdB84glhTX8G8p5b1mO0rGVzv8NN1VO
 kSI9l0k8zvqdRlkKvME6vFjrNVRzGMBXSDHGoewK8BXRHZ9UGNoHBw2FoRYnQDYs8/q/
 MXxSmd4c03lZTc8mOTioNiYqwfeFcPYeIcb8J5SqCHYXRfVvnpYTBM9SrIF8bI+SidHM
 XocvYRPDzOmXElxZdkdqZkvIr5BGEr6nMH3vJjmAzw/WyECsDIS+hIstbWtECeO17gd1
 NiyA==
X-Gm-Message-State: AOAM532zDXoC1f3SQEgi3opj7fpHgh19ZbJr39p6NZ9+tYr5yhi/1XTE
 Ng7F6cQ76F/IvjBBJSuyoC8=
X-Google-Smtp-Source: ABdhPJwLXRFQuy3NSBX9qUhhQQAJmrUQyjuv4s9gBktfSh/X/BaDuqPOco4TJbd8H1T+RoWKdlZGwA==
X-Received: by 2002:a05:6402:2317:: with SMTP id
 l23mr2737214eda.265.1623832019200; 
 Wed, 16 Jun 2021 01:26:59 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8b88:17a4:582b:121f])
 by smtp.gmail.com with ESMTPSA id v7sm1152639edx.38.2021.06.16.01.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 01:26:58 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
Date: Wed, 16 Jun 2021 10:26:48 +0200
Message-Id: <20210616082655.111001-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Fixing problems around shared fences and RCU in
 DMA-buf
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi everyone and especially Daniel,

this is the revised patch set to fix and rework dma_buf_poll(). The new code should avoid problems with RCU and also now correctly waits for all fences in the resv object.

The rest of the series is then the well known change to dma_resv_test_signaled(), nouveau and now new also msm.

Then last are two patches which drop the workarounds from amdgpu, but those can wait till the next cycle.

I think it would be rather good if the have at least to change to dma_buf_poll() pushed in this merge window and maybe even CC stable since this looks really broken to me.

Please review, test and/or comment.

Thanks,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

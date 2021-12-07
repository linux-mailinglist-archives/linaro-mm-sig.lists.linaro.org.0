Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D2046BB29
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:34:31 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49F6461A57
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:34:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2E79961C7B; Tue,  7 Dec 2021 12:34:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F2E06057C;
	Tue,  7 Dec 2021 12:34:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 158F86057C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0A40F60BF8; Tue,  7 Dec 2021 12:34:18 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 008206057C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:15 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id o13so29093027wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UsLymO2NJxokLiyNAuPhk/abHIkS5BcAyNq3oHabOw0=;
 b=L6i3ochUOdIIETzfMMhvl0xo+H8PmC13ybWiQDxyxHPOFGCNd+9x0hd1C0uXpix9WD
 0DNwXOLiHGYfiy9TZku7tlkw7W6o37V3Th8X7CJs/M1hLkk36/VJSGAYJTTh0yaRbFtD
 w61hkT14D2249rxzC224Nge9I3Ng8NXsUBF3eXEhr4ILcahaEdIYkmqU8auYhSh/d0bK
 PEMGFapUXGs8izpAeBsxU1cFTTR1p0DKXZ0IxE7pSrKJh1pUbMCUlyqW0xGImtOlZZuu
 Weup2zh9VXTlhiS4yJzPlF21UqN4wI9fV+vjZdkpR3jnMsvFEmTlmBxLa3IuD16qS60R
 kh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UsLymO2NJxokLiyNAuPhk/abHIkS5BcAyNq3oHabOw0=;
 b=EoWdNcQFddBX5/rDctCR/shUppTM+y/FtFnAQxIuYFwwoaLH8825MTjpsiA4yrcA+a
 EOTMdWgER5iAPvzb9Sun+hjbjJ1eJZaT52PguA7wJrFuEcDO2ENZyFfyX1PUhtc0ax4m
 rgipLZbWqqh/BFMwPJeg9vUt1P596+27HRfXyN79jCcZ5xv0OHQuqdZR9Nxv1DYuBUjw
 3aebpSlFau8xFXHopFXuxP52xz7vvR4ts6ZVToqaiBCslpiMJoCXAtK3L6Iaxr0zda9Y
 Gz4EvniisdZLWbJ6xWJCD6BuLkOsCpQvZbs9IVg7wCYrKAiiX/zg0l7cXn1MveP64y02
 4b2g==
X-Gm-Message-State: AOAM5327sAvSWUKvi3Sjw2qGhvZp6NToW8MVMrsIoxTdDyDijHCzPKyc
 Ciblyzs2MzLkP6j1PfBCrJ/59X6eB0w=
X-Google-Smtp-Source: ABdhPJwXJf/rZIxlu0oRQ74XzCWMNqr/EEFzXvSGNCj6TPD/+9C+4p2bj/r7c/TlKRh50YHkBhdduw==
X-Received: by 2002:a5d:6508:: with SMTP id x8mr49147397wru.388.1638880455017; 
 Tue, 07 Dec 2021 04:34:15 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:14 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:33:47 +0100
Message-Id: <20211207123411.167006-1-christian.koenig@amd.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Daniel,

just a gentle ping that you wanted to take a look at this.

Not much changed compared to the last version, only a minor bugfix in
the dma_resv_get_singleton error handling.

Regards,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

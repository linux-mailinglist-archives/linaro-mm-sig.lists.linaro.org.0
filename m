Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D26414497
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:11:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCD6E61A3D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:10:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6A5B861758; Wed, 22 Sep 2021 09:10:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A89DF617D8;
	Wed, 22 Sep 2021 09:10:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C613561731
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C3E99617B3; Wed, 22 Sep 2021 09:10:49 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by lists.linaro.org (Postfix) with ESMTPS id BCAA761731
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:10:47 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id u18so4697576wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QPaZIA3OXheGq7H12t8v9AcLQzxM/IY6gpIxbQ9NIBU=;
 b=HRcjuNmtQ4dQCHzxiGyBFlz1o6ZIpqHFAJn9cSrSLn0hZTX6aD5UG1NC2wwnL9lW83
 lMYhp13/0ku4zCP5lIwxCiL8K2SVl7MQuQZUeoKuvi5U0jFCrxj1Ib8aqERCnwd5rb03
 wpm7porZmDT6b8347w/vFSGIvriPPXKJm6FfpiT3wVOnW4pg4kc4b7W8E5gnDeSeuXHk
 /Ojsw0ybbotcHCHTvbU5cNuN8jXmr2peThQfgIwvuEAQGpMkHa99wb9Hhz3Q10T/k0LG
 gNMKPqaT24m34a4Ex2qsZccF8y1YdpbiOAPqKboRzc/P+odMXwSqLm21hB+1ObMSm9Ld
 KvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QPaZIA3OXheGq7H12t8v9AcLQzxM/IY6gpIxbQ9NIBU=;
 b=vFmSHHr4+0HQpmi4o5YIPduZOD3rayXru+NL034HRymITs9SuxAMr7Z2sQHuMBwVE6
 UHg/An3Kmm+gTRpQD5Ruux5a+AVMCt1w5FAx3hb72u/2y2L2ubChRhf8zqzh4zjMLTmk
 rL7oed83UephMVD9Ml5fXUXz45gQX/RJPbZPYMeKSxjy7IMsc4R/NMTAI1rlHdK8cuy3
 uZ4SvCbh79L7IOAd0OMtSMztymwTwmtS9gT3NGS2FGxHS4xrp3yPbA8uhAkHX0isQ5dA
 GM9WvpQKrPYRbHDjiTOp+UaSNL3rpU1C6KKB+2Xapl98FZG/ZVh/Ru0kpDs6GP8ffsen
 038w==
X-Gm-Message-State: AOAM532vnWNuZRqILrp3G8OPXL6sffgsUfDQw+H8U14eMB1EqlGDiQBp
 i0lMwYF8H8/8N0sMs0UYxj1loRvAXQ0=
X-Google-Smtp-Source: ABdhPJwz9tdHs2Dqxbtq5mgu3pKD03j1gaYVtgUGe+HEoIn8RvQgu8P5MxeqyaGJXezpZ6uHsic2rg==
X-Received: by 2002:a05:6000:156e:: with SMTP id
 14mr29311279wrz.393.1632301846902; 
 Wed, 22 Sep 2021 02:10:46 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.10.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:10:46 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:18 +0200
Message-Id: <20210922091044.2612-1-christian.koenig@amd.com>
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

Hi guys,

The version I've send out yesterday had a rather obvious coding error and I honestly forgot the cover letter.

This one here is better tested and will now hopefully not be torn apart from the CI system immediately.

I tried to address all review and documentation comments as best as I could, so I'm hoping that we can now considering pushing this.

Cheers,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

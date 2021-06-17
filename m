Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D913AB23D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:16:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A058E6350E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:16:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40E4C6354D; Thu, 17 Jun 2021 11:16:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7ED4C61A2A;
	Thu, 17 Jun 2021 11:16:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5E0E261145
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5901061A4D; Thu, 17 Jun 2021 11:16:04 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by lists.linaro.org (Postfix) with ESMTPS id 4EB6F61145
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:02 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id u24so3422973edy.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eRoeVaaXjTUDEXCwT0O7O9+YvstCRV3pUx1vTDqRgQg=;
 b=G4wBwRp0IjZh+y0I9yhNcfOxHF+Za8sU6/ookQRfC8i1TVCIFcg3TQ9kveDi300x6q
 gdQqx77sfv0OtlGiYtOgajzGlUHIS1Ia/W/aJWKCQ9a22UKHP2FyRfZprVG/OBAzkY3r
 /oQEo33n5soAsdloWhelH3zPTiKwFVEXJdTg7+kNxpexB7bvOfGWCkqhoNsXos2Qua4q
 0uDo+1LSIVQk9PS4881xGdI2pDiJQBpPaVudCP+DShbmVho+BW4rNeeyZ6H5XSrhRXpS
 IzjNMQuKPBEF2K4zX91ZSpyEQnniQmfmIildKcuwkCYmDArJk1HvAxgf0IvMGBI/XwKW
 dUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eRoeVaaXjTUDEXCwT0O7O9+YvstCRV3pUx1vTDqRgQg=;
 b=lpsKFnpPbKQMUoWIU0Vvv2uBohNzpsr5EwZxlvWju23PbXk4TDIc0WVbq7I7jkRzMc
 GE35HBBZjMSwqhYHiSAZIwGca8Zc86XrmiL+i3FZKCzkqW4OaVKADlgDu2IgKpshpmju
 WrxCyAykPEdIdKcvYkeT01K67PYmPENazAUZywPTf9sCHwpcNEcn2z+6Xj4ZykCn9xgu
 e5OrJRaWTJmYhOYRb6ij4weVSAfBvyu/h4T2JdJUSlFSHKWTdHYxyELObj2Kjv7LWBpB
 PeFhyMwdXRRL7YcKBmW0wc3LBcyKGNhA2iqh0GyulbsxGJ+mOX1wDGyS/oqVHb+WEVwM
 3pNg==
X-Gm-Message-State: AOAM533QX+KjiIchvG35vrNRssjzXAUmWFtmoJ+hkGYAUzmHBg4WI2aX
 3XPbofKYymmNrEhqR8xkS3I=
X-Google-Smtp-Source: ABdhPJytH6yVvyCmyeiBB7rLMSWtt83HkP7MUpXyrNkBfXBgFQ2Z867Cw4vlh/L4I8F8GBSaCTnRyg==
X-Received: by 2002:a05:6402:543:: with SMTP id
 i3mr5777204edx.173.1623928561443; 
 Thu, 17 Jun 2021 04:16:01 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:00 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:42 +0200
Message-Id: <20210617111558.28486-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] Introduce fence iterators to abstract dma_resv RCU
 handling
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

Hi guys,

during the recent discussion about SLAB_TYPESAFE_BY_RCU, dma_fence_get_rcu and dma_fence_get_rcu_safe we found that the RCU handling for dma_resv objects was implemented multiple times.

Unfortunately a lot of those implementations get the rather complicated dance with RCU and the sequence number handling wrong.

So this patch set aims to audit and unify this by providing an iterator which automatically restarts when a modification to the dma_resv object is detected.

The result is pretty impressive I think since this not only mean that we got rid of all those incorrect dma_fence_get_rcu() cases, but also reduce the overall loc count quite a bit.

Please review and/or comment.

Cheers,
Christian.


_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

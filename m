Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A53D84EFC28
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Apr 2022 23:31:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D1A4E402C1
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Apr 2022 21:31:21 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by lists.linaro.org (Postfix) with ESMTPS id 98A5A3EA18
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Apr 2022 21:31:17 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id h11so5560801ljb.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Apr 2022 14:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X0JK5ihT1MOGfyrbF7/pj0RowTruIVoP8e8CBBTi+S4=;
        b=C3Kf9Jm7U1BjEQwktj6mm0YSGdJta5gC611qurF0ij+1RP2Nw6zIG8ZqJlQeUPFlSR
         4raoXNZ0GZM2xMqM+JWbTCIJOOITuhrDYmCMsyuA540wopq7D/I4dCPHjnz1L1AuC+Ed
         fSVIkEpV+m5VcxY6+rZb96Oyp9TyTWfOOH/32rIrgph10FCwftAH2n/JjYxdXaSqv5ba
         wRchlZZNVv2YkBrwuydSSuEW/BcDn/BkHwRj6Yqk05OS3Qo9R1p28mK9m/JTNJzoCu6N
         I86TdUsZRQ6dD0J6GYUoSB0mZ5zPDkz8CE1W6SIxIVouoS9AipGBIMPgO+P9wu86uIro
         jhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X0JK5ihT1MOGfyrbF7/pj0RowTruIVoP8e8CBBTi+S4=;
        b=2GoFvdFm12OJ1vp/rsives4Wj/1QzIhtrPzo/awbLknpvad2aJUOyEx1w/vesrFUPe
         OsoaZAnJbJFCmw9nigl/Kb3NonNC4FPUOqET4SgpCPax4ODmjQFWbXuNhkZsTiQNjARh
         085983OlsWhAmaH6mR4tjfnVp+fq02krwqUxs92/UburIAo+IoYzraliz3McPwzrw35H
         LXU5mtqLjPvvl0kWgpfL2RnP7hW55w+qOJMU6D2aEIQjekfMSV7AMH+mD0ruLLWROiPY
         SO9r3eZ3tYd0y3uiCOxVj34X1Pcv1ShjY5fRJqO+e9yR/mcRRi2WWgFf8vx57IcqI4z+
         SYlw==
X-Gm-Message-State: AOAM531xnBiv3LaIheIJVB6O5lH+hlVch6V1dqIlr81JgPa0lzIcKzM6
	E5rVysO5z4k1YXUkVQxoWJg=
X-Google-Smtp-Source: ABdhPJwbmAj/TNXsyVzHxHQSIygbytu2JvhBQgA5HutAlambTIknHU9BwVfiI2XSNvpyitKPuCrnDw==
X-Received: by 2002:a2e:a80e:0:b0:248:5819:b94a with SMTP id l14-20020a2ea80e000000b002485819b94amr14660509ljq.141.1648848676369;
        Fri, 01 Apr 2022 14:31:16 -0700 (PDT)
Received: from localhost.localdomain ([46.235.67.247])
        by smtp.gmail.com with ESMTPSA id m8-20020a194348000000b0044a2ce63ef4sm349523lfj.10.2022.04.01.14.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 14:31:15 -0700 (PDT)
From: Pavel Skripkin <paskripkin@gmail.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	christian.koenig@amd.com,
	daniel.vetter@ffwll.ch
Date: Sat,  2 Apr 2022 00:31:14 +0300
Message-Id: <20220401213114.11956-1-paskripkin@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <2d1f9ba9-ea2a-e41c-eae6-0ba348cdf202@gmail.com>
References: <2d1f9ba9-ea2a-e41c-eae6-0ba348cdf202@gmail.com>
MIME-Version: 1.0
Message-ID-Hash: ROQQQFTEX4BADAHSTE7T742SMQI7R6BR
X-Message-ID-Hash: ROQQQFTEX4BADAHSTE7T742SMQI7R6BR
X-MailFrom: paskripkin@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Pavel Skripkin <paskripkin@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH next v2] dma-buf/sync-file: do not allow zero size allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ROQQQFTEX4BADAHSTE7T742SMQI7R6BR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

num_fences is user-controlled value and it can be equal to 0. Code
should not pass 0 to kcalloc(), since it will cause kcalloc() to return
ZERO_PTR. ZERO_PTR will pass `!fences` check and kernel will panic
because of dereferencing ZERO_PTR in add_fence()

Fix it by validating num_fences and bail out early if it is equal to 0

Fixes: 519f490db07e ("dma-buf/sync-file: fix warning about fence containers")
Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---

Changes since v1:
	- Dropped already merged part
	- Removed syzkaller's tag

---
 drivers/dma-buf/sync_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
index b8dea4ec123b..024f22193e0c 100644
--- a/drivers/dma-buf/sync_file.c
+++ b/drivers/dma-buf/sync_file.c
@@ -212,7 +212,7 @@ static struct sync_file *sync_file_merge(const char *name, struct sync_file *a,
 	dma_fence_unwrap_for_each(b_fence, &b_iter, b->fence)
 		++num_fences;
 
-	if (num_fences > INT_MAX)
+	if (num_fences > INT_MAX || !num_fences)
 		goto err_free_sync_file;
 
 	fences = kcalloc(num_fences, sizeof(*fences), GFP_KERNEL);
-- 
2.35.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

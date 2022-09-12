Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DFC60439C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:44:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6F4D73F1BB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:44:55 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by lists.linaro.org (Postfix) with ESMTPS id C2B653F4A3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Sep 2022 03:30:38 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id s14-20020a17090a6e4e00b0020057c70943so11052495pjm.1
        for <linaro-mm-sig@lists.linaro.org>; Sun, 11 Sep 2022 20:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=sKbomRMGom70krm78pjOhP3vYpEjxELi8i1q/e0SlpY=;
        b=ZYw3ZzYbu5vDHbMg9BQC0jtdwdYGnkNYBLtlJ433hzRXIIhH7mP5TErdP64efnHF02
         +MVuI8NG9NmvMrzZPt58tjXrW1ZO/xSUQDLk5lpTzyWE/Rw3s1BnCjVe7yJi3AcjY5CI
         8NF7FlGxmVeR4+9zKxpwxM04PdAdf2JqyF24eJMKpn1tqVCH8rlP8uyLNcaZbOkwERu0
         NqaqP2/GzaDsLWg0n9X9GfCyaOH/tX8KeB2+5rKrIr0yClzPXv6AbpUTVoXN/y9yWf4G
         55DQV9QmwfkDwxyMHJDoIpbJobjM9LEt8NTAPPuPVxuPMuhZAmwbEkxDtB2vn4riXTxo
         leOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=sKbomRMGom70krm78pjOhP3vYpEjxELi8i1q/e0SlpY=;
        b=lQ1EfOROuR1ejxHGIPQVW+JXB6x9PS3m8DUAXXBRbxduRsuNp1on1fj9bT3Lfu3DzN
         vQfGRplJ15wwUBDCFQCoVsfeP1o4c6byDbQqZbk9KMDsxKPQbQZOe0fUCAZVELtlrH+C
         Ov2VCpERBd95lVIxa1FA8MHZwTd28W1SrXlsfU/KWG9aSy0fRch8cZ73Jr92HQxbBVer
         kcSwM3Vt+4aOMde3bv0oIbBT+SBotaSvmuxtarZPgGX2b52FkZ/22FZyggefOjOS2sLz
         A/IxU4PdjUZ3mWF4dQPgXsHCcYY//OiwAeGTn6GMRt2wAwgplvilaGsWMsycMw6OtvCy
         fL8A==
X-Gm-Message-State: ACgBeo3GnBgySQIlQ6o2a3DcpUE77jrTx8f9HymFk4qMPq8+h9FDNTcV
	/LaGDGuMZE0YAsZ5Ih46soo=
X-Google-Smtp-Source: AA6agR5mMcNSUN0ubuaXtcptrlA41MCJ15Q5xLlOytiB6BZptyu+5PtC2H1EOaddT+BL13/1OuOgrA==
X-Received: by 2002:a17:90b:2704:b0:1fd:aaa9:6d0b with SMTP id px4-20020a17090b270400b001fdaaa96d0bmr21605086pjb.128.1662953437873;
        Sun, 11 Sep 2022 20:30:37 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
        by smtp.gmail.com with ESMTPSA id s15-20020a17090a13cf00b00200de8ebc2bsm4062811pjf.13.2022.09.11.20.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 20:30:37 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: xu.panda@zte.com,cn
To: alexander.deucher@amd.com
Date: Mon, 12 Sep 2022 03:30:22 +0000
Message-Id: <20220912033021.16320-1-xu.panda@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MailFrom: <>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VS7PA6TGS4N7V3ROKXJPA4EKQV4ZJZLH
X-Message-ID-Hash: VS7PA6TGS4N7V3ROKXJPA4EKQV4ZJZLH
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:38:46 +0000
CC: christian.koenig@amd.com, Xinhui.Pan@amd.com, airlied@linux.ie, daniel@ffwll.ch, sumit.semwal@linaro.org, Felix.Kuehling@amd.com, jonathan.kim@amd.com, Philip.Yang@amd.com, nirmoy.das@amd.com, rajneesh.bhardwaj@amd.com, zackr@vmware.com, Arunpravin.PaneerSelvam@amd.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Xu Panda <xu.panda@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH linux-next] drm/ttm: remove duplicate included header files
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VS7PA6TGS4N7V3ROKXJPA4EKQV4ZJZLH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Xu Panda <xu.panda@zte.com.cn>

drm/drm_drv.h is included more than once.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Xu Panda <xu.panda@zte.com.cn>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index b1c455329023..c659d4535ee0 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -43,7 +43,6 @@
 #include <linux/sizes.h>
 #include <linux/module.h>

-#include <drm/drm_drv.h>
 #include <drm/ttm/ttm_bo_api.h>
 #include <drm/ttm/ttm_bo_driver.h>
 #include <drm/ttm/ttm_placement.h>
-- 
2.15.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA83494EEA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:28:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7742F3EEA2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:28:03 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 93B1F3ED26
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:50 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id az27-20020a05600c601b00b0034d2956eb04so13672438wmb.5
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fg716y4MiLyyXQDO8h3nFRM6quSlb9x3KrUEMDa+vBM=;
        b=URoTrhHmLIknwGRjipG8fwVJNbcTRTJNZg0brPQae0b5AtGytfOdXDEGKXYKgw6YJb
         dpZdDFU0B0st4j0tKxMPpGMUddD3NXT1XopDR00DVxAAcesy+NmjQ7604W1EcW4Uv4oD
         wJEQoEZAoXBeLsfuR18c/BRvQpHfi/+kHpjT3dgHucVA6JD+eE3Tbjl0hGweI0luVeWC
         YcntrN8PyqFzxeg2Mb1/pWUfLWtPx+LBIC7aPXH3eJWuJ9WIWS04EixAJnR4Av5eCs3W
         J9PM+sAUlcnunzmpN8bqbCrUfcETh/8AC9MvmkP4PWV3S3TJqPpS5C8qszIjFkELGm7q
         /W6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fg716y4MiLyyXQDO8h3nFRM6quSlb9x3KrUEMDa+vBM=;
        b=Mt6SkznwbDqeoqtAUC0gfU8qlM44nxPGAHF2WxVRZnnJ6UY/KmnusFGavizi1WrOop
         7zI86evqaODGowsAminPDdQlZy35GSop+lDNKnAeE8Cd5vSBkNdPdymzYefMhwIesPdp
         ZcW+qBJ9OQAX7V/L0gMRq9MHiJuNj9a2ZM0r8G1fPLbzzgDPwY4KCY6OvfC4EhomHPNg
         6WwFtb9PAKrc67dJaxOuyEHFJQ2c8RKMpNiLi3T3swFmnnLESOagyj/+Ck6SH+ksq5dD
         QdOxXrmyMLWDobsUbg+ETixKuksxnbAAjww85HzQZvzCy93IrwIkEQxFntU5ftMV9BdU
         euXw==
X-Gm-Message-State: AOAM530R8e9KJ2DZCc8s5zlniFGoSrolKWxNV0N9gOsNW9i5MSbjt6ZN
	7Di3mbQhwj4uFdyIrJ8gGV0=
X-Google-Smtp-Source: ABdhPJyq3Wxk9a8Apw4i45euPrV9j5Rjus1JSRDx4JlL4eNcqp1z4o77N/YkC8RnngJeEmZhvwXtNg==
X-Received: by 2002:a5d:64a3:: with SMTP id m3mr33769326wrp.36.1642685269640;
        Thu, 20 Jan 2022 05:27:49 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:49 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:38 +0100
Message-Id: <20220120132747.2348-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: IVBQY62D5RSU5RSNAMFXIIHILN4K43NQ
X-Message-ID-Hash: IVBQY62D5RSU5RSNAMFXIIHILN4K43NQ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Enforce dma_fence container rules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IVBQY62D5RSU5RSNAMFXIIHILN4K43NQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Daniel,

second version of this set.

I've kept the fence ops exported for now since there are indeed valid uses in the drm_syncobj implementation which needs a more wider rework.

But quite a bunch of cases in i915, one in amdgpu and another one in vmwgfx are cleaned up at the end of this series now.

Please review and comment,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

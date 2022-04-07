Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3834F7AA7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 10:59:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 818A9402C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 08:59:54 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id A4F023EEC3
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 08:59:50 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id b15so5613728edn.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 01:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLaoaPEpHffRvRTEifG5GvlOmzNyIxhDlxnSe+A6QV4=;
        b=KQk/koXUWDrAcboJIVgBLjpc0QYpwsZ3DIM0o9klQbRZJsaCO34oSRRIrMfgKpDF2S
         ZWlmRIjETP+JDut3v3QRzL8jT9+95eE0DSNyl9zuhuEg+sll8Kxs9lYCDYtdCa6el3rG
         s1ixTXOTAUz1BuJTIjnhQmP0Rx/9kp3PkPyv5fltrv3I8RRz3KJjgWGO2gc0fMdXX/0k
         sQecUP+jtN5lgcsURh88wjQmR2OH+MxbMnFH/8BoORqJ52TeAOkUeYIQsdh+yDPl2GkZ
         Ap2EmIMb6bVMJU5e8hd5z42cKS7/4faWcDaSH3sLsSlUJn/DoACF7GrKHj44pgRXUFa3
         lHFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mLaoaPEpHffRvRTEifG5GvlOmzNyIxhDlxnSe+A6QV4=;
        b=XqYeXnwl3MhSyjCy5jH2qRfxBPEHAgYsdZHkV8ljUaTNmJpIA+ZCc7AcaaQVeCjfq8
         Li12t5qSTENpCZKgAtNvpkhpW8ZNmNM+r/mt7ZIkUV16UlRKl6MyJv911cFiC941pYpW
         Pen8G7D9cC4/YpdXZ6mLFfUCLvoh8gTqTrnGzTaw8bRUlNIwc7PT9J2VMiECneH1GDzj
         q9FqbDbr6ItSZkR18CpSyLjUsjPPTvuBJZkBHC+j59ZdiRelusKV7pulyVPOwm6KEp5g
         7mOxNjemxHl2OwDHPbZDvyFjRO0Vjtp4LAApehha6kvMFsjpf9vl5FlnElZbTFzak+n8
         m8MA==
X-Gm-Message-State: AOAM532nzXGQ5SqzJEDTckG6mEbKgg2M354odETFI+5YNGDLNzYtCYxK
	oHFZNqXSnjYn+Dqco0sdGhs=
X-Google-Smtp-Source: ABdhPJzeETI+aibm16Fz7XHOsM+emhYvd4jn7+9bFUhsY3UvzT3cfJuShTcwU9S3v1mIXnpgHhIOGA==
X-Received: by 2002:aa7:d287:0:b0:41d:79:73ca with SMTP id w7-20020aa7d287000000b0041d007973camr3673930edq.142.1649321989621;
        Thu, 07 Apr 2022 01:59:49 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.01.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 01:59:48 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:31 +0200
Message-Id: <20220407085946.744568-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: 3LIGZDNPF7VURMSOJIK6LNCJLBQK3QPI
X-Message-ID-Hash: 3LIGZDNPF7VURMSOJIK6LNCJLBQK3QPI
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] DMA-resv usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3LIGZDNPF7VURMSOJIK6LNCJLBQK3QPI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Daniel,

only patch #2 had some significant changes. The rest ist pretty much the
same except for the dropped exynos change and the added cleanup for the
seqlock.

Thanks,
Christian.


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

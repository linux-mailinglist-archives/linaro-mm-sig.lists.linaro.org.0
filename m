Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E574979C0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 08:42:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48558401BF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 07:42:46 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by lists.linaro.org (Postfix) with ESMTPS id DE48C401C8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 07:40:53 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id l25so11811566wrb.13
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 23:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=32x746+aqRVJfpOzq5mPUyMArnAKR0oshZjP3RNr6L8=;
        b=mG9CH90QC3I0Kyzw5y97iSNP9PKE/WVtuooRunf7nd6IStTMUWHcpXD6CBgFSAzYcc
         4nj0LnYyS4DS6WNAo7pgQp0P5OrOeTPnFgfGBFyIUgGqW/n9Nml/4rP6hhxrvPVIOWzT
         9kCfjaCTyxQPQrTBwvJzzfSvZvbS4cLWCtyfIqFA8jYs/coBp6zCUlsv5gEuhNMgZM85
         yctcg1vjOhrNtMASAKrp/iVmKCwmE4RYU8CYLR6OmR9JLXG7+qd4pMVIyf82yn0OjWPg
         gcdEJntMlPDJLPBBIQ648UZr5CVOorNM/aGKcXOHOdRTKHhAHt+CBeGRGmFA3w/T88C7
         aJsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=32x746+aqRVJfpOzq5mPUyMArnAKR0oshZjP3RNr6L8=;
        b=2oRqMQri8GIlAXWQsqazmJcCOFPzV2axjUCJvKli9+OUGZDFCQJ3NsssKZjSMKu8mG
         ExrirISIQQStHmolQDhdUjyZr6J4zPhO7nnj0wdPBGkRYpSkrg+CPmd09F2ESX2JwopX
         DbUIAbjrA8MYIATh5PlUmi76szwuFj8HjkO/eiCYiu5DKpfjPaP2W2D6i5HPgw0E9G3N
         YzWh4okyxVtKLnldFxo7uVOKCMvGHMk0/FPzJeEeK2DngLvCYJ7XrLtK30J4UBOr8GNA
         l1Kxifz6k41uWTVr90t6Xxvpc91jp5gz9sHLXpl64gowhSepquc9N8hVHgiVPqO7AzRR
         mijw==
X-Gm-Message-State: AOAM531veUY+KnW94+aGCIQtO2t+WAiiF3Obz2yBaPvhOYpUL3GbMBp0
	maj7nx3lsLdiT6WiSG6alcE=
X-Google-Smtp-Source: ABdhPJwMln34ByUlknX94Kfn4e2Z9+KJmZUiiAPAAQbyVgCnwUNiQ9kwRWOqrhxswOPyncTsQLoDAw==
X-Received: by 2002:a5d:6947:: with SMTP id r7mr13378665wrw.510.1643010052928;
        Sun, 23 Jan 2022 23:40:52 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id u15sm516370wrs.17.2022.01.23.23.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 23:40:52 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 24 Jan 2022 08:40:44 +0100
Message-Id: <20220124074046.4865-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220124074046.4865-1-christian.koenig@amd.com>
References: <20220124074046.4865-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: EYGZ4ZTXID7FUJZEUFTBCHPAHVLOMIS3
X-Message-ID-Hash: EYGZ4ZTXID7FUJZEUFTBCHPAHVLOMIS3
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/9] drm/amdgpu: use dma_fence_chain_contained
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EYGZ4ZTXID7FUJZEUFTBCHPAHVLOMIS3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCBvZiBtYW51YWxseSBleHRyYWN0aW5nIHRoZSBmZW5jZS4NCg0KU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYyB8IDUgKystLS0NCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMNCmluZGV4IGY3ZDg0ODc3OTliMi4uNDBlMDY3NDVm
YWU5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMu
Yw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYw0KQEAgLTI2
MSwxMCArMjYxLDkgQEAgaW50IGFtZGdwdV9zeW5jX3Jlc3Yoc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYsIHN0cnVjdCBhbWRncHVfc3luYyAqc3luYywNCiANCiAJZG1hX3Jlc3ZfZm9yX2VhY2hf
ZmVuY2UoJmN1cnNvciwgcmVzdiwgdHJ1ZSwgZikgew0KIAkJZG1hX2ZlbmNlX2NoYWluX2Zvcl9l
YWNoKGYsIGYpIHsNCi0JCQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IHRvX2RtYV9m
ZW5jZV9jaGFpbihmKTsNCisJCQlzdHJ1Y3QgZG1hX2ZlbmNlICp0bXAgPSBkbWFfZmVuY2VfY2hh
aW5fY29udGFpbmVkKGYpOw0KIA0KLQkJCWlmIChhbWRncHVfc3luY190ZXN0X2ZlbmNlKGFkZXYs
IG1vZGUsIG93bmVyLCBjaGFpbiA/DQotCQkJCQkJICAgY2hhaW4tPmZlbmNlIDogZikpIHsNCisJ
CQlpZiAoYW1kZ3B1X3N5bmNfdGVzdF9mZW5jZShhZGV2LCBtb2RlLCBvd25lciwgdG1wKSkgew0K
IAkJCQlyID0gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywgZik7DQogCQkJCWRtYV9mZW5jZV9wdXQo
Zik7DQogCQkJCWlmIChyKQ0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

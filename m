Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2D4494F06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 14:29:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7C863EE98
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 13:29:44 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by lists.linaro.org (Postfix) with ESMTPS id E25903EEA1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 13:27:55 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id f202-20020a1c1fd3000000b0034dd403f4fbso10436093wmf.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 05:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=32x746+aqRVJfpOzq5mPUyMArnAKR0oshZjP3RNr6L8=;
        b=JB6DFT7fG55XAcBP0OpH10Gqzt7WQT8AwDJYXLHgPSdp5fcULgThwB66aca6ixgPFl
         8OCZPZh8swjc4+SOdWbQgKRJreT9q7vbCMQj1OPIOZi557SH0U4fwxzs01a724XMZ0vF
         nA5s20pHhMVs4ukENqvjHmD8Ju9TZa+vHN6PD2xYnyo1n0Btgv63Om6SjJ1ZuqwrNaMZ
         jVSX13Tc5ZBUHH1oVsNTvBLkcPIPzTX40mIWyS2CXcg/daA2a8gj74tPuQrOwtvLUiXa
         xC5yl3QyI1h6tPy+UxKTJe8pEHl9c6fHxgfAJx7ejbCW8MMAa5anwSZFgiBru4L8unHR
         Ss6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=32x746+aqRVJfpOzq5mPUyMArnAKR0oshZjP3RNr6L8=;
        b=r4x7njFHpnP7aSiJV3zKzYcm1ZnO8WJFKkTeswa493Al6Ya4b0Tf0WEE+8tyjxPqhg
         e4nQb+J4OdDhyf+3oVWr9ziXUowaGabmQb2DhotBZg3EoKl2Qfn5hvEsGkhhOYVo/5/x
         6DD1JuXwPHSIXXb7HCZwQLTn38UN6wy/m56Gs797qef1tsOcB/TScu/V8gBTbUKCGdvQ
         mg8P4M7BBd+b/V0ORtA7PrSeTQvqqcHUAQdrQqzWdLXk7QvFexaDI2Pj9akpayrcmalS
         RPWDpcT8BX0yrg8On4540ARk39wfuCdP3VWwgtLFsVioirwtxK+cGe9JpYhoQyCyrngH
         Fz0Q==
X-Gm-Message-State: AOAM5312OvKY/2Y9RXyQqan1UNRo0/BeHv0TAYrGEZR/bD3ZLzHJ2dml
	BFYQQ+GIlG6bzAIEj8NIZyg=
X-Google-Smtp-Source: ABdhPJywJHgOVOLmBR5mzG5JMri0mseBaYfO5Sp+REkszykHT5ZEgC/018YsFmyAizxsvuQDoewpVA==
X-Received: by 2002:adf:904d:: with SMTP id h71mr33249269wrh.569.1642685275081;
        Thu, 20 Jan 2022 05:27:55 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id a9sm2658454wmm.32.2022.01.20.05.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 05:27:54 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Thu, 20 Jan 2022 14:27:45 +0100
Message-Id: <20220120132747.2348-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220120132747.2348-1-christian.koenig@amd.com>
References: <20220120132747.2348-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: MAQDKDGM2L3NGOKUFQQYLE7EFLR6PO2G
X-Message-ID-Hash: MAQDKDGM2L3NGOKUFQQYLE7EFLR6PO2G
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 7/9] drm/amdgpu: use dma_fence_chain_contained
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MAQDKDGM2L3NGOKUFQQYLE7EFLR6PO2G/>
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

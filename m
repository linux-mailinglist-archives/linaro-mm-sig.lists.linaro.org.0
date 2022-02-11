Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F6E4B2657
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:50:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 368853EEB6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:50:55 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by lists.linaro.org (Postfix) with ESMTPS id F15FD3EEA2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:13 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id j14so22692150ejy.6
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=09+OZY0MO5bnMgqYdcklnL95CtjCA0G+15DEhlIQKlg=;
        b=L7NKrNr7o4kXQsZcvDvrGQ/zlWGe+D16fjPdkAphn3CuoDj2IMgSIVjX4TpI9crkDM
         DtsVYhS5lfxMC6/H3UGkVnNw+IcE1N4JR4uWM3lvb6bBbtA2dV/tZgeSJWxfOB0ENAeb
         ays4LmerkN6FBQVpTjSqj07Pc9T7PSGDrPiD+5d23SF0DuSxqnoeYi4fQQaJDScvYiBl
         VELFB0x7ClqhRLXYDcJ5rY+CCxcPZN6VySq8qwvb8BxyNjZuuflVULMjE42qgPAe5J/X
         /P2BDV3IyH4/ar16WcYj7HPEYe8XitmcByw15hMDMxO4SovTB7XRoZRY/3U0BNHusBu/
         rL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=09+OZY0MO5bnMgqYdcklnL95CtjCA0G+15DEhlIQKlg=;
        b=etVjMJ/5HPOX4ILMxz+Gn8dm3cdD32lG2/klgDdPV3KW0cq4WRfetglyhZgyWeOREu
         Y4Ci4nMeG8aUwQ8V3fmo2yDOIaM9rDSSYWvifSuQ0o3u0w0jcGDHzRjKGp1uWQxVWBiu
         Mf643WnxQC6cXjGYNHlCcEH6EQ8RUVlYCA/RSK9v833XTzuvV6KWUjg63uMwnz/5zl5f
         tMsh+hR0HFOGdKO058JWAvguTi9iUaV79NoXA98Npxhm4iqsj6F0wC+QubySs7A54PaK
         CEFz1UtkdWMzAXy1BoORETMrVTog/LyqztxKkTyV3mKr9Urw0puyWsZJiwOOArvgp/hb
         G0Hw==
X-Gm-Message-State: AOAM531z+a0dg0Nq42qcgH52hKgLYOrGLv6wlR77H84k2ChU8BzjkPnS
	Ry6HsuABZp4y8pdol5oMs4g=
X-Google-Smtp-Source: ABdhPJyk9G2/y/Hf+ZHCznnLeL42yGOM+HuM5Ck1EeVau0yM92llxUo1T83wtG/U9TZNua3xAfbIyA==
X-Received: by 2002:a17:907:7ba3:: with SMTP id ne35mr1256453ejc.100.1644583813083;
        Fri, 11 Feb 2022 04:50:13 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:12 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:47 +0100
Message-Id: <20220211125003.918447-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 6ZGTXTFK6J6VCPYJKMFZFPUTD5J4B4SZ
X-Message-ID-Hash: 6ZGTXTFK6J6VCPYJKMFZFPUTD5J4B4SZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/23] drm/vmwgfx: stop using dma_resv_excl_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6ZGTXTFK6J6VCPYJKMFZFPUTD5J4B4SZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SW5zdGVhZCB1c2UgdGhlIG5ldyBkbWFfcmVzdl9nZXRfc2luZ2xldG9uIGZ1bmN0aW9uLg0KDQpT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCkNj
OiBWTXdhcmUgR3JhcGhpY3MgPGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJAdm13YXJlLmNvbT4N
CkNjOiBaYWNrIFJ1c2luIDx6YWNrckB2bXdhcmUuY29tPg0KLS0tDQogZHJpdmVycy9ncHUvZHJt
L3Ztd2dmeC92bXdnZnhfcmVzb3VyY2UuYyB8IDYgKysrKy0tDQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS92bXdnZngvdm13Z2Z4X3Jlc291cmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Zt
d2dmeF9yZXNvdXJjZS5jDQppbmRleCA3MDg4OTliYTIxMDIuLjM2YzNiNWRiN2U2OSAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3Jlc291cmNlLmMNCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3Jlc291cmNlLmMNCkBAIC0xMTY1LDggKzExNjUs
MTAgQEAgaW50IHZtd19yZXNvdXJjZXNfY2xlYW4oc3RydWN0IHZtd19idWZmZXJfb2JqZWN0ICp2
Ym8sIHBnb2ZmX3Qgc3RhcnQsDQogCQl2bXdfYm9fZmVuY2Vfc2luZ2xlKGJvLCBOVUxMKTsNCiAJ
CWlmIChiby0+bW92aW5nKQ0KIAkJCWRtYV9mZW5jZV9wdXQoYm8tPm1vdmluZyk7DQotCQliby0+
bW92aW5nID0gZG1hX2ZlbmNlX2dldA0KLQkJCShkbWFfcmVzdl9leGNsX2ZlbmNlKGJvLT5iYXNl
LnJlc3YpKTsNCisNCisJCS8qIFRPRE86IFRoaXMgaXMgYWN0dWFsbHkgYSBtZW1vcnkgbWFuYWdl
bWVudCBkZXBlbmRlbmN5ICovDQorCQlyZXR1cm4gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihiby0+
YmFzZS5yZXN2LCBmYWxzZSwNCisJCQkJCSAgICAgICZiby0+bW92aW5nKTsNCiAJfQ0KIA0KIAly
ZXR1cm4gMDsNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

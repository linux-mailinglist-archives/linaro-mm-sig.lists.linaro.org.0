Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0292E51D771
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 14:19:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C5BC480AB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 12:19:38 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id 9DDD83EF16
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 May 2022 12:19:24 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id ba17so8500215edb.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 May 2022 05:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gw+JFAcwV3LYOtoVEBzH/GU+okaaN9vbA9zy45UpJ08=;
        b=dUioiDLCuTiNrAfnUKVffNbnmi6Rbx3sK+QskZ8D4QnrnA1pHSsoMub6ExdGalUg+D
         0DroB91igxbDsB9w33ElH9vwFU/9fiMu50XhQGB3rRtnhBqije7UYEQ74J6XbdqhNoID
         9LLrk4Y84r8EOc8XPb+6sLwQwJDzvzrRMSF99QO5Eo95Yh3Kv3y/ZXkTvcnfsqRjoK9K
         uuEUy0tHcLYRxyo4Md5Z8FD2Il5LZWYWTLeujn6kiEFb82Dd/fXqtYJQ3rQgCBOPSIis
         Dk+vB2l2XSc+FecxU9cb07MXW/4EZ8I+4amo3jaT2AyBuhAeHwi4/Qp2V+QzPR/ERFUG
         fUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gw+JFAcwV3LYOtoVEBzH/GU+okaaN9vbA9zy45UpJ08=;
        b=GX3SYXoPtuV8SJl2iJyuH87OSYkwZj1UoGZpQ17u0f21g0N0VPE6xAAFOHNREkJU+x
         0HjuN4y+3j2i15N9WJ+X9VkCoCyoKGrD+zXEibu23uKWNqgfAgzFCGmS4lQsDrJW5AeI
         oVi+wq1eWv+ECuIYdAqZuu/7cTsh3YvmJJjaWXGHcTStQoMv3HHA49wy0nB1yJBFMgZb
         /+7sta8eFaRPAc18VWnsJKcPIVUwSd59m14WGe89voH/3B9/Tez98Cyc7kL3BbVxQfhi
         Jcs9Z6/5BKWyHfg9o23IcJjlbokAV40v9j8Ru2W+jnujoqav0LT4lczUW3NvE+CJ+o2K
         xBqw==
X-Gm-Message-State: AOAM533INUuoS50rdM9NL8sRjAWlTYuuf8fFSv0BPIMBBn2XydJKk7g8
	ocKNxznxv+AmECO3u4bcBgk=
X-Google-Smtp-Source: ABdhPJxUrW2yXPfX2A0Z1fxb844AsNjgW08c+V4zlDQzY2fO8CFzGO+xbhgNkGScjSKQVFJWzOhFaw==
X-Received: by 2002:a05:6402:364:b0:425:f88d:7d4a with SMTP id s4-20020a056402036400b00425f88d7d4amr3252102edw.68.1651839564305;
        Fri, 06 May 2022 05:19:24 -0700 (PDT)
Received: from able.fritz.box (p57b0b3fd.dip0.t-ipconnect.de. [87.176.179.253])
        by smtp.gmail.com with ESMTPSA id jl27-20020a17090775db00b006f3ef214e63sm1874445ejc.201.2022.05.06.05.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 05:19:23 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	linaro-mm-sig@lists.linaro.org
Date: Fri,  6 May 2022 14:19:18 +0200
Message-Id: <20220506121920.1410-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506121920.1410-1-christian.koenig@amd.com>
References: <20220506121920.1410-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: MOFKW6O3WGRWPOXSWQIAEHF3HRSUOJTV
X-Message-ID-Hash: MOFKW6O3WGRWPOXSWQIAEHF3HRSUOJTV
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MOFKW6O3WGRWPOXSWQIAEHF3HRSUOJTV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZG1hX2ZlbmNlX2NoYWluIGNvbnRhaW5lcnMgY2xlYW51cCBzaWduYWxlZCBmZW5jZXMgYXV0b21h
dGljYWxseSwgc28NCmZpbHRlciB0aG9zZSBvdXQgZnJvbSBhcnJheXMgYXMgd2VsbC4NCg0KdjI6
IGZpeCBtaXNzaW5nIHdhbGsgb3ZlciB0aGUgYXJyYXkNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS11bndyYXAuYyB8IDI2ICsrKysrKysrKysrKysrKysrKystLS0tLS0tDQog
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggICB8ICA0ICsrLS0NCiAyIGZpbGVzIGNo
YW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS11bndyYXAuYw0KaW5kZXggNzExYmUxMjU0MjhjLi5jM2JlZGJjNTgzMmEgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQorKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQpAQCAtMzIsOCArMzIsMTMgQEAgX19kbWFfZmVuY2Vf
dW53cmFwX2FycmF5KHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJzb3IpDQogc3RydWN0IGRt
YV9mZW5jZSAqZG1hX2ZlbmNlX3Vud3JhcF9maXJzdChzdHJ1Y3QgZG1hX2ZlbmNlICpoZWFkLA0K
IAkJCQkJIHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJzb3IpDQogew0KKwlzdHJ1Y3QgZG1h
X2ZlbmNlICp0bXA7DQorDQogCWN1cnNvci0+Y2hhaW4gPSBkbWFfZmVuY2VfZ2V0KGhlYWQpOw0K
LQlyZXR1cm4gX19kbWFfZmVuY2VfdW53cmFwX2FycmF5KGN1cnNvcik7DQorCXRtcCA9IF9fZG1h
X2ZlbmNlX3Vud3JhcF9hcnJheShjdXJzb3IpOw0KKwlpZiAodG1wICYmIGRtYV9mZW5jZV9pc19z
aWduYWxlZCh0bXApKQ0KKwkJdG1wID0gZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcik7DQor
CXJldHVybiB0bXA7DQogfQ0KIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9mZW5jZV91bndyYXBfZmly
c3QpOw0KIA0KQEAgLTQ4LDEyICs1MywxOSBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2Vf
dW53cmFwX25leHQoc3RydWN0IGRtYV9mZW5jZV91bndyYXAgKmN1cnNvcikNCiB7DQogCXN0cnVj
dCBkbWFfZmVuY2UgKnRtcDsNCiANCi0JKytjdXJzb3ItPmluZGV4Ow0KLQl0bXAgPSBkbWFfZmVu
Y2VfYXJyYXlfbmV4dChjdXJzb3ItPmFycmF5LCBjdXJzb3ItPmluZGV4KTsNCi0JaWYgKHRtcCkN
Ci0JCXJldHVybiB0bXA7DQorCWRvIHsNCisJCWRvIHsNCisJCQkrK2N1cnNvci0+aW5kZXg7DQor
CQkJdG1wID0gZG1hX2ZlbmNlX2FycmF5X25leHQoY3Vyc29yLT5hcnJheSwNCisJCQkJCQkgICBj
dXJzb3ItPmluZGV4KTsNCisJCQlpZiAodG1wICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWQodG1w
KSkNCisJCQkJcmV0dXJuIHRtcDsNCisJCX0gd2hpbGUgKHRtcCk7DQorDQorCQljdXJzb3ItPmNo
YWluID0gZG1hX2ZlbmNlX2NoYWluX3dhbGsoY3Vyc29yLT5jaGFpbik7DQorCQl0bXAgPSBfX2Rt
YV9mZW5jZV91bndyYXBfYXJyYXkoY3Vyc29yKTsNCisJfSB3aGlsZSAodG1wICYmIGRtYV9mZW5j
ZV9pc19zaWduYWxlZCh0bXApKTsNCiANCi0JY3Vyc29yLT5jaGFpbiA9IGRtYV9mZW5jZV9jaGFp
bl93YWxrKGN1cnNvci0+Y2hhaW4pOw0KLQlyZXR1cm4gX19kbWFfZmVuY2VfdW53cmFwX2FycmF5
KGN1cnNvcik7DQorCXJldHVybiB0bXA7DQogfQ0KIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9mZW5j
ZV91bndyYXBfbmV4dCk7DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53
cmFwLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaA0KaW5kZXggZTdjMjE5ZGE0
ZWQ3Li5lOWQxMTQ2MzcyOTQgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11
bndyYXAuaA0KKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCkBAIC00MSw4
ICs0MSw4IEBAIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV91bndyYXBfbmV4dChzdHJ1Y3Qg
ZG1hX2ZlbmNlX3Vud3JhcCAqY3Vyc29yKTsNCiAgKiBAaGVhZDogc3RhcnRpbmcgcG9pbnQgZm9y
IHRoZSBpdGVyYXRvcg0KICAqDQogICogVW53cmFwIGRtYV9mZW5jZV9jaGFpbiBhbmQgZG1hX2Zl
bmNlX2FycmF5IGNvbnRhaW5lcnMgYW5kIGRlZXAgZGl2ZSBpbnRvIGFsbA0KLSAqIHBvdGVudGlh
bCBmZW5jZXMgaW4gdGhlbS4gSWYgQGhlYWQgaXMganVzdCBhIG5vcm1hbCBmZW5jZSBvbmx5IHRo
YXQgb25lIGlzDQotICogcmV0dXJuZWQuDQorICogcG90ZW50aWFsIG5vbmUgc2lnbmFsZWQgZmVu
Y2VzIGluIHRoZW0uIElmIEBoZWFkIGlzIGp1c3QgYSBub3JtYWwgZmVuY2Ugb25seQ0KKyAqIHRo
YXQgb25lIGlzIHJldHVybmVkLg0KICAqLw0KICNkZWZpbmUgZG1hX2ZlbmNlX3Vud3JhcF9mb3Jf
ZWFjaChmZW5jZSwgY3Vyc29yLCBoZWFkKQkJCVwNCiAJZm9yIChmZW5jZSA9IGRtYV9mZW5jZV91
bndyYXBfZmlyc3QoaGVhZCwgY3Vyc29yKTsgZmVuY2U7CVwNCi0tIA0KMi4yNS4xDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=

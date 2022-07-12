Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C45C9571750
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 12:28:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8397741093
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Jul 2022 10:28:57 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id 9ED103F4A1
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 10:28:52 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id oy13so8632068ejb.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Jul 2022 03:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9EL4uc2GNr9WKPYdUaDRndHBqgmHq7u3C8hTHLq2e30=;
        b=YiRc9+LOrD1GMrizBdS2PYQ/qFnCY1epAi+IP4WrCuSgTufRlRAZCD9fKbA+/KPR/s
         mnh9K4KSTw4gsdtm2qKe5RUQ5Iw3bAEfPlXGlpjnwHxhBfobYhLM+5Aar3oYmwaAnT4G
         I0q4oW3fLuGYdn8YY1wLSVBrzy6dIYFy8RHSuUX7fnTUJQUc1zpKj/YdDY3BkcRR0pr1
         vLWA2MrtnT7FnK3ANzN4CSDkuDreBWky90YlJ6mvVaDyuCcC11QXUpS7VOaPUl5KYlFt
         PIGxTCtoYUp6xGAtW9EUAfN21O0ZF47e8mxgYrP+V7utJHHRsmZIlqCkECgAJW/VPkZ8
         G+Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9EL4uc2GNr9WKPYdUaDRndHBqgmHq7u3C8hTHLq2e30=;
        b=D2+tqp2SxAn5TB21Zb/2Hr4wgKGR9yfrlESh2xo3XCZYIXbzcl1ndQsLdJUJFjVRk8
         KFxO34gnvMO9MFwSh3vNUPo4bJvVuAemJ+CteiOjZsAUrZWXZvGAL/Sl3eT983MoIK1E
         qr8234kVGOYRVi/LoeC7N/xB2HAPoUkjXIJVvIOtKOpXwkiJZVMnXbCF0iFgInUBgBVa
         1hXFC2wjvCK6gkhoAkrMm6AHibdX5blk6hyEFw8cs3hVJOFGPj88ABl6pcAJGIMmWusi
         43zNLw+Uireo1OVjaYU8G+MMPwGEkdSG6RpcPpn/mYveW1fAiCwr99D8F6c89b2WWBV1
         awKQ==
X-Gm-Message-State: AJIora/hXmh8azSOlcjRxm04BYFSap+vi90b1yaMkjPO9VmMH2cyHcOV
	urGURfb5pK5tUbNm+ucX7Oc=
X-Google-Smtp-Source: AGRyM1u8EGwzFvXheiDLWV5f6fOamncJ1eS/rHiYb+aMaChi6Tr+nA9yDejxa9G4mZ+O4NUNhNBYgQ==
X-Received: by 2002:a17:906:8a6a:b0:72b:552e:67f0 with SMTP id hy10-20020a1709068a6a00b0072b552e67f0mr9569935ejc.733.1657621731677;
        Tue, 12 Jul 2022 03:28:51 -0700 (PDT)
Received: from able.fritz.box (p57b0bd9f.dip0.t-ipconnect.de. [87.176.189.159])
        by smtp.gmail.com with ESMTPSA id o23-20020a170906769700b0072b3391193dsm3634028ejm.154.2022.07.12.03.28.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 03:28:51 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: karolina.drobnik@intel.com,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jul 2022 12:28:49 +0200
Message-Id: <20220712102849.1562-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: WDH3ENR6A44BYYHN6SXDXFKT4TKGNK7O
X-Message-ID-Hash: WDH3ENR6A44BYYHN6SXDXFKT4TKGNK7O
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WDH3ENR6A44BYYHN6SXDXFKT4TKGNK7O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyByZXZlcnRzIGNvbW1pdCA4ZjYxOTczNzE4NDg1ZjNlODliYzRmNDA4ZjkyOTA0OGI3YjQ3
YzgzLg0KDQpJdCB0dXJuZWQgb3V0IHRoYXQgdGhpcyBpcyBub3QgY29ycmVjdC4gRXNwZWNpYWxs
eSB0aGUgc3luY19maWxlIGluZm8NCklPQ1RMIG5lZWRzIHRvIHNlZSBldmVuIHNpZ25hbGVkIGZl
bmNlcyB0byBjb3JyZWN0bHkgcmVwb3J0IGJhY2sgdGhlaXINCnN0YXR1cyB0byB1c2Vyc3BhY2Uu
DQoNCkluc3RlYWQgYWRkIHRoZSBmaWx0ZXIgaW4gdGhlIG1lcmdlIGZ1bmN0aW9uIGFnYWluIHdo
ZXJlIGl0IG1ha2VzIHNlbnNlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LXVud3JhcC5jIHwgMyArKy0NCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCAgIHwg
NiArLS0tLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXVud3JhcC5jDQppbmRleCA1MDJhNjVlYTZkNDQuLjcw
MDJiY2E3OTJmZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFw
LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCkBAIC03Miw3ICs3
Miw4IEBAIHN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vud3JhcF9tZXJnZSh1bnNpZ25l
ZCBpbnQgbnVtX2ZlbmNlcywNCiAJY291bnQgPSAwOw0KIAlmb3IgKGkgPSAwOyBpIDwgbnVtX2Zl
bmNlczsgKytpKSB7DQogCQlkbWFfZmVuY2VfdW53cmFwX2Zvcl9lYWNoKHRtcCwgJml0ZXJbaV0s
IGZlbmNlc1tpXSkNCi0JCQkrK2NvdW50Ow0KKwkJCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVk
KHRtcCkpDQorCQkJCSsrY291bnQ7DQogCX0NCiANCiAJaWYgKGNvdW50ID09IDApDQpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggYi9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS11bndyYXAuaA0KaW5kZXggMzkwZGUxZWU5ZDM1Li42NmIxZTU2ZmJiODEgMTAwNjQ0
DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaA0KKysrIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCkBAIC00MywxNCArNDMsMTAgQEAgc3RydWN0IGRtYV9m
ZW5jZSAqZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwICpjdXJz
b3IpOw0KICAqIFVud3JhcCBkbWFfZmVuY2VfY2hhaW4gYW5kIGRtYV9mZW5jZV9hcnJheSBjb250
YWluZXJzIGFuZCBkZWVwIGRpdmUgaW50byBhbGwNCiAgKiBwb3RlbnRpYWwgZmVuY2VzIGluIHRo
ZW0uIElmIEBoZWFkIGlzIGp1c3QgYSBub3JtYWwgZmVuY2Ugb25seSB0aGF0IG9uZSBpcw0KICAq
IHJldHVybmVkLg0KLSAqDQotICogTm90ZSB0aGF0IHNpZ25hbGxlZCBmZW5jZXMgYXJlIG9wcG9y
dHVuaXN0aWNhbGx5IGZpbHRlcmVkIG91dCwgd2hpY2gNCi0gKiBtZWFucyB0aGUgaXRlcmF0aW9u
IGlzIHBvdGVudGlhbGx5IG92ZXIgbm8gZmVuY2UgYXQgYWxsLg0KICAqLw0KICNkZWZpbmUgZG1h
X2ZlbmNlX3Vud3JhcF9mb3JfZWFjaChmZW5jZSwgY3Vyc29yLCBoZWFkKQkJCVwNCiAJZm9yIChm
ZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfZmlyc3QoaGVhZCwgY3Vyc29yKTsgZmVuY2U7CVwNCi0J
ICAgICBmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfbmV4dChjdXJzb3IpKQkJCVwNCi0JCWlmICgh
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkNCisJICAgICBmZW5jZSA9IGRtYV9mZW5jZV91
bndyYXBfbmV4dChjdXJzb3IpKQ0KIA0KIHN0cnVjdCBkbWFfZmVuY2UgKl9fZG1hX2ZlbmNlX3Vu
d3JhcF9tZXJnZSh1bnNpZ25lZCBpbnQgbnVtX2ZlbmNlcywNCiAJCQkJCSAgIHN0cnVjdCBkbWFf
ZmVuY2UgKipmZW5jZXMsDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

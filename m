Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4B65104CB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 19:00:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26F994800B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 17:00:54 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 19EDB3EFCB
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 17:00:48 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id n32-20020a05600c3ba000b00393ea7192faso1980534wms.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 10:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VRXpIchH9YdU1da8XhTk+Hd+H0itPA9JgyDMdUY39zI=;
        b=ICCfinvqRuhEMo1acsCySqoZ+mt2J78Zb9sjoGr7/JCExf7fi9cFYhJj50I2iwgWFa
         3+XLYBGwijNpxZSCtt1FSMsoc+uM8RROF4ZTNspD5K2TQuDQ8EQrvGHARKVo8PDgoSos
         66tozFAwCRKLgb2/kkhN/LXBp1BON5nf+4fwvc9UIngYuoD/iC5i7tOaoi92qqqJfiHv
         UwrJCa6vE9HDxhZ7P/b0MdLJwEBhSrndqGgLp0c95U04+0NAt2hrrHfPrXkVEOJSNuw9
         uGJ6yLQpqnugEge67ohBY2B4UBq9YQs5gS7XKCwSAKucheI5sk6nKI2hSaFnDaaThY2D
         BRwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VRXpIchH9YdU1da8XhTk+Hd+H0itPA9JgyDMdUY39zI=;
        b=7YfN/6ImLfTpFDGqYwYQDrFb0NFNrt9qFEBW1fqISAAGKnkNunRkbFZKtFiyBj8x5h
         I+HK/CKwa1yuo28XXqLkkc8BGLAoZQQ6xd+pxXDBnZSjNgDrxyRARgLSVqXqV2EEztJT
         63nqNqprXrAbWWjgVrR6mAu+QIcUa2p89lmfxNCrdb37u9MHbZole41PNGWypeuLqrPj
         momS1yR/ff1Qz2La3JoBTX2jRTfxI/AAKzdYL23IIWd+kKHZy8Z8EGaCGw9GgA84ArEB
         /hBPVpN9amzhMQ+ZYEmpVbneTHdUx0v94hYvpIE3IGHtZcS3xoMF9xAP38svF+mE3B3Z
         6FuQ==
X-Gm-Message-State: AOAM533cQMndEhL4OxHg2Q+FlBUXsQvnkMVH6AbAcudzepNymj1Thuqp
	k6v3REP2CxOxa6Sd8LXHGZ3ffjR3/xU=
X-Google-Smtp-Source: ABdhPJwrVU+Hbo3q1YlzZcaTM3Yc9CkRjM+fZxbLxmsyCZjWxmYNt4TxRPNfn9p+uDRKyiOVUe7w6w==
X-Received: by 2002:a05:600c:4e01:b0:392:aa5d:6093 with SMTP id b1-20020a05600c4e0100b00392aa5d6093mr31183928wmq.114.1650992447065;
        Tue, 26 Apr 2022 10:00:47 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id o9-20020adf8b89000000b0020adeb916d8sm4685957wra.30.2022.04.26.10.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 10:00:46 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org
Date: Tue, 26 Apr 2022 19:00:44 +0200
Message-Id: <20220426170044.29454-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Message-ID-Hash: M445YHH66CJNSEMQ5RZEE3WXC23YFRIK
X-Message-ID-Hash: M445YHH66CJNSEMQ5RZEE3WXC23YFRIK
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, gustavo@padovan.org, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: remove trace_dma_fence_emit
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M445YHH66CJNSEMQ5RZEE3WXC23YFRIK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlcmUgd2FzIG5ldmVyIGFueSBzaWduaWZpY2FudCBkaWZmZXJlbmNlIGJldHdlZW4gdHJhY2Vf
ZG1hX2ZlbmNlX2VtaXQoKQ0KYW5kIHRyYWNlX2RtYV9mZW5jZV9pbml0KCkgYW5kIHRoZSBvbmx5
IHBsYWNlIHdoZXJlIGl0IHdvdWxkIG1hZGUgYQ0Kc2lnbmlmaWNhbnQgZGlmZmVyZW5jZSB3YXMg
bmV2ZXIgaW1wbGVtZW50ZWQuDQoNClNvIHJlbW92ZSB0cmFjZV9kbWFfZmVuY2VfZW1pdCgpIHNp
bmNlIHdlIGhhdmUgYW4gcmVwZWF0aW5nIGlzc3VlIHRoYXQNCnBlb3BsZSBhcmUgdHJ5aW5nIHRv
IHVzZSBpdCBmb3IgdmlzdWFsaXphdGlvbiBhbmQgYXJlIHN1cnByaXNlZCB0aGF0DQppdCBhY3R1
YWxseSBkb2Vzbid0IHdvcmsgZm9yIG1vc3QgZHJpdmVycy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS5jICAgICAgICAgICAgIHwgMSAtDQogZHJpdmVycy9ncHUvZHJtL25v
dXZlYXUvbm91dmVhdV9mZW5jZS5jIHwgMSAtDQogZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVs
ZWFzZS5jICAgICAgIHwgMSAtDQogZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2ZlbmNl
LmMgIHwgMiAtLQ0KIGluY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oICAgICAgICB8IDcg
LS0tLS0tLQ0KIDUgZmlsZXMgY2hhbmdlZCwgMTIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMNCmluZGV4IDA2NjQwMGVkODg0MS4uZDBkNzA0ZjNlZGFlIDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMN
CkBAIC0yMCw3ICsyMCw2IEBADQogI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRTDQogI2luY2x1
ZGUgPHRyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaD4NCiANCi1FWFBPUlRfVFJBQ0VQT0lOVF9TWU1C
T0woZG1hX2ZlbmNlX2VtaXQpOw0KIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2Vf
ZW5hYmxlX3NpZ25hbCk7DQogRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9zaWdu
YWxlZCk7DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9m
ZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jDQppbmRleCA3
ZjAxZGNmODFmYWIuLmFiY2FjN2RiNDM0NyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9u
b3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9mZW5jZS5jDQpAQCAtMjI0LDcgKzIyNCw2IEBAIG5vdXZlYXVfZmVuY2VfZW1pdChzdHJ1
Y3Qgbm91dmVhdV9mZW5jZSAqZmVuY2UsIHN0cnVjdCBub3V2ZWF1X2NoYW5uZWwgKmNoYW4pDQog
CQkJICAgICAgICZmY3R4LT5sb2NrLCBmY3R4LT5jb250ZXh0LCArK2ZjdHgtPnNlcXVlbmNlKTsN
CiAJa3JlZl9nZXQoJmZjdHgtPmZlbmNlX3JlZik7DQogDQotCXRyYWNlX2RtYV9mZW5jZV9lbWl0
KCZmZW5jZS0+YmFzZSk7DQogCXJldCA9IGZjdHgtPmVtaXQoZmVuY2UpOw0KIAlpZiAoIXJldCkg
ew0KIAkJZG1hX2ZlbmNlX2dldCgmZmVuY2UtPmJhc2UpOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9xeGwvcXhsX3JlbGVhc2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX3JlbGVh
c2UuYw0KaW5kZXggMzY4ZDI2ZGEwZDZhLi5jYjlmMjc3NzFmMzIgMTAwNjQ0DQotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwv
cXhsX3JlbGVhc2UuYw0KQEAgLTQyNCw3ICs0MjQsNiBAQCB2b2lkIHF4bF9yZWxlYXNlX2ZlbmNl
X2J1ZmZlcl9vYmplY3RzKHN0cnVjdCBxeGxfcmVsZWFzZSAqcmVsZWFzZSkNCiAJICovDQogCWRt
YV9mZW5jZV9pbml0KCZyZWxlYXNlLT5iYXNlLCAmcXhsX2ZlbmNlX29wcywgJnFkZXYtPnJlbGVh
c2VfbG9jaywNCiAJCSAgICAgICByZWxlYXNlLT5pZCB8IDB4ZjAwMDAwMDAsIHJlbGVhc2UtPmJh
c2Uuc2Vxbm8pOw0KLQl0cmFjZV9kbWFfZmVuY2VfZW1pdCgmcmVsZWFzZS0+YmFzZSk7DQogDQog
CWxpc3RfZm9yX2VhY2hfZW50cnkoZW50cnksICZyZWxlYXNlLT5ib3MsIGhlYWQpIHsNCiAJCWJv
ID0gZW50cnktPmJvOw0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdw
dV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X2ZlbmNlLmMNCmluZGV4
IGYyODM1N2RiZGUzNS4uZThiNmRlYzM3OTc3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3ZpcnRpby92aXJ0Z3B1X2ZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmly
dGdwdV9mZW5jZS5jDQpAQCAtMTExLDggKzExMSw2IEBAIHZvaWQgdmlydGlvX2dwdV9mZW5jZV9l
bWl0KHN0cnVjdCB2aXJ0aW9fZ3B1X2RldmljZSAqdmdkZXYsDQogCWxpc3RfYWRkX3RhaWwoJmZl
bmNlLT5ub2RlLCAmZHJ2LT5mZW5jZXMpOw0KIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkcnYt
PmxvY2ssIGlycV9mbGFncyk7DQogDQotCXRyYWNlX2RtYV9mZW5jZV9lbWl0KCZmZW5jZS0+Zik7
DQotDQogCWNtZF9oZHItPmZsYWdzIHw9IGNwdV90b19sZTMyKFZJUlRJT19HUFVfRkxBR19GRU5D
RSk7DQogCWNtZF9oZHItPmZlbmNlX2lkID0gY3B1X3RvX2xlNjQoZmVuY2UtPmZlbmNlX2lkKTsN
CiANCmRpZmYgLS1naXQgYS9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaCBiL2luY2x1
ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQppbmRleCAzOTYzZTc5Y2E3YjQuLmViNzQ0YTZh
Y2E0OSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQorKysg
Yi9pbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfZmVuY2UuaA0KQEAgLTM0LDEzICszNCw2IEBAIERF
Q0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNlLA0KIAkJICBfX2VudHJ5LT5zZXFubykNCiApOw0K
IA0KLURFRklORV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9lbWl0LA0KLQ0KLQlUUF9QUk9U
TyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSksDQotDQotCVRQX0FSR1MoZmVuY2UpDQotKTsNCi0N
CiBERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2VfaW5pdCwNCiANCiAJVFBfUFJPVE8o
c3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

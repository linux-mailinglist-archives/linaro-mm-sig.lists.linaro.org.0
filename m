Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E22F51DA1D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 16:10:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 614C1480A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 May 2022 14:10:36 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by lists.linaro.org (Postfix) with ESMTPS id D388B480A5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 May 2022 14:10:16 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id z2so13133812ejj.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 06 May 2022 07:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uor/OSN0V9/XbNXb0bXHUuU21mNXIEqrRD93g0dLk70=;
        b=eoiL+ehjilJRInz4KyNTGXDjCQxQvktPs+FLWpNcUwyKeUQKgJw/fDS2D/tSkpWUbA
         Rohf/6m7Jzw1fH1g6FZddn4e+W9VMLCIsDeWD8SdUlwu+lT0/ZZPX1d5qyYP6PFIDSWC
         hsaVUcSnhXfrRxyz/r+jBSvvn/cQURk2CMhh2+y6ckzAmQ5m8kR839DkUrBimjoRvrvb
         zTYv5OTLZf0ot4Kgxv8r26ZsNHmRF89/3uSUpV5oa2wocr6q7ryNdjX/dnKVvh60c4FM
         0KCNZwgiEIB+k6IbFDEPYEF9JiuUhU9QAMYV58c9EqPdY7hjON539QWvKSmfArWVKu59
         Zsdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uor/OSN0V9/XbNXb0bXHUuU21mNXIEqrRD93g0dLk70=;
        b=zSQB2D0Ce3huby376ciCMXkhYOkqtiaG4gszMDjzZXwhe87Yv9L073YRylCPKWxN3r
         SkIkWLxM5x1ubs7p/Peaov5yvjYx3d2AtCPDkvGncMymbmm6MOfLNeSDLQfAZ/3TRnMN
         RXNGA90LinuLymiaAMV/bBgVQtbzRXAnJfuHlcI1SGXT1BoD1GwXEuk2LFGk6GJUyzrd
         +OyaCdeCc7METl+e30iPjhifu3T5vhE27HwgXVg3VD8Lf5D0pll25gd66rS6s5LqcerG
         0z+18ehPAKzJpNWKOq4+FzZisLMJkln+zSfaZ3Fykxena+0Q3F2dJAqm8Cl/Z+94ieiJ
         3ysA==
X-Gm-Message-State: AOAM531jL4OnqoOF0YV0VmeWxfyJx+iXeWmVZ8KaPa6K26sWViiI3s4k
	QoR/J+hoVrD2un5P/QdvTl0=
X-Google-Smtp-Source: ABdhPJw0WomOd2Zi74Y+aPH/aOxK84ThKgGGj5r4wdVbJ1uFjWwbpufh7/uae4oFmdyMYrcgcVj8mQ==
X-Received: by 2002:a17:906:2b06:b0:6f4:7e76:c855 with SMTP id a6-20020a1709062b0600b006f47e76c855mr3193765ejg.78.1651846215956;
        Fri, 06 May 2022 07:10:15 -0700 (PDT)
Received: from able.fritz.box (p57b0b3fd.dip0.t-ipconnect.de. [87.176.179.253])
        by smtp.gmail.com with ESMTPSA id jx3-20020a170907760300b006f3ef214e22sm1915415ejc.136.2022.05.06.07.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:10:15 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	linaro-mm-sig@lists.linaro.org,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org
Date: Fri,  6 May 2022 16:10:09 +0200
Message-Id: <20220506141009.18047-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506141009.18047-1-christian.koenig@amd.com>
References: <20220506141009.18047-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: XMQPXCI73GAZRNPSXTGUPKRUKR7UIZ3E
X-Message-ID-Hash: XMQPXCI73GAZRNPSXTGUPKRUKR7UIZ3E
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/5] drm: use dma_fence_unwrap_merge() in drm_syncobj
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XMQPXCI73GAZRNPSXTGUPKRUKR7UIZ3E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHVud3JhcCBtZXJnZSBmdW5jdGlvbiBpcyBub3cgaW50ZW5kZWQgZm9yIHRoaXMgdXNlIGNh
c2UuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NClJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMgfCA1NyArKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDUwIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9z
eW5jb2JqLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNvYmouYw0KaW5kZXggN2U0OGRjZDFi
ZWU0Li5iYmFkOWU0Njk2ZTcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5bmNv
YmouYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zeW5jb2JqLmMNCkBAIC0xODQsNiArMTg0
LDcgQEANCiAgKi8NCiANCiAjaW5jbHVkZSA8bGludXgvYW5vbl9pbm9kZXMuaD4NCisjaW5jbHVk
ZSA8bGludXgvZG1hLWZlbmNlLXVud3JhcC5oPg0KICNpbmNsdWRlIDxsaW51eC9maWxlLmg+DQog
I2luY2x1ZGUgPGxpbnV4L2ZzLmg+DQogI2luY2x1ZGUgPGxpbnV4L3NjaGVkL3NpZ25hbC5oPg0K
QEAgLTg1Myw1NyArODU0LDEyIEBAIGRybV9zeW5jb2JqX2ZkX3RvX2hhbmRsZV9pb2N0bChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KIAkJCQkJJmFyZ3MtPmhhbmRsZSk7DQog
fQ0KIA0KLQ0KLS8qDQotICogVHJ5IHRvIGZsYXR0ZW4gYSBkbWFfZmVuY2VfY2hhaW4gaW50byBh
IGRtYV9mZW5jZV9hcnJheSBzbyB0aGF0IGl0IGNhbiBiZQ0KLSAqIGFkZGVkIGFzIHRpbWVsaW5l
IGZlbmNlIHRvIGEgY2hhaW4gYWdhaW4uDQotICovDQotc3RhdGljIGludCBkcm1fc3luY29ial9m
bGF0dGVuX2NoYWluKHN0cnVjdCBkbWFfZmVuY2UgKipmKQ0KLXsNCi0Jc3RydWN0IGRtYV9mZW5j
ZV9jaGFpbiAqY2hhaW4gPSB0b19kbWFfZmVuY2VfY2hhaW4oKmYpOw0KLQlzdHJ1Y3QgZG1hX2Zl
bmNlICp0bXAsICoqZmVuY2VzOw0KLQlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheTsNCi0J
dW5zaWduZWQgaW50IGNvdW50Ow0KLQ0KLQlpZiAoIWNoYWluKQ0KLQkJcmV0dXJuIDA7DQotDQot
CWNvdW50ID0gMDsNCi0JZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKHRtcCwgJmNoYWluLT5iYXNl
KQ0KLQkJKytjb3VudDsNCi0NCi0JZmVuY2VzID0ga21hbGxvY19hcnJheShjb3VudCwgc2l6ZW9m
KCpmZW5jZXMpLCBHRlBfS0VSTkVMKTsNCi0JaWYgKCFmZW5jZXMpDQotCQlyZXR1cm4gLUVOT01F
TTsNCi0NCi0JY291bnQgPSAwOw0KLQlkbWFfZmVuY2VfY2hhaW5fZm9yX2VhY2godG1wLCAmY2hh
aW4tPmJhc2UpDQotCQlmZW5jZXNbY291bnQrK10gPSBkbWFfZmVuY2VfZ2V0KHRtcCk7DQotDQot
CWFycmF5ID0gZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShjb3VudCwgZmVuY2VzLA0KLQkJCQkgICAg
ICAgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2MoMSksDQotCQkJCSAgICAgICAxLCBmYWxzZSk7DQot
CWlmICghYXJyYXkpDQotCQlnb3RvIGZyZWVfZmVuY2VzOw0KLQ0KLQlkbWFfZmVuY2VfcHV0KCpm
KTsNCi0JKmYgPSAmYXJyYXktPmJhc2U7DQotCXJldHVybiAwOw0KLQ0KLWZyZWVfZmVuY2VzOg0K
LQl3aGlsZSAoY291bnQtLSkNCi0JCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2NvdW50XSk7DQotDQot
CWtmcmVlKGZlbmNlcyk7DQotCXJldHVybiAtRU5PTUVNOw0KLX0NCi0NCiBzdGF0aWMgaW50IGRy
bV9zeW5jb2JqX3RyYW5zZmVyX3RvX3RpbWVsaW5lKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2
YXRlLA0KIAkJCQkJICAgIHN0cnVjdCBkcm1fc3luY29ial90cmFuc2ZlciAqYXJncykNCiB7DQog
CXN0cnVjdCBkcm1fc3luY29iaiAqdGltZWxpbmVfc3luY29iaiA9IE5VTEw7DQorCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCAqdG1wOw0KIAlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbjsN
Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7DQogCWludCByZXQ7DQogDQogCXRpbWVsaW5lX3N5
bmNvYmogPSBkcm1fc3luY29ial9maW5kKGZpbGVfcHJpdmF0ZSwgYXJncy0+ZHN0X2hhbmRsZSk7
DQpAQCAtOTEyLDEzICs4NjgsMTQgQEAgc3RhdGljIGludCBkcm1fc3luY29ial90cmFuc2Zlcl90
b190aW1lbGluZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdmF0ZSwNCiAJfQ0KIAlyZXQgPSBk
cm1fc3luY29ial9maW5kX2ZlbmNlKGZpbGVfcHJpdmF0ZSwgYXJncy0+c3JjX2hhbmRsZSwNCiAJ
CQkJICAgICBhcmdzLT5zcmNfcG9pbnQsIGFyZ3MtPmZsYWdzLA0KLQkJCQkgICAgICZmZW5jZSk7
DQorCQkJCSAgICAgJnRtcCk7DQogCWlmIChyZXQpDQogCQlnb3RvIGVycl9wdXRfdGltZWxpbmU7
DQogDQotCXJldCA9IGRybV9zeW5jb2JqX2ZsYXR0ZW5fY2hhaW4oJmZlbmNlKTsNCi0JaWYgKHJl
dCkNCi0JCWdvdG8gZXJyX2ZyZWVfZmVuY2U7DQorCWZlbmNlID0gZG1hX2ZlbmNlX3Vud3JhcF9t
ZXJnZSh0bXApOw0KKwlkbWFfZmVuY2VfcHV0KHRtcCk7DQorCWlmICghZmVuY2UpDQorCQlnb3Rv
IGVycl9wdXRfdGltZWxpbmU7DQogDQogCWNoYWluID0gZG1hX2ZlbmNlX2NoYWluX2FsbG9jKCk7
DQogCWlmICghY2hhaW4pIHsNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

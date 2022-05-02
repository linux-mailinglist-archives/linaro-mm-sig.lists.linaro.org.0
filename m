Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A5451748E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:38:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7F12A48045
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:38:10 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 96E5648052
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:38 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id bg25so8558404wmb.4
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8ZMKLCUiF3qKPGX/LGoVOBpR7s+bcNprDSVbEKMvDkc=;
        b=Jp7rT8vS95BqwTwX7NsyZ5WkldjBFw8Wz1EkLvh1Kl2SA7MHWkTMAB/rlyQ3KG3v4n
         buaPRJHFD0KPGI8tMR5ZQmAJny9w7VO31u5URg4N9aYxcHt3yYR2stvowos66Dafzc2R
         3vTOVGi+0LX1bRYlQACKn/Zv6gGPcd0zBwNjLgreQSpTZ1cJcFxMV1L2ezXr9Bp+hAbF
         CYYeoR+j4rklzzf+0vktNuMIo08df2EbJ8QT/EMWxsB2gNQ1450/d8uKroUbIuTT72TR
         GKK30kzV7V6ez2UkLqtwV66X4u7OoxdVRtBdcSmSgG25aLXPkCDOg4oINsKYw8CZSnQM
         hWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8ZMKLCUiF3qKPGX/LGoVOBpR7s+bcNprDSVbEKMvDkc=;
        b=TBcy6deKopPdRT1+JABSEdd2BPYTzPWzJjuytqrgxZFPuY3KjE9KrGWrGpSC+3bXGO
         yuzUIkDb6ouf35LKxduQFIiF4+GXTFwQCMhTeKy/H64ShBTCUf/jP80fQ2HKRuSwO0BR
         Csdjz6vCb93OnkYIf3gRLw08naoKoJuRo9GRQukam6PT0Xe7+idePQ4Mqd1VxtYI44bo
         sGVp7yDITyvIO7GbsRelqqqDUnxK2yIuNTxy2SWiv7jNX7YvRX1tlvdaSRrTLEU4W8nL
         NskVbdiAUarXje/1j0/hNYLk0llgYOnZFT4QveYmuN98bVAyDcoWcGmqQfELd+1QQpBq
         4AcQ==
X-Gm-Message-State: AOAM531f3vd2QPYS6dijW6+3vq1P1yB3k5mtwD+cy2z6Un4HDeHtahIf
	WDL2GQH27QS4n9xM5D77b9g=
X-Google-Smtp-Source: ABdhPJxHqWm8EIEp8tsJmKMJ1X16WfhjsyQ0RVhMr8rBHA2/S+1qvIoC83uW/mXOKYOKnHyqwvoRpQ==
X-Received: by 2002:a1c:5459:0:b0:394:1191:a1ff with SMTP id p25-20020a1c5459000000b003941191a1ffmr7038wmi.96.1651509457676;
        Mon, 02 May 2022 09:37:37 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:37 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	jason@jlekstrand.net,
	daniels@collabora.com,
	skhawaja@google.com,
	maad.aldabagh@amd.com,
	sergemetral@google.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	Felix.Kuehling@amd.com,
	alexander.deucher@amd.com,
	tzimmermann@suse.de,
	tvrtko.ursulin@linux.intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon,  2 May 2022 18:37:14 +0200
Message-Id: <20220502163722.3957-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: QAYO3RSRIH3Q4R45OFVWDCTP7REOAGGZ
X-Message-ID-Hash: QAYO3RSRIH3Q4R45OFVWDCTP7REOAGGZ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 07/15] dma-buf: add user fence utility functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QAYO3RSRIH3Q4R45OFVWDCTP7REOAGGZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsb3dzIHRvIGZpbHRlciB1c2VyIGZlbmNlcyBmcm9tIGEgZG1hX2ZlbmNlX2NoYWluIGFuZCB3
YWl0IGZvciB1c2VyDQpmZW5jZXMgaW4gY29udGFpbmVycy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKw0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oICAgfCAgMyArKw0KIDIgZmls
ZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS11bndyYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFw
LmMNCmluZGV4IGRkM2M0M2FiYThmMS4uNGU5ZWRhMGI2NWM1IDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS11bndyYXAuYw0KQEAgLTE1NywzICsxNTcsNTAgQEAgc3RydWN0IGRtYV9mZW5jZSAqX19k
bWFfZmVuY2VfbWVyZ2UodW5zaWduZWQgaW50IG51bV9mZW5jZXMsDQogCXJldHVybiB0bXA7DQog
fQ0KIEVYUE9SVF9TWU1CT0xfR1BMKF9fZG1hX2ZlbmNlX21lcmdlKTsNCisNCisvKioNCisgKiBk
bWFfZmVuY2VfZmlsdGVyX3VzZXIgLSBmaWx0ZXIgdXNlciBmZW5jZXMNCisgKiBAZmVuY2U6IGVu
dHJ5IHBvaW50IGludG8gdGhlIGNoYWluDQorICoNCisgKiBDaGVjayBAZmVuY2UgYW5kIGlmIGl0
J3MgYSBkbWFfZmVuY2VfY2hhaW4gYWR2YW5jZSBpdCB1bnRpbCBpdCBkb2Vzbid0IGRlcGVuZA0K
KyAqIG9uIGFueSB1c2VyIGZlbmNlIGFueSBtb3JlLg0KKyAqDQorICogUmV0dXJucyB0aGUgYWR2
YW5jZWQgZmVuY2Ugb3IgTlVMTCBpZiBubyBub25lIHVzZXIgZmVuY2UgY291bGQgYmUgZm91bmQu
DQorICovDQorc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2ZpbHRlcl91c2VyKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKQ0KK3sNCisNCisJd2hpbGUgKGZlbmNlICYmIHRlc3RfYml0KERNQV9G
RU5DRV9GTEFHX1VTRVIsICZmZW5jZS0+ZmxhZ3MpKQ0KKwkJZmVuY2UgPSBkbWFfZmVuY2VfY2hh
aW5fd2FsayhmZW5jZSk7DQorDQorCXJldHVybiBmZW5jZTsNCit9DQorRVhQT1JUX1NZTUJPTChk
bWFfZmVuY2VfZmlsdGVyX3VzZXIpOw0KKw0KKy8qKg0KKyAqIGRtYV9mZW5jZV93YWl0X3VzZXIg
LSB3YWl0IGZvciBhbGwgdXNlciBmZW5jZXMgdG8gc2lnbmFsDQorICogQGZlbmNlOiBlbnRyeSBw
b2ludA0KKyAqIEB0aW1lb3V0OiB0aW1lb3V0IGZvciB0aGUgd2FpdA0KKyAqDQorICogVW53cmFw
IHRoZSBwb3RlbnRpYWwgY29udGFpbmVyIGluIEBmZW5jZSBhbmQgd2FpdCBmb3IgYWxsIHRoZSB1
c2VyIGZlbmNlcyB0bw0KKyAqIHNpZ25hbC4NCisgKiBSZXR1cm5zOiBFaXRoZXIgbmVnYXRpdmUg
ZXJyb3IgY29kZSBvciB0aGUgcmVtYWluaW5nIHRpbWVvdXQuDQorICovDQorbG9uZyBkbWFfZmVu
Y2Vfd2FpdF91c2VyKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCB1bnNpZ25lZCBsb25nIHRpbWVv
dXQpDQorew0KKwlzdHJ1Y3QgZG1hX2ZlbmNlX3Vud3JhcCBpdGVyOw0KKwlsb25nIHJlczsNCisN
CisJZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFjaChmZW5jZSwgJml0ZXIsIGZlbmNlKSB7DQorCQlp
ZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1VTRVIsICZmZW5jZS0+ZmxhZ3MpKQ0KKwkJCWNv
bnRpbnVlOw0KKw0KKwkJcmVzID0gZG1hX2ZlbmNlX3dhaXQoZmVuY2UsIHRpbWVvdXQpOw0KKwkJ
aWYgKHJlcyA8PSAwKQ0KKwkJCXJldHVybiByZXM7DQorCQlpZiAodGltZW91dCkNCisJCQl0aW1l
b3V0ID0gcmVzOw0KKwl9DQorCXJldHVybiB0aW1lb3V0Ow0KK30NCitFWFBPUlRfU1lNQk9MKGRt
YV9mZW5jZV93YWl0X3VzZXIpOw0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LXVud3JhcC5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCmluZGV4IDdjMGZh
YjMxODMwMS4uMmE3ODZmNWE3ODE5IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UtdW53cmFwLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQpAQCAt
NzIsNCArNzIsNyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpfX2RtYV9mZW5jZV9tZXJnZSh1bnNpZ25l
ZCBpbnQgbnVtX2ZlbmNlcywNCiAJCV9fZG1hX2ZlbmNlX21lcmdlKEFSUkFZX1NJWkUoX19mKSwg
X19mLCBfX2MpOwlcDQogCX0pDQogDQorc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2ZpbHRl
cl91c2VyKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCitsb25nIGRtYV9mZW5jZV93YWl0X3Vz
ZXIoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHVuc2lnbmVkIGxvbmcgdGltZW91dCk7DQorDQog
I2VuZGlmDQotLSANCjIuMjUuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

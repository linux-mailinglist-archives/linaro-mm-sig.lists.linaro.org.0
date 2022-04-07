Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FC74F7AC4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:01:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26F1D402CB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:01:03 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by lists.linaro.org (Postfix) with ESMTPS id 0CD5C402D5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 09:00:03 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id bq8so9390437ejb.10
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 02:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p1oIraT43DCmFRrvIXq7yg7WWW/RZ0K1IMmPkDfaGmk=;
        b=gxb2jkUDiHshrpAACrN19sNyhaZW8zaMZAdWIAdXXvYoFgln4dl0p9Nr7KCuK2R+Fb
         GaPAv1ur7F9tB1n2kqkHjkGj4npKi8Ehn6fw2CCaxVgTYSGl/ALUNIxOWKKsAteiTyiL
         jd0bDttFR2pytU0BOZkwnJSBCX7k59cEow4lKWLfJOtqpNOFHUzsr0tPoweyREkCw35E
         ySMSfZ7uJ8TLzpIqemcdC1JFtqWmeDkmHMieYFRksI/M+zBwj/sLuGT5zzU3rWcqXX8r
         o5UnGCMnnP4pklilV9o/f9fC3lKGIjOraKEZGkbmZby9gquO0Q5LhyKYj4RRvwFYB+V5
         JL+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p1oIraT43DCmFRrvIXq7yg7WWW/RZ0K1IMmPkDfaGmk=;
        b=X6GdUwhhBXcWYB4d+w1NTuJlpCNDqXU9pNUcD7vEhxPSL4CUU7hFTb1Rst7QvqkmSf
         tm8NdJDMttNyVVH++usYwLmiCXXfXV48m1GjS5zE3RaGItteMlvrMiLZ5XJpTm9QTmK5
         Y5oKEHPSXEIAZLXwdaA2h9cIMjbJ8yx1qMT8+Mad+jLoJyXsQfaLHr62qbU866S55F23
         nA+FJogdz+8KNoqMS9YN0d24a88tU7bzs+Wj7k1jrOxFqjAwv8Imp68ceizZ7Kn0rUAJ
         mpqGVwrSMkr1vJoLTptHINL7Tr3lHGB+KCqwASoxC4iVt8QXU3JRgmMEOxrr9PL4ECmM
         +tXg==
X-Gm-Message-State: AOAM5326kbOC9AAf/ENqUE3wUbpKYgFJjUePHLZO3wjqrusG1eJ/b3Jy
	RX1TmP88QTHVjzfn11JuINA=
X-Google-Smtp-Source: ABdhPJwqRJBVrok3a/o+by9pZifIwuF5FAE8Dl4D6Ju8RKNnF7EkALL9A7Cnjh8HPNcfvHwprbRtcg==
X-Received: by 2002:a17:907:1b06:b0:6e7:f58a:9b91 with SMTP id mp6-20020a1709071b0600b006e7f58a9b91mr12640249ejc.291.1649322002116;
        Thu, 07 Apr 2022 02:00:02 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.02.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 02:00:01 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:42 +0200
Message-Id: <20220407085946.744568-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: LQLWQWSAIDES7OOV35TAKFSHWDD3S333
X-Message-ID-Hash: LQLWQWSAIDES7OOV35TAKFSHWDD3S333
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/15] dma-buf: wait for map to complete for static attachments
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LQLWQWSAIDES7OOV35TAKFSHWDD3S333/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgaGF2ZSBwcmV2aW91c2x5IGRvbmUgdGhhdCBpbiB0aGUgaW5kaXZpZHVhbCBkcml2ZXJzIGJ1
dCBpdCBpcw0KbW9yZSBkZWZlbnNpdmUgdG8gbW92ZSB0aGF0IGludG8gdGhlIGNvbW1vbiBjb2Rl
Lg0KDQpEeW5hbWljIGF0dGFjaG1lbnRzIHNob3VsZCB3YWl0IGZvciBtYXAgb3BlcmF0aW9ucyB0
byBjb21wbGV0ZSBieSB0aGVtc2VsdmVzLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRl
ciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgICAgICAgICAgICAgICAgICAgfCAxOCArKysrKysrKysrKysrKystLS0NCiBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgMTQgKy0tLS0tLS0tLS0tLS0NCiBk
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X3ByaW1lLmMgICAgIHwgMTcgKy0tLS0tLS0t
LS0tLS0tLS0NCiBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9wcmltZS5jICAgICAgIHwg
MTYgKysrLS0tLS0tLS0tLS0tLQ0KIDQgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwg
NDUgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KaW5kZXggMWNkZGI2NWVhZmRhLi43OTc5NTg1
N2JlM2UgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtNjYxLDEyICs2NjEsMjQgQEAgc3RhdGljIHN0cnVj
dCBzZ190YWJsZSAqIF9fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoLA0KIAkJCQkgICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQ0KIHsN
CiAJc3RydWN0IHNnX3RhYmxlICpzZ190YWJsZTsNCisJc2lnbmVkIGxvbmcgcmV0Ow0KIA0KIAlz
Z190YWJsZSA9IGF0dGFjaC0+ZG1hYnVmLT5vcHMtPm1hcF9kbWFfYnVmKGF0dGFjaCwgZGlyZWN0
aW9uKTsNCisJaWYgKElTX0VSUl9PUl9OVUxMKHNnX3RhYmxlKSkNCisJCXJldHVybiBzZ190YWJs
ZTsNCisNCisJaWYgKCFkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpKSB7DQor
CQlyZXQgPSBkbWFfcmVzdl93YWl0X3RpbWVvdXQoYXR0YWNoLT5kbWFidWYtPnJlc3YsDQorCQkJ
CQkgICAgRE1BX1JFU1ZfVVNBR0VfS0VSTkVMLCB0cnVlLA0KKwkJCQkJICAgIE1BWF9TQ0hFRFVM
RV9USU1FT1VUKTsNCisJCWlmIChyZXQgPCAwKSB7DQorCQkJYXR0YWNoLT5kbWFidWYtPm9wcy0+
dW5tYXBfZG1hX2J1ZihhdHRhY2gsIHNnX3RhYmxlLA0KKwkJCQkJCQkgICBkaXJlY3Rpb24pOw0K
KwkJCXJldHVybiBFUlJfUFRSKHJldCk7DQorCQl9DQorCX0NCiANCi0JaWYgKCFJU19FUlJfT1Jf
TlVMTChzZ190YWJsZSkpDQotCQltYW5nbGVfc2dfdGFibGUoc2dfdGFibGUpOw0KLQ0KKwltYW5n
bGVfc2dfdGFibGUoc2dfdGFibGUpOw0KIAlyZXR1cm4gc2dfdGFibGU7DQogfQ0KIA0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQppbmRleCA1NzlhZGZhZmU0
ZDAuLjc4MmNiY2EzNzUzOCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kbWFfYnVmLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMNCkBAIC0xMDIsMjEgKzEwMiw5IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RtYV9i
dWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCiB7DQogCXN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5kbWFidWYtPnByaXY7DQogCXN0cnVjdCBhbWRn
cHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOw0KLQlpbnQgcjsNCiANCiAJLyogcGlu
IGJ1ZmZlciBpbnRvIEdUVCAqLw0KLQlyID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9E
T01BSU5fR1RUKTsNCi0JaWYgKHIpDQotCQlyZXR1cm4gcjsNCi0NCi0JaWYgKGJvLT50Ym8ubW92
aW5nKSB7DQotCQlyID0gZG1hX2ZlbmNlX3dhaXQoYm8tPnRiby5tb3ZpbmcsIHRydWUpOw0KLQkJ
aWYgKHIpIHsNCi0JCQlhbWRncHVfYm9fdW5waW4oYm8pOw0KLQkJCXJldHVybiByOw0KLQkJfQ0K
LQl9DQotCXJldHVybiAwOw0KKwlyZXR1cm4gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9E
T01BSU5fR1RUKTsNCiB9DQogDQogLyoqDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL25v
dXZlYXUvbm91dmVhdV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9w
cmltZS5jDQppbmRleCA2MDAxOWQwNTMyZmMuLjM0NzQ4ODY4NWY3NCAxMDA2NDQNCi0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfcHJpbWUuYw0KKysrIGIvZHJpdmVycy9ncHUv
ZHJtL25vdXZlYXUvbm91dmVhdV9wcmltZS5jDQpAQCAtOTMsMjIgKzkzLDcgQEAgaW50IG5vdXZl
YXVfZ2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCiAJaWYgKHJldCkN
CiAJCXJldHVybiAtRUlOVkFMOw0KIA0KLQlyZXQgPSB0dG1fYm9fcmVzZXJ2ZSgmbnZiby0+Ym8s
IGZhbHNlLCBmYWxzZSwgTlVMTCk7DQotCWlmIChyZXQpDQotCQlnb3RvIGVycm9yOw0KLQ0KLQlp
ZiAobnZiby0+Ym8ubW92aW5nKQ0KLQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQobnZiby0+Ym8ubW92
aW5nLCB0cnVlKTsNCi0NCi0JdHRtX2JvX3VucmVzZXJ2ZSgmbnZiby0+Ym8pOw0KLQlpZiAocmV0
KQ0KLQkJZ290byBlcnJvcjsNCi0NCi0JcmV0dXJuIHJldDsNCi0NCi1lcnJvcjoNCi0Jbm91dmVh
dV9ib191bnBpbihudmJvKTsNCi0JcmV0dXJuIHJldDsNCisJcmV0dXJuIDA7DQogfQ0KIA0KIHZv
aWQgbm91dmVhdV9nZW1fcHJpbWVfdW5waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcHJpbWUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3ByaW1lLmMNCmluZGV4IDRhOTA4MDczNTFlNy4uNDJh
ODc5NDhlMjhjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcHJp
bWUuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcHJpbWUuYw0KQEAgLTc3
LDE5ICs3Nyw5IEBAIGludCByYWRlb25fZ2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaikNCiANCiAJLyogcGluIGJ1ZmZlciBpbnRvIEdUVCAqLw0KIAlyZXQgPSByYWRlb25f
Ym9fcGluKGJvLCBSQURFT05fR0VNX0RPTUFJTl9HVFQsIE5VTEwpOw0KLQlpZiAodW5saWtlbHko
cmV0KSkNCi0JCWdvdG8gZXJyb3I7DQotDQotCWlmIChiby0+dGJvLm1vdmluZykgew0KLQkJcmV0
ID0gZG1hX2ZlbmNlX3dhaXQoYm8tPnRiby5tb3ZpbmcsIGZhbHNlKTsNCi0JCWlmICh1bmxpa2Vs
eShyZXQpKSB7DQotCQkJcmFkZW9uX2JvX3VucGluKGJvKTsNCi0JCQlnb3RvIGVycm9yOw0KLQkJ
fQ0KLQl9DQotDQotCWJvLT5wcmltZV9zaGFyZWRfY291bnQrKzsNCi1lcnJvcjoNCisJaWYgKGxp
a2VseShyZXQgPT0gMCkpDQorCQliby0+cHJpbWVfc2hhcmVkX2NvdW50Kys7DQorDQogCXJhZGVv
bl9ib191bnJlc2VydmUoYm8pOw0KIAlyZXR1cm4gcmV0Ow0KIH0NCi0tIA0KMi4yNS4xDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=

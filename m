Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5D1834A6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 17:03:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D682D61726
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 15:03:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C7BBD61786; Tue,  6 Aug 2019 15:03:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B20386179D;
	Tue,  6 Aug 2019 15:01:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 485A860C21
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3D5A26177D; Tue,  6 Aug 2019 15:01:43 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id F073F60C21
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:37 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id z1so88237651wru.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Aug 2019 08:01:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iygOewm8tSkT172r4bWrbjM8Y7R1HsBfIZtC5P+jXJs=;
 b=fp/AieS5m5RzSjFSusbtwYFJGh8HJvV/QJveKlyTIMgyYZ8mEU0J0SOzgnXntrPN5y
 CH3F6UPcfnG9a8ZlSkTJHKkhgnguoi/MtE9uPkaIrdkM2FiQhseTKH0OzUrfcwsMCLvn
 HfBW5JnrGhuMUXQ5+qvJw9dVNGarFiAzKr0uocEhwWTFBoBcrstS9Id7fj6fqAby7wTD
 FsA0MBFfX3jmUbY32z4WhDxTA+6P1Bgi8NBhdyzp7eb9d+SiQV/V/QEu22aCMsuvK4kX
 47mjCZ85qOCawynmaO04M81JsMOqadPQSPOe9UPj8ozKSkXUJO2ni2NLIPn4wwAfqCHY
 8K5w==
X-Gm-Message-State: APjAAAVWiPQATPpAMXp6iqEirCEeJsNFoEY2dzkGLHSFTGhvExepzrmY
 oWvLFEKBxRo1Hs7zEtS8Slo=
X-Google-Smtp-Source: APXvYqzy2Kgz+9jPZPS+CzJD1Vr2OThygCavWLHFRvHw8JOOmHMQXdC5hdEXm8RgUR8n2nXfs2/8pQ==
X-Received: by 2002:adf:a344:: with SMTP id d4mr5285047wrb.237.1565103697141; 
 Tue, 06 Aug 2019 08:01:37 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:d1e0:fffc:b0e3:c66d])
 by smtp.gmail.com with ESMTPSA id g2sm78766828wmh.0.2019.08.06.08.01.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 08:01:36 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Tue,  6 Aug 2019 17:01:28 +0200
Message-Id: <20190806150134.104222-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806150134.104222-1-christian.koenig@amd.com>
References: <20190806150134.104222-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/8] dma-buf: fix shared fence list handling
	in reservation_object_copy_fences
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QWRkIHNvbWUgaGVscGVycyB0byBjb3JyZWN0bHkgYWxsb2NhdGUvZnJlZSByZXNlcnZhdGlvbl9v
YmplY3RfbGlzdHMuCgpPdGhlcndpc2Ugd2UgbWlnaHQgZm9yZ2V0IHRvIGRyb3AgZG1hX2ZlbmNl
IHJlZmVyZW5jZXMgb24gbGlzdCBkZXN0cnVjdGlvbi4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYv
cmVzZXJ2YXRpb24uYyB8IDY1ICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMgYi9kcml2ZXJzL2RtYS1idWYvcmVz
ZXJ2YXRpb24uYwppbmRleCBkNTkyMDdjYTcyZDIuLmMwYmEwNTkzNmFiNiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL3Jlc2Vy
dmF0aW9uLmMKQEAgLTU1LDYgKzU1LDQ3IEBAIEVYUE9SVF9TWU1CT0wocmVzZXJ2YXRpb25fc2Vx
Y291bnRfY2xhc3MpOwogY29uc3QgY2hhciByZXNlcnZhdGlvbl9zZXFjb3VudF9zdHJpbmdbXSA9
ICJyZXNlcnZhdGlvbl9zZXFjb3VudCI7CiBFWFBPUlRfU1lNQk9MKHJlc2VydmF0aW9uX3NlcWNv
dW50X3N0cmluZyk7CiAKKy8qKgorICogcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3RfYWxsb2MgLSBh
bGxvY2F0ZSBmZW5jZSBsaXN0CisgKiBAc2hhcmVkX21heDogbnVtYmVyIG9mIGZlbmNlcyB3ZSBu
ZWVkIHNwYWNlIGZvcgorICoKKyAqIEFsbG9jYXRlIGEgbmV3IHJlc2VydmF0aW9uX29iamVjdF9s
aXN0IGFuZCBtYWtlIHN1cmUgdG8gY29ycmVjdGx5IGluaXRpYWxpemUKKyAqIHNoYXJlZF9tYXgu
CisgKi8KK3N0YXRpYyBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgKgorcmVzZXJ2YXRp
b25fb2JqZWN0X2xpc3RfYWxsb2ModW5zaWduZWQgaW50IHNoYXJlZF9tYXgpCit7CisJc3RydWN0
IHJlc2VydmF0aW9uX29iamVjdF9saXN0ICpsaXN0OworCisJbGlzdCA9IGttYWxsb2Mob2Zmc2V0
b2YodHlwZW9mKCpsaXN0KSwgc2hhcmVkW3NoYXJlZF9tYXhdKSwgR0ZQX0tFUk5FTCk7CisJaWYg
KCFsaXN0KQorCQlyZXR1cm4gTlVMTDsKKworCWxpc3QtPnNoYXJlZF9tYXggPSAoa3NpemUobGlz
dCkgLSBvZmZzZXRvZih0eXBlb2YoKmxpc3QpLCBzaGFyZWQpKSAvCisJCXNpemVvZigqbGlzdC0+
c2hhcmVkKTsKKworCXJldHVybiBsaXN0OworfQorCisvKioKKyAqIHJlc2VydmF0aW9uX29iamVj
dF9saXN0X2ZyZWUgLSBmcmVlIGZlbmNlIGxpc3QKKyAqIEBsaXN0OiBsaXN0IHRvIGZyZWUKKyAq
CisgKiBGcmVlIGEgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgYW5kIG1ha2Ugc3VyZSB0byBkcm9w
IGFsbCByZWZlcmVuY2VzLgorICovCitzdGF0aWMgdm9pZCByZXNlcnZhdGlvbl9vYmplY3RfbGlz
dF9mcmVlKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqbGlzdCkKK3sKKwl1bnNpZ25l
ZCBpbnQgaTsKKworCWlmICghbGlzdCkKKwkJcmV0dXJuOworCisJZm9yIChpID0gMDsgaSA8IGxp
c3QtPnNoYXJlZF9jb3VudDsgKytpKQorCQlkbWFfZmVuY2VfcHV0KHJjdV9kZXJlZmVyZW5jZV9w
cm90ZWN0ZWQobGlzdC0+c2hhcmVkW2ldLCB0cnVlKSk7CisKKwlrZnJlZV9yY3UobGlzdCwgcmN1
KTsKK30KKwogLyoqCiAgKiByZXNlcnZhdGlvbl9vYmplY3RfaW5pdCAtIGluaXRpYWxpemUgYSBy
ZXNlcnZhdGlvbiBvYmplY3QKICAqIEBvYmo6IHRoZSByZXNlcnZhdGlvbiBvYmplY3QKQEAgLTc2
LDcgKzExNyw2IEBAIEVYUE9SVF9TWU1CT0wocmVzZXJ2YXRpb25fb2JqZWN0X2luaXQpOwogICov
CiB2b2lkIHJlc2VydmF0aW9uX29iamVjdF9maW5pKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3Qg
Km9iaikKIHsKLQlpbnQgaTsKIAlzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgKmZvYmo7
CiAJc3RydWN0IGRtYV9mZW5jZSAqZXhjbDsKIApAQCAtODksMTMgKzEyOSw3IEBAIHZvaWQgcmVz
ZXJ2YXRpb25fb2JqZWN0X2Zpbmkoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqKQogCQlk
bWFfZmVuY2VfcHV0KGV4Y2wpOwogCiAJZm9iaiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQo
b2JqLT5mZW5jZSwgMSk7Ci0JaWYgKGZvYmopIHsKLQkJZm9yIChpID0gMDsgaSA8IGZvYmotPnNo
YXJlZF9jb3VudDsgKytpKQotCQkJZG1hX2ZlbmNlX3B1dChyY3VfZGVyZWZlcmVuY2VfcHJvdGVj
dGVkKGZvYmotPnNoYXJlZFtpXSwgMSkpOwotCi0JCWtmcmVlKGZvYmopOwotCX0KLQorCXJlc2Vy
dmF0aW9uX29iamVjdF9saXN0X2ZyZWUoZm9iaik7CiAJd3dfbXV0ZXhfZGVzdHJveSgmb2JqLT5s
b2NrKTsKIH0KIEVYUE9SVF9TWU1CT0wocmVzZXJ2YXRpb25fb2JqZWN0X2ZpbmkpOwpAQCAtMTMy
LDcgKzE2Niw3IEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfcmVzZXJ2ZV9zaGFyZWQoc3RydWN0
IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAogCQltYXggPSA0OwogCX0KIAotCW5ldyA9IGttYWxs
b2Mob2Zmc2V0b2YodHlwZW9mKCpuZXcpLCBzaGFyZWRbbWF4XSksIEdGUF9LRVJORUwpOworCW5l
dyA9IHJlc2VydmF0aW9uX29iamVjdF9saXN0X2FsbG9jKG1heCk7CiAJaWYgKCFuZXcpCiAJCXJl
dHVybiAtRU5PTUVNOwogCkBAIC0xNTMsOSArMTg3LDYgQEAgaW50IHJlc2VydmF0aW9uX29iamVj
dF9yZXNlcnZlX3NoYXJlZChzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpvYmosCiAJCQlSQ1Vf
SU5JVF9QT0lOVEVSKG5ldy0+c2hhcmVkW2orK10sIGZlbmNlKTsKIAl9CiAJbmV3LT5zaGFyZWRf
Y291bnQgPSBqOwotCW5ldy0+c2hhcmVkX21heCA9Ci0JCShrc2l6ZShuZXcpIC0gb2Zmc2V0b2Yo
dHlwZW9mKCpuZXcpLCBzaGFyZWQpKSAvCi0JCXNpemVvZigqbmV3LT5zaGFyZWQpOwogCiAJLyoK
IAkgKiBXZSBhcmUgbm90IGNoYW5naW5nIHRoZSBlZmZlY3RpdmUgc2V0IG9mIGZlbmNlcyBoZXJl
IHNvIGNhbgpAQCAtMjg2LDcgKzMxNyw2IEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfY29weV9m
ZW5jZXMoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqZHN0LAogewogCXN0cnVjdCByZXNlcnZh
dGlvbl9vYmplY3RfbGlzdCAqc3JjX2xpc3QsICpkc3RfbGlzdDsKIAlzdHJ1Y3QgZG1hX2ZlbmNl
ICpvbGQsICpuZXc7Ci0Jc2l6ZV90IHNpemU7CiAJdW5zaWduZWQgaTsKIAogCXJlc2VydmF0aW9u
X29iamVjdF9hc3NlcnRfaGVsZChkc3QpOwpAQCAtMjk4LDEwICszMjgsOSBAQCBpbnQgcmVzZXJ2
YXRpb25fb2JqZWN0X2NvcHlfZmVuY2VzKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKmRzdCwK
IAlpZiAoc3JjX2xpc3QpIHsKIAkJdW5zaWduZWQgc2hhcmVkX2NvdW50ID0gc3JjX2xpc3QtPnNo
YXJlZF9jb3VudDsKIAotCQlzaXplID0gb2Zmc2V0b2YodHlwZW9mKCpzcmNfbGlzdCksIHNoYXJl
ZFtzaGFyZWRfY291bnRdKTsKIAkJcmN1X3JlYWRfdW5sb2NrKCk7CiAKLQkJZHN0X2xpc3QgPSBr
bWFsbG9jKHNpemUsIEdGUF9LRVJORUwpOworCQlkc3RfbGlzdCA9IHJlc2VydmF0aW9uX29iamVj
dF9saXN0X2FsbG9jKHNoYXJlZF9jb3VudCk7CiAJCWlmICghZHN0X2xpc3QpCiAJCQlyZXR1cm4g
LUVOT01FTTsKIApAQCAtMzEzLDcgKzM0Miw2IEBAIGludCByZXNlcnZhdGlvbl9vYmplY3RfY29w
eV9mZW5jZXMoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqZHN0LAogCQl9CiAKIAkJZHN0X2xp
c3QtPnNoYXJlZF9jb3VudCA9IDA7Ci0JCWRzdF9saXN0LT5zaGFyZWRfbWF4ID0gc2hhcmVkX2Nv
dW50OwogCQlmb3IgKGkgPSAwOyBpIDwgc3JjX2xpc3QtPnNoYXJlZF9jb3VudDsgKytpKSB7CiAJ
CQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIApAQCAtMzIzLDcgKzM1MSw3IEBAIGludCByZXNl
cnZhdGlvbl9vYmplY3RfY29weV9mZW5jZXMoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqZHN0
LAogCQkJCWNvbnRpbnVlOwogCiAJCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNlKSkgewot
CQkJCWtmcmVlKGRzdF9saXN0KTsKKwkJCQlyZXNlcnZhdGlvbl9vYmplY3RfbGlzdF9mcmVlKGRz
dF9saXN0KTsKIAkJCQlzcmNfbGlzdCA9IHJjdV9kZXJlZmVyZW5jZShzcmMtPmZlbmNlKTsKIAkJ
CQlnb3RvIHJldHJ5OwogCQkJfQpAQCAtMzUzLDggKzM4MSw3IEBAIGludCByZXNlcnZhdGlvbl9v
YmplY3RfY29weV9mZW5jZXMoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqZHN0LAogCXdyaXRl
X3NlcWNvdW50X2VuZCgmZHN0LT5zZXEpOwogCXByZWVtcHRfZW5hYmxlKCk7CiAKLQlpZiAoc3Jj
X2xpc3QpCi0JCWtmcmVlX3JjdShzcmNfbGlzdCwgcmN1KTsKKwlyZXNlcnZhdGlvbl9vYmplY3Rf
bGlzdF9mcmVlKHNyY19saXN0KTsKIAlkbWFfZmVuY2VfcHV0KG9sZCk7CiAKIAlyZXR1cm4gMDsK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK

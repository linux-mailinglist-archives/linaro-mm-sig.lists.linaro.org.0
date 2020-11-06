Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFF92A95BE
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 12:49:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 254C9665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 11:49:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 16533666D7; Fri,  6 Nov 2020 11:49:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9362F666D4;
	Fri,  6 Nov 2020 11:48:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 37157619C1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 11:48:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 25009665A5; Fri,  6 Nov 2020 11:48:13 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by lists.linaro.org (Postfix) with ESMTPS id 8DEB5619C1
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 11:48:11 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id gn41so1508563ejc.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Nov 2020 03:48:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EHBGsJ+axiVeE8GmrzxBefG74B7GrWvtyoVrJ1bJNe4=;
 b=suZKextPSuS42FXffqVI1DhV75c0w2TOw1fhofx+oZbneblRbGag5QBJ2GMhYpENRf
 TLji7ShcybzRkS/jaA2fAz5+3HEc68gKrW4QUgm4V+xyPVVHjKpb6eEz87+puXAM/QJ6
 r6pmtkAbGnb0mKudXYghUIgytSF2Im4GvsU1GsIKLsZZ57lpjSaRWA3PWJZbA6iMhNcQ
 4LKv9Y3gtgsP4434J4eDjBaKmoHEBZLJyrlEs8IHu4WX34RGXiB9aBAGoj4RTlCtP9/K
 Kz8sZ9tldxrldlD4i2XPKMRh6jmdBH/aVOWq1A+8sRQ1d1JszUZChseKVjMOHC9ihANd
 5DNg==
X-Gm-Message-State: AOAM531Yv7jLUW6zmM+65ut5WLcmOlueWQjjyL/lSbiD9TDY3XzYykGX
 FXWYHhwO7Hs37sko9FpGwYM=
X-Google-Smtp-Source: ABdhPJzcrRQtSzVw6Cx/8bs9wFTOEqntQvRxu+IoDSCnHLgYmCyzUgZk5DO9jYm3No8iZLoVYt4mvg==
X-Received: by 2002:a17:907:119e:: with SMTP id
 uz30mr1681508ejb.125.1604663290625; 
 Fri, 06 Nov 2020 03:48:10 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c066:c9fc:f8c2:d50b])
 by smtp.gmail.com with ESMTPSA id j8sm875933edk.79.2020.11.06.03.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Nov 2020 03:48:10 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: akpm@linux-foundation.org
Date: Fri,  6 Nov 2020 12:48:05 +0100
Message-Id: <20201106114806.46015-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201106114806.46015-1-christian.koenig@amd.com>
References: <20201106114806.46015-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 1/2] mm: mmap: fix fput in error path v2
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

UGF0Y2ggIjQ5NWMxMGNjMWMwYyBDSFJPTUlVTTogZG1hLWJ1ZjogcmVzdG9yZSBhcmdzLi4uIgph
ZGRzIGEgd29ya2Fyb3VuZCBmb3IgYSBidWcgaW4gbW1hcF9yZWdpb24uCgpBcyB0aGUgY29tbWVu
dCBzdGF0ZXMgLT5tbWFwKCkgY2FsbGJhY2sgY2FuIGNoYW5nZQp2bWEtPnZtX2ZpbGUgYW5kIHNv
IHdlIG1pZ2h0IGNhbGwgZnB1dCgpIG9uIHRoZSB3cm9uZyBmaWxlLgoKUmV2ZXJ0IHRoZSB3b3Jr
YXJvdW5kIGFuZCBwcm9wZXIgZml4IHRoaXMgaW4gbW1hcF9yZWdpb24uCgp2MjogZHJvcCB0aGUg
ZXh0cmEgaWYgaW4gZG1hX2J1Zl9tbWFwIGFzIHdlbGwKClNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KUmV2aWV3ZWQtYnk6IEphc29uIEd1
bnRob3JwZSA8amdnQG52aWRpYS5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8
IDIwICsrKy0tLS0tLS0tLS0tLS0tLS0tCiBtbS9tbWFwLmMgICAgICAgICAgICAgICAgIHwgIDIg
Ky0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYwppbmRleCAwZWI4MGMxZWNkYWIuLjI4MmJkOGI4NDE3MCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCkBA
IC0xMTY2LDkgKzExNjYsNiBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2VuZF9jcHVfYWNj
ZXNzKTsKIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEsCiAJCSB1bnNpZ25lZCBsb25nIHBnb2ZmKQogewotCXN0cnVjdCBm
aWxlICpvbGRmaWxlOwotCWludCByZXQ7Ci0KIAlpZiAoV0FSTl9PTighZG1hYnVmIHx8ICF2bWEp
KQogCQlyZXR1cm4gLUVJTlZBTDsKIApAQCAtMTE4NiwyMiArMTE4MywxMSBAQCBpbnQgZG1hX2J1
Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1h
LAogCQlyZXR1cm4gLUVJTlZBTDsKIAogCS8qIHJlYWRqdXN0IHRoZSB2bWEgKi8KLQlnZXRfZmls
ZShkbWFidWYtPmZpbGUpOwotCW9sZGZpbGUgPSB2bWEtPnZtX2ZpbGU7Ci0Jdm1hLT52bV9maWxl
ID0gZG1hYnVmLT5maWxlOworCWZwdXQodm1hLT52bV9maWxlKTsKKwl2bWEtPnZtX2ZpbGUgPSBn
ZXRfZmlsZShkbWFidWYtPmZpbGUpOwogCXZtYS0+dm1fcGdvZmYgPSBwZ29mZjsKIAotCXJldCA9
IGRtYWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsKLQlpZiAocmV0KSB7Ci0JCS8qIHJlc3Rv
cmUgb2xkIHBhcmFtZXRlcnMgb24gZmFpbHVyZSAqLwotCQl2bWEtPnZtX2ZpbGUgPSBvbGRmaWxl
OwotCQlmcHV0KGRtYWJ1Zi0+ZmlsZSk7Ci0JfSBlbHNlIHsKLQkJaWYgKG9sZGZpbGUpCi0JCQlm
cHV0KG9sZGZpbGUpOwotCX0KLQlyZXR1cm4gcmV0OwotCisJcmV0dXJuIGRtYWJ1Zi0+b3BzLT5t
bWFwKGRtYWJ1Ziwgdm1hKTsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfbW1hcCk7CiAK
ZGlmZiAtLWdpdCBhL21tL21tYXAuYyBiL21tL21tYXAuYwppbmRleCBkOTFlY2IwMGQzOGMuLjMw
YTRlODQxMmE1OCAxMDA2NDQKLS0tIGEvbW0vbW1hcC5jCisrKyBiL21tL21tYXAuYwpAQCAtMTg5
OSw4ICsxODk5LDggQEAgdW5zaWduZWQgbG9uZyBtbWFwX3JlZ2lvbihzdHJ1Y3QgZmlsZSAqZmls
ZSwgdW5zaWduZWQgbG9uZyBhZGRyLAogCXJldHVybiBhZGRyOwogCiB1bm1hcF9hbmRfZnJlZV92
bWE6CisJZnB1dCh2bWEtPnZtX2ZpbGUpOwogCXZtYS0+dm1fZmlsZSA9IE5VTEw7Ci0JZnB1dChm
aWxlKTsKIAogCS8qIFVuZG8gYW55IHBhcnRpYWwgbWFwcGluZyBkb25lIGJ5IGEgZGV2aWNlIGRy
aXZlci4gKi8KIAl1bm1hcF9yZWdpb24obW0sIHZtYSwgcHJldiwgdm1hLT52bV9zdGFydCwgdm1h
LT52bV9lbmQpOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE4F28B098
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 10:52:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6227260763
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 08:52:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5715F66521; Mon, 12 Oct 2020 08:52:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F8AC60911;
	Mon, 12 Oct 2020 08:52:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 613D360763
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 08:52:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4863060911; Mon, 12 Oct 2020 08:52:07 +0000 (UTC)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by lists.linaro.org (Postfix) with ESMTPS id 43AA96013C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 08:52:06 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id ce10so22103131ejc.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 01:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yMIANltJzggMKevCuA/64ylJ5xrfMe99CRAziEtSDMY=;
 b=i6uUO4YzTc2HVr1YOfFyFsvCa8b7LBymXOvvyGNCOeS+wULW24tdrP9E6vNp4shTAI
 NjYMIwCRwvzTCh0EodIxWXsiscYuSnHzF8GjHkNgwm9K2Fea25wEyHCpGfiJQl8klmX1
 hb/8Vx8sjccZVfxcTXr3lQHG4bNNdUyjdrPIebTOTrbO3LyN6hNGkTsXto/TEtUmuDxD
 BgEuXFA0bR5h8YMHrOB5UqsnX3e4aK82Fx/ITlwYKWxkl6sX1vv8T0IHEUXFQWhugoTL
 z+b12QNYA8F/hhR3Pt2JEnoj72CekigkbOcDwXmHXWyxJCpmw4srvBfB4lL8ZzRlArTk
 r+LA==
X-Gm-Message-State: AOAM533NeiPoRKR5tJZQtfohdhxwJPPn9cPMOmGQ5skjiRKPlPd5bVeA
 tDfa5IsVzkO5lt4s2OUfqGM=
X-Google-Smtp-Source: ABdhPJxnwEuylsU7eSmkWOtF42j8bglh0/rf5pkHlz0ZkTIK1CSAgwpiELeW85OngsabmXKbddLIWw==
X-Received: by 2002:a17:906:95c5:: with SMTP id
 n5mr27686729ejy.111.1602492725376; 
 Mon, 12 Oct 2020 01:52:05 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:6a6c:c67:2644:1d74])
 by smtp.gmail.com with ESMTPSA id o35sm8622988edd.4.2020.10.12.01.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 01:52:04 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk, airlied@redhat.com, daniel@ffwll.ch,
 sumit.semwal@linaro.org, willy@infradead.org, jhubbard@nvidia.com,
 jgg@ziepe.ca, linmiaohe@huawei.com
Date: Mon, 12 Oct 2020 10:52:02 +0200
Message-Id: <20201012085203.56119-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
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
YS1idWYuYwppbmRleCBhNmJhNGQ1OThmMGUuLjA4NjMwZDA1N2NmMiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCkBA
IC0xMTQzLDkgKzExNDMsNiBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2VuZF9jcHVfYWNj
ZXNzKTsKIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEsCiAJCSB1bnNpZ25lZCBsb25nIHBnb2ZmKQogewotCXN0cnVjdCBm
aWxlICpvbGRmaWxlOwotCWludCByZXQ7Ci0KIAlpZiAoV0FSTl9PTighZG1hYnVmIHx8ICF2bWEp
KQogCQlyZXR1cm4gLUVJTlZBTDsKIApAQCAtMTE2MywyMiArMTE2MCwxMSBAQCBpbnQgZG1hX2J1
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
ZGlmZiAtLWdpdCBhL21tL21tYXAuYyBiL21tL21tYXAuYwppbmRleCA0MDI0OGQ4NGFkNWYuLjNh
MjY3MGQ3MzM1NSAxMDA2NDQKLS0tIGEvbW0vbW1hcC5jCisrKyBiL21tL21tYXAuYwpAQCAtMTg1
Miw4ICsxODUyLDggQEAgdW5zaWduZWQgbG9uZyBtbWFwX3JlZ2lvbihzdHJ1Y3QgZmlsZSAqZmls
ZSwgdW5zaWduZWQgbG9uZyBhZGRyLAogCXJldHVybiBhZGRyOwogCiB1bm1hcF9hbmRfZnJlZV92
bWE6CisJZnB1dCh2bWEtPnZtX2ZpbGUpOwogCXZtYS0+dm1fZmlsZSA9IE5VTEw7Ci0JZnB1dChm
aWxlKTsKIAogCS8qIFVuZG8gYW55IHBhcnRpYWwgbWFwcGluZyBkb25lIGJ5IGEgZGV2aWNlIGRy
aXZlci4gKi8KIAl1bm1hcF9yZWdpb24obW0sIHZtYSwgcHJldiwgdm1hLT52bV9zdGFydCwgdm1h
LT52bV9lbmQpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=

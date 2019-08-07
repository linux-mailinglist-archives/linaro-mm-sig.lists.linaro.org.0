Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C81BC84DF2
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 15:53:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E89CE6180C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 13:53:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D9E8961817; Wed,  7 Aug 2019 13:53:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2ECA5617DA;
	Wed,  7 Aug 2019 13:53:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A516C60EA0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 13:53:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 851C0617F1; Wed,  7 Aug 2019 13:53:16 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 0C22A60EA0
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 13:53:15 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f17so133957wme.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Aug 2019 06:53:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dMaE7C1AgtvhXFU8IBpUtrbV9gh4P12ShfV3iNE/Fvg=;
 b=W/zbPdbfwV8bdVLDoM6f0h/XVW721LQ4Bj2/4VPilt/lfbdiQJ2ryMzvye/clUI+sA
 nfrwFdPDC7Vj3qDMJLIfFChBLF+8hh3fE6EZl3SVbvpy0RSBroA41tmatzaHJ52uh8j/
 +0JcUuALxABtZX1YorRQm4eKIlFqJ+gHqT0ll1hx5FHBkqrPTcgSi1D16Gcme/NAdr25
 uwMquqjQv6RaDyBKsJCpmvS41douK8ndRwwjeZw8+adCi7aqTlqqwLKpNdM9aWCuS4zb
 jlUuNXWAIkwWLJbWNkV5irOjW+XaB7MBOESoKa2j8My1KmLUJtUpzkf8F2zh/PCH0k74
 jRAw==
X-Gm-Message-State: APjAAAWrznN3XBowriBf5tFl7hwesKIzRzFBPTefV3q/O2QQnXVwUFO1
 nlN9RCa5OYkO/wd/BALpDHE=
X-Google-Smtp-Source: APXvYqyWTuSwIs/JrISy3bNFKnM2NIF4zxE+zfA8AyptILCB4ydVHCen6CLhk0l93x8tr9P1bXX2fw==
X-Received: by 2002:a1c:a1c5:: with SMTP id k188mr115466wme.102.1565185994291; 
 Wed, 07 Aug 2019 06:53:14 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:645a:5b76:280d:27be])
 by smtp.gmail.com with ESMTPSA id o11sm33095wmh.37.2019.08.07.06.53.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 06:53:13 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Wed,  7 Aug 2019 15:53:10 +0200
Message-Id: <20190807135312.1730-2-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190807135312.1730-1-christian.koenig@amd.com>
References: <20190807135312.1730-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 2/4] drm/i915: use new
	reservation_object_fences helper
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

SW5zdGVhZCBvZiBvcGVuIGNvZGluZyB0aGUgc2VxdWVuY2UgbG9vcCB1c2UgdGhlIG5ldyBoZWxw
ZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDI0
ICsrKysrKystLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2J1c3kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMKaW5kZXggNmFkOTNhMDk5NjhjLi44NDczMjkyMDk2Y2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwpAQCAtODMsNyArODMsOCBAQCBpOTE1X2dlbV9idXN5X2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJc3RydWN0IGRybV9pOTE1
X2dlbV9idXN5ICphcmdzID0gZGF0YTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
OwogCXN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqbGlzdDsKLQl1bnNpZ25lZCBpbnQg
c2VxOworCXVuc2lnbmVkIGludCBpLCBzaGFyZWRfY291bnQ7CisJc3RydWN0IGRtYV9mZW5jZSAq
ZXhjbDsKIAlpbnQgZXJyOwogCiAJZXJyID0gLUVOT0VOVDsKQEAgLTEwOSwyOSArMTEwLDE4IEBA
IGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwK
IAkgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2Fp
dC1pb2N0bCBkb2VzLgogCSAqCiAJICovCi1yZXRyeToKLQlzZXEgPSByYXdfcmVhZF9zZXFjb3Vu
dCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7CisJcmVzZXJ2YXRpb25fb2JqZWN0X2ZlbmNlcyhvYmot
PmJhc2UucmVzdiwgJmV4Y2wsICZsaXN0LCAmc2hhcmVkX2NvdW50KTsKIAogCS8qIFRyYW5zbGF0
ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIGVuZ2luZSAqLwot
CWFyZ3MtPmJ1c3kgPQotCQlidXN5X2NoZWNrX3dyaXRlcihyY3VfZGVyZWZlcmVuY2Uob2JqLT5i
YXNlLnJlc3YtPmZlbmNlX2V4Y2wpKTsKKwlhcmdzLT5idXN5ID0gYnVzeV9jaGVja193cml0ZXIo
ZXhjbCk7CiAKIAkvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdp
bmVzICovCi0JbGlzdCA9IHJjdV9kZXJlZmVyZW5jZShvYmotPmJhc2UucmVzdi0+ZmVuY2UpOwot
CWlmIChsaXN0KSB7Ci0JCXVuc2lnbmVkIGludCBzaGFyZWRfY291bnQgPSBsaXN0LT5zaGFyZWRf
Y291bnQsIGk7CisJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7CisJCXN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGxpc3QtPnNoYXJlZFtpXSk7CiAK
LQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Ci0JCQlzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSA9Ci0JCQkJcmN1X2RlcmVmZXJlbmNlKGxpc3QtPnNoYXJlZFtpXSk7Ci0KLQkJ
CWFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwotCQl9CisJCWFyZ3MtPmJ1
c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwogCX0KIAotCWlmIChhcmdzLT5idXN5ICYm
IHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCi0JCWdvdG8g
cmV0cnk7Ci0KIAllcnIgPSAwOwogb3V0OgogCXJjdV9yZWFkX3VubG9jaygpOwotLSAKMi4xNy4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

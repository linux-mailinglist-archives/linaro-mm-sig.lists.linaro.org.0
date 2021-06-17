Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EB91C3AB251
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 13:17:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41EA563504
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Jun 2021 11:17:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A271F63549; Thu, 17 Jun 2021 11:17:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A02696350D;
	Thu, 17 Jun 2021 11:17:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3CED6634F3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 32FC963501; Thu, 17 Jun 2021 11:16:09 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by lists.linaro.org (Postfix) with ESMTPS id ADAA661A2A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 11:16:07 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id t3so3451541edc.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Jun 2021 04:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=byLSDqjdKi3+cE2IMMDe/R3eVJ9OpfF5t0/Jijtn6q0=;
 b=sOQGBXqPZYb4VhHiZysul1mv0Y5S+MhCCItbz9UHtXicp3kUgp/stG1N3WEDg0WQNA
 KuX+kWiSQcyHtd+4Q3yVKARfSprDU5SoZya210yjZ+7yxgF472bhYHycnphV0w17aEmG
 cl/w93GKuJUqiPTDj78CNuPHdSmnWgrvFEeb3nHdfcN9j7kiP402JJsocFKh7gawRlVf
 F4jfa+uvDDSOQ/3a4A675gYsIYpd3q2aJ5Yhp+qGdcYgJrohoHSxXL6YNEisPGWS0PgT
 +7e0clwZ6uX0erSLNWWG9pQLaPg7eBt7DNTTXQ9KuAt6xohb5sh6m1AC5RGGNAn/KKpg
 bjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=byLSDqjdKi3+cE2IMMDe/R3eVJ9OpfF5t0/Jijtn6q0=;
 b=a87vMX31+JMOWva1ARcCnJU5ptJFCfDXXxlCGMyfUUv1q5e30fEWGrwhkVDX2ngLux
 6B8Vl2aSEyUZDbiYGOsmMV6ncZ7V8PbY6Hm5DxNJZkXem8PkYrnmC31KV40TiJiERzQ3
 savvC+LspRycbKuKVRkVvDcjGHoiOkN+5Iw9nq/ShvQBQhfwRWw1ngSbm8tui7iQBTmC
 WNhK71FKUlgGGXIk6bDlYCeW4GG5tOTysNFHtNdCrlW+T7ivk0Q2RcBadIaQfGbz1mzy
 iVSpj5k7yffI3LieC7qHvBv6UUwxTlDt79UywHEqNWBRuOPJ+NP9jKrJnbB/mcGGkXYy
 Wucw==
X-Gm-Message-State: AOAM532DYfWxpeFUNdvkYSKIsggsYne/unJuxX/Y3sjg1qOFKnUuOvQH
 kSjDsAw+PHOtLnZ/BKqow3E=
X-Google-Smtp-Source: ABdhPJxPES9M3EFm+goK97aBV/aqBmulWsvrxZXDpmswFtsIKGYgZSrLa6HNl26BpQgDFlDZEnIjWw==
X-Received: by 2002:a05:6402:27c9:: with SMTP id
 c9mr5838983ede.371.1623928566809; 
 Thu, 17 Jun 2021 04:16:06 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8534:5e76:1ee5:f3ad])
 by smtp.gmail.com with ESMTPSA id y10sm3531353ejm.76.2021.06.17.04.16.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 04:16:06 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Date: Thu, 17 Jun 2021 13:15:50 +0200
Message-Id: <20210617111558.28486-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210617111558.28486-1-christian.koenig@amd.com>
References: <20210617111558.28486-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/16] drm/i915: use the new iterator in
 i915_gem_busy_ioctl
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDMwICsrKysrKystLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKaW5kZXggNjIzNGUxNzI1OWMxLi5j
NmM2ZDc0N2IzM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9idXN5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwpA
QCAtODIsOCArODIsOCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEsCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9idXN5ICphcmdzID0gZGF0
YTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwotCXN0cnVjdCBkbWFfcmVzdl9s
aXN0ICpsaXN0OwotCXVuc2lnbmVkIGludCBzZXE7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBj
dXJzb3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJaW50IGVycjsKIAogCWVyciA9IC1F
Tk9FTlQ7CkBAIC0xMDksMjggKzEwOSwxNiBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJICogdG8gcmVwb3J0IHRoZSBvdmVyYWxsIGJ1
c3luZXNzLiBUaGlzIGlzIHdoYXQgdGhlIHdhaXQtaW9jdGwgZG9lcy4KIAkgKgogCSAqLwotcmV0
cnk6Ci0Jc2VxID0gcmF3X3JlYWRfc2VxY291bnQoJm9iai0+YmFzZS5yZXN2LT5zZXEpOwotCi0J
LyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUg
ZW5naW5lICovCi0JYXJncy0+YnVzeSA9IGJ1c3lfY2hlY2tfd3JpdGVyKGRtYV9yZXN2X2V4Y2xf
ZmVuY2Uob2JqLT5iYXNlLnJlc3YpKTsKLQotCS8qIFRyYW5zbGF0ZSBzaGFyZWQgZmVuY2VzIHRv
IFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KLQlsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2Jq
LT5iYXNlLnJlc3YpOwotCWlmIChsaXN0KSB7Ci0JCXVuc2lnbmVkIGludCBzaGFyZWRfY291bnQg
PSBsaXN0LT5zaGFyZWRfY291bnQsIGk7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3Vu
dDsgKytpKSB7Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9Ci0JCQkJcmN1X2RlcmVmZXJl
bmNlKGxpc3QtPnNoYXJlZFtpXSk7Ci0KKwlhcmdzLT5idXN5ID0gZmFsc2U7CisJZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQob2JqLT5iYXNlLnJlc3YsICZjdXJzb3IsIHRydWUsIGZl
bmNlKSB7CisJCWlmIChjdXJzb3IuaXNfZXhjbHVzaXZlKQorCQkJLyogVHJhbnNsYXRlIHRoZSBl
eGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUgZW5naW5lICovCisJCQlhcmdz
LT5idXN5ID0gYnVzeV9jaGVja193cml0ZXIoZmVuY2UpOworCQllbHNlCisJCQkvKiBUcmFuc2xh
dGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdpbmVzICovCiAJCQlhcmdzLT5idXN5
IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKLQkJfQogCX0KIAotCWlmIChhcmdzLT5idXN5
ICYmIHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCi0JCWdv
dG8gcmV0cnk7Ci0KIAllcnIgPSAwOwogb3V0OgogCXJjdV9yZWFkX3VubG9jaygpOwotLSAKMi4y
NS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

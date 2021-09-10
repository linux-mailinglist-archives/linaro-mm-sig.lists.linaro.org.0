Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB7406874
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 10:27:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66070623DB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Sep 2021 08:27:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 95A8363549; Fri, 10 Sep 2021 08:27:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 45B9B69CF0;
	Fri, 10 Sep 2021 08:27:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A5E9569CD7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C4EE863231; Fri, 10 Sep 2021 08:27:08 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 1C25863426
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 08:27:05 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id d6so1431812wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Sep 2021 01:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=byLSDqjdKi3+cE2IMMDe/R3eVJ9OpfF5t0/Jijtn6q0=;
 b=M1RjKlSJECx4MS0DsZ1oArWcYKVcShptg1wsRAotmw1sniqngIJqtiAE3qMaCmkPLX
 lEG/vaQf3P4qw3rCZbxGt2y8/sIT539y5GkEQhbx/ui7Ao/GlSSvixm2fN7a9mJMoG/+
 01Gqs805XQAF/rJFxdViLwn3FBTNqb8d1BEP32pqLh187NRgc91uKspSGsjRasIbusy7
 xH9UK/jcaGUslitEmn3CuvD/FNeYb5ZP6uIpXNbGSaA/fBj+waWwo4rGG2r5Gg3cQwxY
 vMxnCGBhwrWq9f2+Lkf2R6xBkcpzqSpk25ce5oQ4ssN+anqUm1qMLZWDAqxrBKF6Iq46
 fxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=byLSDqjdKi3+cE2IMMDe/R3eVJ9OpfF5t0/Jijtn6q0=;
 b=6sZCudYqXCsLFc7ZOYs0MReLmwLaTHXnrcwejqi/L3To6JDzxLeoogKCQAd99QBVq/
 +Es7tUj/N9PmeR26GPH4VxBJFa2t84CcuAAo1o8wmTKdACwO37YPNr9sAPvP0gz32c8M
 sqcqbAsKa+83bAO2NkD0/K4sz5KgoZ8eIOZrmPvfWGrVNXkhN5ZHOvxHkIJKCON3RXGV
 YIoM6mbvBbYSwOZM6kKlHyoaW31tHaJ587kMu+k4nTzldBiPMILB8bNAhiH0rO9QyTo3
 j8/02gEpv/zVr6/h+XyPEne3Kimhdd1EVufVQH/l7GTEvHhkryngR7dUZwftpTKP9Dmg
 HHPQ==
X-Gm-Message-State: AOAM533SzOmiOJWXT9vRBuA68bgWFaqn2SHhARa/GCmapYS8oXcSmHWK
 xmwIy/jhqvg4mXNAckTVgpCA5vXn7I1Yfnlb
X-Google-Smtp-Source: ABdhPJwti/PivNUxcntiq+mV5bRnvy3fWoun3RXdVSzz/jtT7J7GtASJ96xhTkxgTdJNYJ6YimSHEQ==
X-Received: by 2002:a5d:4e51:: with SMTP id r17mr8260877wrt.308.1631262423353; 
 Fri, 10 Sep 2021 01:27:03 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l10sm4429756wrg.50.2021.09.10.01.27.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Sep 2021 01:27:03 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Fri, 10 Sep 2021 10:26:48 +0200
Message-Id: <20210910082655.82168-7-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210910082655.82168-1-christian.koenig@amd.com>
References: <20210910082655.82168-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 07/14] drm/i915: use the new iterator in
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
Cc: daniel@ffwll.ch
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

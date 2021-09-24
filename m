Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D2B4177D7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 17:33:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96D0B6263B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Sep 2021 15:33:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AC4F3623A8; Fri, 24 Sep 2021 15:33:24 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 740E2603BB;
	Fri, 24 Sep 2021 15:33:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 91DDB631AA
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E20E163133; Fri, 24 Sep 2021 15:31:40 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 4E6A762169
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 15:31:34 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id i23so28764301wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Sep 2021 08:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9ue7puBcgohS+7D/zNLeUPSF3Sf1Ar8z9127abKsq3w=;
 b=e8ktm8j908F+o346SDIu24SHhmwHHVacBvNBnmLYGX4bjCZ0T/w2KBISyzalGTK8Yp
 T17P07dLJfGwqG4bcMEg0/iy9raP7DcDQd0tLCXKQsIc7xI60ZjREFyX9DMJqWnGuojj
 jDGvLnRhkadbz9GldUlXFBEAx14AjGWHwHXSO1JJ7kF0yTFByHTJF7tKgam2sil4xO6o
 6zOh6Am9zSD+6nGgzYmbR4VPM0y9Aqz1RfYmq7F0Gi/SNo0veUh2yfoYoz8TGhKiMxkV
 AJ0TOagSCKIjrEyz9ocSMalLC4UMTYGriCTWIlHJmqq5yBP0PAcuO+dzR5TZSftTbgiF
 wKpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ue7puBcgohS+7D/zNLeUPSF3Sf1Ar8z9127abKsq3w=;
 b=LUASIqjpLlyuhKHQhfdKKCt1YIP1J10PoiKMIpkG1tMSrf92DVNU09dGpkVSzBZnW6
 o5WVfm2vBLVjA/p9PAPVNlXMFwYaVxC+EC/afIIneOzaY06Km1zfRg56+qiEB3DzSs9j
 oeshkiz+PHitClCI4sQQcqxDJj2VFNSc7KB2Op10Wbk0lUaCMTXGbDZpXJf99PSLIMya
 ejajUmhX8kFjiXktz7dKNJEsOLIe/JlSVv5yxntXqUENstxqEgYhXz7tVC8lOA747t6a
 qnzjRm9Gu326rvk73gA9XUS2XqNFI/tQ/+dHATMS1fozXBjIIprny2O8Jzp/oTtxO/9A
 /DcQ==
X-Gm-Message-State: AOAM53136K2alRxXzvN7BP+YdSPglsrgTCpty5zEEKcSBve1fQZ+wr3l
 zq6IixPxTyEt1+REE59fmwbjxU+z7dM=
X-Google-Smtp-Source: ABdhPJw8um7sB9PGM9PM6XT+29vgXwyT8JT1FRlkJlu9BgxfIgtfxD2SFGvg3W5V/i3CaMY/sscWFg==
X-Received: by 2002:a5d:6b82:: with SMTP id n2mr5767805wrx.85.1632497493377;
 Fri, 24 Sep 2021 08:31:33 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 u25sm9902248wmm.5.2021.09.24.08.31.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Sep 2021 08:31:32 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Sep 2021 17:31:02 +0200
Message-Id: <20210924153113.2159-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210924153113.2159-1-christian.koenig@amd.com>
References: <20210924153113.2159-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 16/27] drm/i915: use the new iterator in
 i915_gem_busy_ioctl v2
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMgfCAzNSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwppbmRleCA2MjM0ZTE3MjU5YzEuLmRj
NzJiMzZkYWU1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2J1c3kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCkBA
IC04Miw4ICs4Miw4IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2J1c3kgKmFyZ3MgPSBkYXRh
OwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGRtYV9yZXN2X2xp
c3QgKmxpc3Q7Ci0JdW5zaWduZWQgaW50IHNlcTsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJz
b3I7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJaW50IGVycjsKIAogCWVyciA9IC1FTk9F
TlQ7CkBAIC0xMDksMjcgKzEwOSwyMCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJICogdG8gcmVwb3J0IHRoZSBvdmVyYWxsIGJ1c3lu
ZXNzLiBUaGlzIGlzIHdoYXQgdGhlIHdhaXQtaW9jdGwgZG9lcy4KIAkgKgogCSAqLwotcmV0cnk6
Ci0Jc2VxID0gcmF3X3JlYWRfc2VxY291bnQoJm9iai0+YmFzZS5yZXN2LT5zZXEpOwotCi0JLyog
VHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUgZW5n
aW5lICovCi0JYXJncy0+YnVzeSA9IGJ1c3lfY2hlY2tfd3JpdGVyKGRtYV9yZXN2X2V4Y2xfZmVu
Y2Uob2JqLT5iYXNlLnJlc3YpKTsKLQotCS8qIFRyYW5zbGF0ZSBzaGFyZWQgZmVuY2VzIHRvIFJF
QUQgc2V0IG9mIGVuZ2luZXMgKi8KLQlsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqLT5i
YXNlLnJlc3YpOwotCWlmIChsaXN0KSB7Ci0JCXVuc2lnbmVkIGludCBzaGFyZWRfY291bnQgPSBs
aXN0LT5zaGFyZWRfY291bnQsIGk7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsg
KytpKSB7Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9Ci0JCQkJcmN1X2RlcmVmZXJlbmNl
KGxpc3QtPnNoYXJlZFtpXSk7Ci0KKwlhcmdzLT5idXN5ID0gMDsKKwlkbWFfcmVzdl9pdGVyX2Jl
Z2luKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCB0cnVlKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9m
ZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlpZiAoZG1hX3Jlc3ZfaXRlcl9pc19y
ZXN0YXJ0ZWQoJmN1cnNvcikpCisJCQlhcmdzLT5idXN5ID0gMDsKKworCQlpZiAoZG1hX3Jlc3Zf
aXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQkvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2
ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBlbmdpbmUgKi8KKwkJCWFyZ3MtPmJ1c3kg
fD0gYnVzeV9jaGVja193cml0ZXIoZmVuY2UpOworCQllbHNlCisJCQkvKiBUcmFuc2xhdGUgc2hh
cmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdpbmVzICovCiAJCQlhcmdzLT5idXN5IHw9IGJ1
c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKLQkJfQogCX0KLQotCWlmIChhcmdzLT5idXN5ICYmIHJl
YWRfc2VxY291bnRfcmV0cnkoJm9iai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCi0JCWdvdG8gcmV0
cnk7CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKIAllcnIgPSAwOwogb3V0OgotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

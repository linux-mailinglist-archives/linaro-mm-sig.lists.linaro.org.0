Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2311441EA9E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 12:08:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09B7863525
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Oct 2021 10:08:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 11E2961A07; Fri,  1 Oct 2021 10:08:09 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E17A631A2;
	Fri,  1 Oct 2021 10:08:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BB8F762433
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8BB8061020; Fri,  1 Oct 2021 10:06:35 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 55C9562631
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Oct 2021 10:06:29 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id u18so14623235wrg.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Oct 2021 03:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9ue7puBcgohS+7D/zNLeUPSF3Sf1Ar8z9127abKsq3w=;
 b=ZsjIr/vefBbHHiUwrD7XJy6MswdJEEhiBaLuWXQmIOhOiycUXnK4K0Mr6yl3X/ZLXN
 01ZHFiF7Bcchgp+oaYJ6GzVkisSKo6t3pZKQuA1E4988bGs6bEeuPLIDTWv6oWbmD5AC
 YokBuiOn3ytUFAvyaZH6zfeVIRuI7sE0ZjbAEiT9tUi/VWmFAyYZIrIuUSCPNFwoSOk7
 knnoQIZICNp7V1xeCANmtyScQ3pL9y0AdIHstGD1+yFaUjG/KmQ6mbWLKDNR95opqfMI
 rVFjPTkPYXfVxv4pwgc96ORquSUQO2yvHhwsqn8AQQbBhT6+5PC6Nw9+Yki15qkSQDai
 P+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ue7puBcgohS+7D/zNLeUPSF3Sf1Ar8z9127abKsq3w=;
 b=KeEqvKh0MKFC+IbcfLs6OzUUJjI2dCb+Eu7TX+654T5kYPXVgz3QWKKcoPs5G3oftI
 imUYpA8OaSDCT8y43UXDuAZdjj8EDTdtiCZhQIv9tZr9DhnHACzJtNkH6ya1nwLYIfe6
 3LXcJTiH/UAfnV7o8kW9EINjUTHLXWJDY/2+aHGcG8VcZk7umdnHSi3p5OTZfnEEKAeZ
 wYihEs7GA3MJvMgd2U3ukhpmAKJ+zaT5ufLBNqI4AcEl6cUR620otAHKIwp+KkSI70jk
 3JopGxp9Kx8yO7GW6uHzlmCPQ0+X60oCGXps0WwU7aP0jxP0IKQ3FGoU/f8CjVoVo66F
 eYfA==
X-Gm-Message-State: AOAM532suzAcMZhyTYXl1i6GCh53k6UGbivwKZpbjEbsC78QGGU1PtpZ
 KTWyxDpxn1TZFeCh8A1pFXGiazbhOgw=
X-Google-Smtp-Source: ABdhPJzm+9VExwWXqnVNs6G8xbrEIBMs86W03GOK95wzmAH6ZIKsuQCZRsC1otcFgzk6whqQoGRC0Q==
X-Received: by 2002:adf:97d4:: with SMTP id t20mr4627990wrb.34.1633082788233; 
 Fri, 01 Oct 2021 03:06:28 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 v17sm5746069wro.34.2021.10.01.03.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 03:06:27 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri,  1 Oct 2021 12:05:59 +0200
Message-Id: <20211001100610.2899-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211001100610.2899-1-christian.koenig@amd.com>
References: <20211001100610.2899-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/28] drm/i915: use the new iterator in
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

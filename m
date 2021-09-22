Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D16794144D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:12:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB64661A22
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 09:12:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D09DE619D4; Wed, 22 Sep 2021 09:12:02 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 435D667E34;
	Wed, 22 Sep 2021 09:11:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8E36D619CD
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3803A62631; Wed, 22 Sep 2021 09:11:06 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 9D118619C2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 09:11:01 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id i23so4766005wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 02:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WIVZE6XCLajAHsuGZVfuYRo6jHzbL0m2blvNoQKDL8s=;
 b=MTS+8CxT71Oe7hMOt5KRA2yUEnaBP213RX88NXAbzUEHOeCZ93DaA8pTcHWaj8dDyZ
 h7RXT/obLhKoTk59ve8Lj15yGywz/u2fmJ74RoicC4oxRHfYMXReIlKc7k+SeoG9Doz9
 xM6OBGZlNfNqWhk1ed2lxGKzycWTpW6CDkoLUIjG7Lk8azTSkuTirraPT9Kr8fxWO9m2
 hu+1TZFBExqLZiwkoym6mhNiHDVSUYVoidGfjSGJ1dxiNYBb6wr6FYCYv31mZsZLnf8C
 VxZdDsCjdVH5Dp+wBPEvE8cOJJ9/aIh6w4OZocXdY3sEvGGIU7pnD+A3Jde6NqVxOCZy
 Xn4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WIVZE6XCLajAHsuGZVfuYRo6jHzbL0m2blvNoQKDL8s=;
 b=tB+hIX8l4RQOa+i2r9+yeH9HIkjCxxqSM8tlEBS2M9uXZ3dGSRmsagtz+2ui+WvGNd
 NujyALVWCXvT/9CjifQ3kGRBsKJtb9CJkY8Q+bbkcX4q7uyqlbp5vMqJBZNJN6IE03z8
 wvy6vgR8oVN0gwdhB5o0eu8e8nhJae4EG5wkYaIGi4YrfEGOtBsxkifoHGIEQM8Al4e/
 cjF7YVXJTHw27BoqEvdFrYOw6JNFpVwvs23Pzm+z+N3L8Uq6Y88YlcU3ZA4e0LhXV90o
 tid+6Hsvb5nhzdmUosmgey6aZqLDMSp02ROggCY0KP4F7r9Rp8JHu0CwTY4YAl0qY5yT
 GHeA==
X-Gm-Message-State: AOAM533u4XiuRUWG0/yB/iLTQ+L1dn3TKpYrVH0+VKhFZW5ShmAhLJjW
 KfK/DCdTHYREBZgvilAqaHsgNq5UEno=
X-Google-Smtp-Source: ABdhPJzCbC82QhHH5hdyWRlXJ4Bk6zDGjppXG8JDIjAeP4hhouA56wVcY38fj8lDLIwgypugjBclrQ==
X-Received: by 2002:adf:fd92:: with SMTP id d18mr40757513wrr.28.1632301860060; 
 Wed, 22 Sep 2021 02:11:00 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.10.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:10:59 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 11:10:31 +0200
Message-Id: <20210922091044.2612-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/26] drm/i915: use the new iterator in
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
Cc: tvrtko.ursulin@linux.intel.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2Ugd2hlcmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDM1ICsrKysrKysrKystLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCmluZGV4IDYyMzRlMTcyNTljMS4u
MzEzYWZiNGExMWM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fYnVzeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMK
QEAgLTgyLDggKzgyLDggQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpkYXRhLAogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRh
dGE7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlzdHJ1Y3QgZG1hX3Jlc3Zf
bGlzdCAqbGlzdDsKLQl1bnNpZ25lZCBpbnQgc2VxOworCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1
cnNvcjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKIAlpbnQgZXJyOwogCiAJZXJyID0gLUVO
T0VOVDsKQEAgLTEwOSwyNyArMTA5LDIwIEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVz
eW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCBkb2VzLgogCSAqCiAJICovCi1yZXRy
eToKLQlzZXEgPSByYXdfcmVhZF9zZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Ci0KLQkv
KiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBl
bmdpbmUgKi8KLQlhcmdzLT5idXN5ID0gYnVzeV9jaGVja193cml0ZXIoZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShvYmotPmJhc2UucmVzdikpOwotCi0JLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8g
UkVBRCBzZXQgb2YgZW5naW5lcyAqLwotCWxpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChvYmot
PmJhc2UucmVzdik7Ci0JaWYgKGxpc3QpIHsKLQkJdW5zaWduZWQgaW50IHNoYXJlZF9jb3VudCA9
IGxpc3QtPnNoYXJlZF9jb3VudCwgaTsKLQotCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50
OyArK2kpIHsKLQkJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0KLQkJCQlyY3VfZGVyZWZlcmVu
Y2UobGlzdC0+c2hhcmVkW2ldKTsKLQorCWFyZ3MtPmJ1c3kgPSBmYWxzZTsKKwlkbWFfcmVzdl9p
dGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+YmFzZS5yZXN2LCB0cnVlKTsKKwlkbWFfcmVzdl9mb3Jf
ZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgeworCQlpZiAoZG1hX3Jlc3ZfaXRl
cl9pc19yZXN0YXJ0ZWQoJmN1cnNvcikpCisJCQlhcmdzLT5idXN5ID0gMDsKKworCQlpZiAoZG1h
X3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCisJCQkvKiBUcmFuc2xhdGUgdGhlIGV4
Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSBlbmdpbmUgKi8KKwkJCWFyZ3Mt
PmJ1c3kgfD0gYnVzeV9jaGVja193cml0ZXIoZmVuY2UpOworCQllbHNlCisJCQkvKiBUcmFuc2xh
dGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdpbmVzICovCiAJCQlhcmdzLT5idXN5
IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKLQkJfQogCX0KLQotCWlmIChhcmdzLT5idXN5
ICYmIHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCi0JCWdv
dG8gcmV0cnk7CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CiAKIAllcnIgPSAwOwogb3V0
OgotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=

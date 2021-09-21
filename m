Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EC54138BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:38:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 286A0612A6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:38:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5317F61976; Tue, 21 Sep 2021 17:38:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18540612A6;
	Tue, 21 Sep 2021 17:38:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 91BD963296
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4F739618D1; Tue, 21 Sep 2021 17:37:19 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 7544A63426
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:37:15 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id t18so41546880wrb.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WIVZE6XCLajAHsuGZVfuYRo6jHzbL0m2blvNoQKDL8s=;
 b=SQNKYNDBEKD/Krc0eYgIJCbARqB0jxCcVHFFLAJZyGwCLxepZQfLSbQK62sAv7hKWD
 Co6OidpKDF28iTlSSA5rXFVLAwskepEPwH4gt+Q7RSQ6AETiI/iYrXxtyAPNGWsMs1ar
 mprcS/3pd+9mPToOYKPqZhDJkPOqRnroNiYjO+d2IqBFiwVsBNYsdUAzWmzNFanizmyn
 sQCYeCwQremHDmE6by7MDFPzPv1Inc0Af0kw0OFOxPwyg3zWgDJaSMJBW5aQ8As9X+KV
 vM9ciR3dlAThxZBFyLhNZgk5MWOGvbp3G5YQLAdai4ikWIxoWHEUyoQ1D6fBViPaZUnW
 4QyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WIVZE6XCLajAHsuGZVfuYRo6jHzbL0m2blvNoQKDL8s=;
 b=3INfB+sILzQ0KJ5fGXebP67xZ8ifeI1BY16XsR1wa8Xn0j/phRGDPGzVycreVgJR0B
 wngnRtxjwdsHY/UTWUM4YR11aicalb4q66TZbxbTiow9R48BARkI6FdY7zAtRNt9/zle
 qBYWsqSVxHOk8A8zODI2mj46tt5cjH0ZfZeAWabUMg+3hRCIkyxbEsdLIDi1yIZP1jVJ
 0hIEaGoOyDoHKwhRwdAOw2WNtH+vRi3s68WL4R2SZfIW4/aP4RExNr2oeHYQvvfTmovB
 wSf6JCaB4rV8J06HEgPjv/x1KhOJwmjEoa2To6KUZ0zdZHgK58Agx6bgj65EiZ7aL3Pg
 QnzQ==
X-Gm-Message-State: AOAM532E0Qbo3cg999zsUacpzDfS6DuKhmI0L5MjmbxeyqvcjJiKLgb/
 re5C0Tl8OGVQU+xEQLWjkAA=
X-Google-Smtp-Source: ABdhPJyOsbeXyUSUTQjwf5UAx36Wk4P1w0ATAaDgY9vHZJ9O2dOi6vpMASUeSf5Z90QlK2synazUrg==
X-Received: by 2002:a1c:192:: with SMTP id 140mr5916069wmb.186.1632245834575; 
 Tue, 21 Sep 2021 10:37:14 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 z13sm23310477wrs.90.2021.09.21.10.37.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:37:14 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: ckoenig.leichtzumerken@gmail.com, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 19:36:46 +0200
Message-Id: <20210921173659.246165-13-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921173659.246165-1-christian.koenig@amd.com>
References: <20210921173659.246165-1-christian.koenig@amd.com>
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

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D19408C5B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:18:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E45636242B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:18:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8710E69CE7; Mon, 13 Sep 2021 13:17:52 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67D9D6322C;
	Mon, 13 Sep 2021 13:17:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 923C861A44
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6F1E561A49; Mon, 13 Sep 2021 13:17:27 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by lists.linaro.org (Postfix) with ESMTPS id DE4F161900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:24 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id
 n7-20020a05600c3b8700b002f8ca941d89so6595989wms.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hvNXqtq5mdZJpJK7jpCUZ+hsh9G2TDoGYYpRx9Mul74=;
 b=ZdHYlTs0bEA+813Bp0u18Izy3By6RubkXsIkO/Xi8dKMbKpUbBs7SUF/bA9+CTMC9B
 xbeMxQVpC826j/BcBJ+n4KCdZbjM2kImV/isyK6D7m7myFUc2oTiU4ffKIcqIuqTQwIK
 2Nq6lMbkKRmB04b+whsc4jQamkC/TRPsU8tVCH5XYhwy8TE73NUfKkHpCzXZmM+D5EP3
 UbMmsioMGOOoDyr6oD2+Bck4EkaPzsg7xuR6LJv1IhEkBY4mDZCJ7Ox0hVS8exMx7czO
 n1NTA0xRIALoIF6PLPWMSHV4MUv3PS8innqNEOzmsxDRje2PcIIu1Y20yTgzIomQhrTE
 qgjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hvNXqtq5mdZJpJK7jpCUZ+hsh9G2TDoGYYpRx9Mul74=;
 b=HLRSqeAG0t2DK/Q5QHV1xyrUy63s0zd9ljHYdX0UpanCOvHkbwT0hPJjUWyAtX8RpE
 WH2n0oYjTrtZeHUOUheWHB8VM5KDS65o8OmP86ttwBQ1OF3b1HxHajthqngfuWVlQALX
 QSEsObn/EDOYhCty4smo7okHB3G4Tx1zEjP5Vg4R4LyI5y2cvTid0n5hpsBiSBbW59OO
 l+qQDra5kVQNGzNIHjxTpYJadjBJtTLxVGgE9yLAHtN5hejCf4+G31expml0CkTnytvA
 cXxb8k37CNtNKjVNynjDScZiJwmdBjgF0Sn13ioA3kcr1+wiJaiUwlHh5rPzlDgN9q02
 l3pg==
X-Gm-Message-State: AOAM532Gm2fKy6roS2+ZG+I7vBlrKeGEjblZqQh26qJzOqZ65JR2Su95
 qaWPue1CA38oECYM+zN56AC+hp7NGQTCojlA
X-Google-Smtp-Source: ABdhPJwhNrr0b3Jh3FZojwbhr6K59kgjilNH2x7fotTq32lvYrYMSXrCJyfJ2JKkkE1CYaVZjjV4Og==
X-Received: by 2002:a1c:a5d8:: with SMTP id o207mr7911060wme.104.1631539043442; 
 Mon, 13 Sep 2021 06:17:23 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:22 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:49 +0200
Message-Id: <20210913131707.45639-9-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 08/26] drm/amdgpu: use the new iterator in
 amdgpu_sync_resv
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U2ltcGxpZnlpbmcgdGhlIGNvZGUgYSBiaXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3N5bmMuYyB8IDQ0ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCmluZGV4IDg2MmViM2MxYzRjNS4uMDMxYmEyMGRl
YmI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9zeW5jLmMKQEAgLTI1Miw0
MSArMjUyLDI1IEBAIGludCBhbWRncHVfc3luY19yZXN2KHN0cnVjdCBhbWRncHVfZGV2aWNlICph
ZGV2LCBzdHJ1Y3QgYW1kZ3B1X3N5bmMgKnN5bmMsCiAJCSAgICAgc3RydWN0IGRtYV9yZXN2ICpy
ZXN2LCBlbnVtIGFtZGdwdV9zeW5jX21vZGUgbW9kZSwKIAkJICAgICB2b2lkICpvd25lcikKIHsK
LQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZmxpc3Q7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBj
dXJzb3I7CiAJc3RydWN0IGRtYV9mZW5jZSAqZjsKLQl1bnNpZ25lZCBpOwotCWludCByID0gMDsK
KwlpbnQgcjsKIAogCWlmIChyZXN2ID09IE5VTEwpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JLyog
YWx3YXlzIHN5bmMgdG8gdGhlIGV4Y2x1c2l2ZSBmZW5jZSAqLwotCWYgPSBkbWFfcmVzdl9leGNs
X2ZlbmNlKHJlc3YpOwotCWRtYV9mZW5jZV9jaGFpbl9mb3JfZWFjaChmLCBmKSB7Ci0JCXN0cnVj
dCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWluKGYpOwotCi0JCWlm
IChhbWRncHVfc3luY190ZXN0X2ZlbmNlKGFkZXYsIG1vZGUsIG93bmVyLCBjaGFpbiA/Ci0JCQkJ
CSAgIGNoYWluLT5mZW5jZSA6IGYpKSB7Ci0JCQlyID0gYW1kZ3B1X3N5bmNfZmVuY2Uoc3luYywg
Zik7Ci0JCQlkbWFfZmVuY2VfcHV0KGYpOwotCQkJaWYgKHIpCi0JCQkJcmV0dXJuIHI7Ci0JCQli
cmVhazsKLQkJfQotCX0KLQotCWZsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3QocmVzdik7Ci0J
aWYgKCFmbGlzdCkKLQkJcmV0dXJuIDA7Ci0KLQlmb3IgKGkgPSAwOyBpIDwgZmxpc3QtPnNoYXJl
ZF9jb3VudDsgKytpKSB7Ci0JCWYgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZsaXN0LT5z
aGFyZWRbaV0sCi0JCQkJCSAgICAgIGRtYV9yZXN2X2hlbGQocmVzdikpOwotCi0JCWlmIChhbWRn
cHVfc3luY190ZXN0X2ZlbmNlKGFkZXYsIG1vZGUsIG93bmVyLCBmKSkgewotCQkJciA9IGFtZGdw
dV9zeW5jX2ZlbmNlKHN5bmMsIGYpOwotCQkJaWYgKHIpCi0JCQkJcmV0dXJuIHI7CisJZG1hX3Jl
c3ZfZm9yX2VhY2hfZmVuY2UocmVzdiwgJmN1cnNvciwgdHJ1ZSwgZikgeworCQlkbWFfZmVuY2Vf
Y2hhaW5fZm9yX2VhY2goZiwgZikgeworCQkJc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4g
PSB0b19kbWFfZmVuY2VfY2hhaW4oZik7CisKKwkJCWlmIChhbWRncHVfc3luY190ZXN0X2ZlbmNl
KGFkZXYsIG1vZGUsIG93bmVyLCBjaGFpbiA/CisJCQkJCQkgICBjaGFpbi0+ZmVuY2UgOiBmKSkg
eworCQkJCXIgPSBhbWRncHVfc3luY19mZW5jZShzeW5jLCBmKTsKKwkJCQlkbWFfZmVuY2VfcHV0
KGYpOworCQkJCWlmIChyKQorCQkJCQlyZXR1cm4gcjsKKwkJCQlicmVhazsKKwkJCX0KIAkJfQog
CX0KIAlyZXR1cm4gMDsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK

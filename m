Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9A846BB67
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8128F622CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 58B2360AAA; Tue,  7 Dec 2021 12:35:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3B7E62C9F;
	Tue,  7 Dec 2021 12:35:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 19E6D62D3C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0CE7562421; Tue,  7 Dec 2021 12:34:48 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 91BAF62D21
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:44 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id o13so29095578wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7XV1ycL0JA6uJA4j325yZigiICpFpwzKb7YQrY4jauM=;
 b=pj9t0p0A4Wo19ZnH1VKW/t1vFVi96WKTE9qa5LmJo+Nw6R6l+9eRup+wt1lvvR9gKG
 N7bI+djt8RnrbrvobLfG3ONZj//2YtyVxWIA/Yk7bJBbDWqQGchtN2q+vLX80bc158xJ
 G+vrnK7qsmCzb88x7gEWyhv4YfkSLoJTQ3N0yYxqTiDRQdjlUcVRQ4Pk9usVOucBZ3LZ
 h0dSXU8xpHL2QcbhxglmI4mzvkqBjmnCRgj547ZXulaD/iqJCJ/WP+533l2k5FXUnRvY
 JdBw2keqyEat8gSy2ppqLstOyTD3/ZYAO8Gy3eNlV7sB9d7gm2qzY94E2mB99OWNSDVV
 yTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7XV1ycL0JA6uJA4j325yZigiICpFpwzKb7YQrY4jauM=;
 b=3ygjeeAlmFe0sNzzzV4LlzMxsJbqPfn7GjSIEOo3nSBwIi0YUaLiW4SDQaBOSWrgfB
 4dSNl1zOGlCSx0Ii/pY8Emex6K4+A+QYFi6buGhfOG+iz+yUbyywwnmIsXxgZ9f9XEGl
 PZO/7ikU1+KdVvsr1BUqR/wWcHnd3yaXSuV67SME+tvGK8jF4sF67du683ByzfKwm4Hk
 xw06aiSs9UEHzjV4W9m22KcyKbd+WBbvroDs7ParRpQiL3JsKvhx8kSaoSSHgMJ2PCb1
 PbhB36OQYZW5wUeHjVvh4YRsKioo0URcMu43Kt1jJwo57VjJ/JNbqd6ANmK+ve9mUa/O
 P/Qg==
X-Gm-Message-State: AOAM532lSUD3ziv4LBSBkBf3c6LREQRZcE6j6z7VBMAPEe9qMhIGZp90
 w5bUxvmpuVg6caU1GjZbH9k=
X-Google-Smtp-Source: ABdhPJwVIawAb44+Y6nZ7ksLr6chagYlk3TqUMwD0PEgxdO7LwORlA8yABy4FWK+h61tgsfFCqe30Q==
X-Received: by 2002:a5d:584e:: with SMTP id i14mr51733949wrf.386.1638880483013; 
 Tue, 07 Dec 2021 04:34:43 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:42 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:34:10 +0100
Message-Id: <20211207123411.167006-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 23/24] amdgpu: remove DMA-buf fence
 workaround
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

Tm90IG5lZWRlZCBhbnkgbW9yZSBub3cgd2UgaGF2ZSB0aGF0IGluc2lkZSB0aGUgZnJhbWV3b3Jr
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9ib19saXN0LmggfCAg
MSAtCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyAgICAgIHwgNTIgKysr
LS0tLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNDcg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2JvX2xpc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9ib19saXN0
LmgKaW5kZXggMDQ0YjQxZjBiZmQ5Li41MjlkNTJhMjA0Y2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9ib19saXN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2JvX2xpc3QuaApAQCAtMzQsNyArMzQsNiBAQCBzdHJ1Y3QgYW1k
Z3B1X2Zwcml2Owogc3RydWN0IGFtZGdwdV9ib19saXN0X2VudHJ5IHsKIAlzdHJ1Y3QgdHRtX3Zh
bGlkYXRlX2J1ZmZlcgl0djsKIAlzdHJ1Y3QgYW1kZ3B1X2JvX3ZhCQkqYm9fdmE7Ci0Jc3RydWN0
IGRtYV9mZW5jZV9jaGFpbgkJKmNoYWluOwogCXVpbnQzMl90CQkJcHJpb3JpdHk7CiAJc3RydWN0
IHBhZ2UJCQkqKnVzZXJfcGFnZXM7CiAJYm9vbAkJCQl1c2VyX2ludmFsaWRhdGVkOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwppbmRleCA5MjA5MWU4MDAwMjIuLjQxMzYwNmQx
MDA4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2NzLmMKQEAgLTU3NiwxNCAr
NTc2LDYgQEAgc3RhdGljIGludCBhbWRncHVfY3NfcGFyc2VyX2JvcyhzdHJ1Y3QgYW1kZ3B1X2Nz
X3BhcnNlciAqcCwKIAkJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSB0dG1fdG9fYW1kZ3B1X2JvKGUt
PnR2LmJvKTsKIAogCQllLT5ib192YSA9IGFtZGdwdV92bV9ib19maW5kKHZtLCBibyk7Ci0KLQkJ
aWYgKGJvLT50Ym8uYmFzZS5kbWFfYnVmICYmICFhbWRncHVfYm9fZXhwbGljaXRfc3luYyhibykp
IHsKLQkJCWUtPmNoYWluID0gZG1hX2ZlbmNlX2NoYWluX2FsbG9jKCk7Ci0JCQlpZiAoIWUtPmNo
YWluKSB7Ci0JCQkJciA9IC1FTk9NRU07Ci0JCQkJZ290byBlcnJvcl92YWxpZGF0ZTsKLQkJCX0K
LQkJfQogCX0KIAogCWFtZGdwdV9jc19nZXRfdGhyZXNob2xkX2Zvcl9tb3ZlcyhwLT5hZGV2LCAm
cC0+Ynl0ZXNfbW92ZWRfdGhyZXNob2xkLApAQCAtNjM0LDEzICs2MjYsOCBAQCBzdGF0aWMgaW50
IGFtZGdwdV9jc19wYXJzZXJfYm9zKHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwLAogCX0KIAog
ZXJyb3JfdmFsaWRhdGU6Ci0JaWYgKHIpIHsKLQkJYW1kZ3B1X2JvX2xpc3RfZm9yX2VhY2hfZW50
cnkoZSwgcC0+Ym9fbGlzdCkgewotCQkJZG1hX2ZlbmNlX2NoYWluX2ZyZWUoZS0+Y2hhaW4pOwot
CQkJZS0+Y2hhaW4gPSBOVUxMOwotCQl9CisJaWYgKHIpCiAJCXR0bV9ldV9iYWNrb2ZmX3Jlc2Vy
dmF0aW9uKCZwLT50aWNrZXQsICZwLT52YWxpZGF0ZWQpOwotCX0KIG91dDoKIAlyZXR1cm4gcjsK
IH0KQEAgLTY4MCwxNyArNjY3LDkgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X2NzX3BhcnNlcl9maW5p
KHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwYXJzZXIsIGludCBlcnJvciwKIHsKIAl1bnNpZ25l
ZCBpOwogCi0JaWYgKGVycm9yICYmIGJhY2tvZmYpIHsKLQkJc3RydWN0IGFtZGdwdV9ib19saXN0
X2VudHJ5ICplOwotCi0JCWFtZGdwdV9ib19saXN0X2Zvcl9lYWNoX2VudHJ5KGUsIHBhcnNlci0+
Ym9fbGlzdCkgewotCQkJZG1hX2ZlbmNlX2NoYWluX2ZyZWUoZS0+Y2hhaW4pOwotCQkJZS0+Y2hh
aW4gPSBOVUxMOwotCQl9Ci0KKwlpZiAoZXJyb3IgJiYgYmFja29mZikKIAkJdHRtX2V1X2JhY2tv
ZmZfcmVzZXJ2YXRpb24oJnBhcnNlci0+dGlja2V0LAogCQkJCQkgICAmcGFyc2VyLT52YWxpZGF0
ZWQpOwotCX0KIAogCWZvciAoaSA9IDA7IGkgPCBwYXJzZXItPm51bV9wb3N0X2RlcHM7IGkrKykg
ewogCQlkcm1fc3luY29ial9wdXQocGFyc2VyLT5wb3N0X2RlcHNbaV0uc3luY29iaik7CkBAIC0x
MjY1LDI5ICsxMjQ0LDEwIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1k
Z3B1X2NzX3BhcnNlciAqcCwKIAogCWFtZGdwdV92bV9tb3ZlX3RvX2xydV90YWlsKHAtPmFkZXYs
ICZmcHJpdi0+dm0pOwogCi0JYW1kZ3B1X2JvX2xpc3RfZm9yX2VhY2hfZW50cnkoZSwgcC0+Ym9f
bGlzdCkgewotCQlzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YgPSBlLT50di5iby0+YmFzZS5yZXN2Owot
CQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiA9IGUtPmNoYWluOwotCQlzdHJ1Y3QgZG1h
X3Jlc3ZfaXRlciBjdXJzb3I7Ci0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwotCi0JCWlmICgh
Y2hhaW4pCi0JCQljb250aW51ZTsKLQotCQkvKgotCQkgKiBXb3JrIGFyb3VuZCBkbWFfcmVzdiBz
aG9ydGNvbW1pbmdzIGJ5IHdyYXBwaW5nIHVwIHRoZQotCQkgKiBzdWJtaXNzaW9uIGluIGEgZG1h
X2ZlbmNlX2NoYWluIGFuZCBhZGQgaXQgYXMgZXhjbHVzaXZlCi0JCSAqIGZlbmNlLgotCQkgKi8K
LQkJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNvciwgcmVzdiwKLQkJCQkJRE1BX1JFU1Zf
VVNBR0VfV1JJVEUsCi0JCQkJCWZlbmNlKSB7Ci0JCQlicmVhazsKLQkJfQotCQlkbWFfZmVuY2Vf
Y2hhaW5faW5pdChjaGFpbiwgZmVuY2UsIGRtYV9mZW5jZV9nZXQocC0+ZmVuY2UpLCAxKTsKLQkJ
ZG1hX3Jlc3ZfYWRkX2ZlbmNlKHJlc3YsICZjaGFpbi0+YmFzZSwgRE1BX1JFU1ZfVVNBR0VfV1JJ
VEUpOwotCQllLT5jaGFpbiA9IE5VTEw7Ci0JfQorCS8qIEZvciBub3cgbWFudWFsbHkgYWRkIHRo
ZSByZXN1bHRpbmcgZmVuY2UgYXMgd3JpdGVyIGFzIHdlbGwgKi8KKwlhbWRncHVfYm9fbGlzdF9m
b3JfZWFjaF9lbnRyeShlLCBwLT5ib19saXN0KQorCQlkbWFfcmVzdl9hZGRfZmVuY2UoZS0+dHYu
Ym8tPmJhc2UucmVzdiwgcC0+ZmVuY2UsCisJCQkJICAgRE1BX1JFU1ZfVVNBR0VfV1JJVEUpOwog
CiAJdHRtX2V1X2ZlbmNlX2J1ZmZlcl9vYmplY3RzKCZwLT50aWNrZXQsICZwLT52YWxpZGF0ZWQs
IHAtPmZlbmNlKTsKIAltdXRleF91bmxvY2soJnAtPmFkZXYtPm5vdGlmaWVyX2xvY2spOwotLSAK
Mi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ED240F7A0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:35:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84BF263639
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:35:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AA85F69CCC; Fri, 17 Sep 2021 12:35:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0341666740;
	Fri, 17 Sep 2021 12:35:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4A6E066BCE
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0CEA363413; Fri, 17 Sep 2021 12:35:23 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 6124E63413
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:20 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id x6so14881401wrv.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a/rwiQ+ATFs+sDMWUu+w6Rs7NoUiJd4ETVjWIVuhdiI=;
 b=m5MN00i4b006eFm3fu30uWdf+tyKgl+dyeP/mt021jNoHcFFZBwd7lLGzdmZ3slJUE
 fvBhHXbSoBdhVXBre0nDAb1aYrEazpdHFbf5aN+d0nYJ9WAsf5NIVAsAYdXYJkrHcVQE
 q8GzAjxdoQzmViGD5bNdd/u6a5tfhPM/AxCHS+kJDVDckphIbIEOBw9OA3ZGfdNpyFpq
 Vg2uXeHuH7oveqGzYIhK59a2yDbIyrNWwNkfUDULRauR3ThZqyVdIE5QV1BFHLpy/wq9
 jKuFLEGtWE5pVosH6Yih0WBwFeTBzPhBGk6otWzgrAwrd4JN90TkbGqkRMRZod4GXwtG
 rraQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a/rwiQ+ATFs+sDMWUu+w6Rs7NoUiJd4ETVjWIVuhdiI=;
 b=Agffw//lVXZ11biXNOvqmwArevK+RoDION+vG/vk0mxn60soMR0TnHBOu83VeJYUHW
 hysSba5fL7Opo0ZDPJJ4CvamUrR1EGxhHqOCFTX/1Mb8Fjdo2dMQVECTdq5eEyI3lEbI
 zqiMkpU2Qvt1ko6Bf7JQW6fi7d2sDjIuqkRPD2rGviSkkiRAcV3iVeI+l2QUSAvhPdWq
 muawiimF+B2zTe/Kqm6hHXLKFvk3nT474VL3yhY1DQFVY+aF+5auYrVn9noPsEPgPldn
 /SOqQ2z4r7FqGRX/YHDQ27ScbG93a+uXQhjjhZuxzG+j31QK9Gayl65dJ2WkHUSFE/eG
 Q1Wg==
X-Gm-Message-State: AOAM5313nkRVDlxLym9UAIxiXy8EQfV2kXeAO/pJmtpvCJLvx+DhBRox
 PcqH7tXxdNhGMWOZzGr1tXp20cjucAk=
X-Google-Smtp-Source: ABdhPJw2Xk+DGoJdfDUIjxpO8TN5jWGOTM3tr7l7PGRy9eESCcjoRc/3WnWS7CZs6hfj9f3STavDNw==
X-Received: by 2002:a5d:5981:: with SMTP id n1mr11975526wri.82.1631882119510; 
 Fri, 17 Sep 2021 05:35:19 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:19 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:51 +0200
Message-Id: <20210917123513.1106-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 04/26] dma-buf: use new iterator in
 dma_resv_get_fences v2
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
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KCnYyOiB1c2Ugc2l6ZW9mKHZvaWQq
KSBpbnN0ZWFkCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAxMTIgKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQwIGluc2Vy
dGlvbnMoKyksIDcyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggNDA2MTUwZGVhNWU0
Li45YjkwYmQ5YWMwMTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC00ODcsOTkgKzQ4Nyw2NyBAQCBFWFBP
UlRfU1lNQk9MKGRtYV9yZXN2X2NvcHlfZmVuY2VzKTsKICAqIGRtYV9yZXN2X2dldF9mZW5jZXMg
LSBHZXQgYW4gb2JqZWN0J3Mgc2hhcmVkIGFuZCBleGNsdXNpdmUKICAqIGZlbmNlcyB3aXRob3V0
IHVwZGF0ZSBzaWRlIGxvY2sgaGVsZAogICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdAot
ICogQHBmZW5jZV9leGNsOiB0aGUgcmV0dXJuZWQgZXhjbHVzaXZlIGZlbmNlIChvciBOVUxMKQot
ICogQHBzaGFyZWRfY291bnQ6IHRoZSBudW1iZXIgb2Ygc2hhcmVkIGZlbmNlcyByZXR1cm5lZAot
ICogQHBzaGFyZWQ6IHRoZSBhcnJheSBvZiBzaGFyZWQgZmVuY2UgcHRycyByZXR1cm5lZCAoYXJy
YXkgaXMga3JlYWxsb2MnZCB0bworICogQGZlbmNlX2V4Y2w6IHRoZSByZXR1cm5lZCBleGNsdXNp
dmUgZmVuY2UgKG9yIE5VTEwpCisgKiBAc2hhcmVkX2NvdW50OiB0aGUgbnVtYmVyIG9mIHNoYXJl
ZCBmZW5jZXMgcmV0dXJuZWQKKyAqIEBzaGFyZWQ6IHRoZSBhcnJheSBvZiBzaGFyZWQgZmVuY2Ug
cHRycyByZXR1cm5lZCAoYXJyYXkgaXMga3JlYWxsb2MnZCB0bwogICogdGhlIHJlcXVpcmVkIHNp
emUsIGFuZCBtdXN0IGJlIGZyZWVkIGJ5IGNhbGxlcikKICAqCiAgKiBSZXRyaWV2ZSBhbGwgZmVu
Y2VzIGZyb20gdGhlIHJlc2VydmF0aW9uIG9iamVjdC4gSWYgdGhlIHBvaW50ZXIgZm9yIHRoZQog
ICogZXhjbHVzaXZlIGZlbmNlIGlzIG5vdCBzcGVjaWZpZWQgdGhlIGZlbmNlIGlzIHB1dCBpbnRv
IHRoZSBhcnJheSBvZiB0aGUKICAqIHNoYXJlZCBmZW5jZXMgYXMgd2VsbC4gUmV0dXJucyBlaXRo
ZXIgemVybyBvciAtRU5PTUVNLgogICovCi1pbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgc3RydWN0IGRtYV9mZW5jZSAqKnBmZW5jZV9leGNsLAotCQkJdW5zaWdu
ZWQgaW50ICpwc2hhcmVkX2NvdW50LAotCQkJc3RydWN0IGRtYV9mZW5jZSAqKipwc2hhcmVkKQor
aW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFf
ZmVuY2UgKipmZW5jZV9leGNsLAorCQkJdW5zaWduZWQgaW50ICpzaGFyZWRfY291bnQsIHN0cnVj
dCBkbWFfZmVuY2UgKioqc2hhcmVkKQogewotCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFyZWQgPSBO
VUxMOwotCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlX2V4Y2w7Ci0JdW5zaWduZWQgaW50IHNoYXJl
ZF9jb3VudDsKLQlpbnQgcmV0ID0gMTsKLQotCWRvIHsKLQkJc3RydWN0IGRtYV9yZXN2X2xpc3Qg
KmZvYmo7Ci0JCXVuc2lnbmVkIGludCBpLCBzZXE7Ci0JCXNpemVfdCBzeiA9IDA7Ci0KLQkJc2hh
cmVkX2NvdW50ID0gaSA9IDA7Ci0KLQkJcmN1X3JlYWRfbG9jaygpOwotCQlzZXEgPSByZWFkX3Nl
cWNvdW50X2JlZ2luKCZvYmotPnNlcSk7CisJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwor
CXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwogCi0JCWZlbmNlX2V4Y2wgPSBkbWFfcmVzdl9leGNs
X2ZlbmNlKG9iaik7Ci0JCWlmIChmZW5jZV9leGNsICYmICFkbWFfZmVuY2VfZ2V0X3JjdShmZW5j
ZV9leGNsKSkKLQkJCWdvdG8gdW5sb2NrOworCSpzaGFyZWRfY291bnQgPSAwOworCSpzaGFyZWQg
PSBOVUxMOwogCi0JCWZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChvYmopOwotCQlpZiAoZm9i
aikKLQkJCXN6ICs9IHNpemVvZigqc2hhcmVkKSAqIGZvYmotPnNoYXJlZF9tYXg7CisJaWYgKGZl
bmNlX2V4Y2wpCisJCSpmZW5jZV9leGNsID0gTlVMTDsKIAotCQlpZiAoIXBmZW5jZV9leGNsICYm
IGZlbmNlX2V4Y2wpCi0JCQlzeiArPSBzaXplb2YoKnNoYXJlZCk7CisJcmN1X3JlYWRfbG9jaygp
OworCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB0cnVlKTsKKwlkbWFfcmVzdl9m
b3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewogCi0JCWlmIChzeikgewot
CQkJc3RydWN0IGRtYV9mZW5jZSAqKm5zaGFyZWQ7CisJCWlmIChjdXJzb3IuaXNfZmlyc3QpIHsK
KwkJCXVuc2lnbmVkIGludCBjb3VudDsKIAotCQkJbnNoYXJlZCA9IGtyZWFsbG9jKHNoYXJlZCwg
c3osCi0JCQkJCSAgIEdGUF9OT1dBSVQgfCBfX0dGUF9OT1dBUk4pOwotCQkJaWYgKCFuc2hhcmVk
KSB7Ci0JCQkJcmN1X3JlYWRfdW5sb2NrKCk7CisJCQl3aGlsZSAoKnNoYXJlZF9jb3VudCkKKwkJ
CQlkbWFfZmVuY2VfcHV0KCgqc2hhcmVkKVstLSgqc2hhcmVkX2NvdW50KV0pOwogCi0JCQkJZG1h
X2ZlbmNlX3B1dChmZW5jZV9leGNsKTsKLQkJCQlmZW5jZV9leGNsID0gTlVMTDsKKwkJCWlmIChm
ZW5jZV9leGNsKQorCQkJCWRtYV9mZW5jZV9wdXQoKmZlbmNlX2V4Y2wpOwogCi0JCQkJbnNoYXJl
ZCA9IGtyZWFsbG9jKHNoYXJlZCwgc3osIEdGUF9LRVJORUwpOwotCQkJCWlmIChuc2hhcmVkKSB7
Ci0JCQkJCXNoYXJlZCA9IG5zaGFyZWQ7Ci0JCQkJCWNvbnRpbnVlOwotCQkJCX0KKwkJCWNvdW50
ID0gY3Vyc29yLmZlbmNlcyA/IGN1cnNvci5mZW5jZXMtPnNoYXJlZF9jb3VudCA6IDA7CisJCQlj
b3VudCArPSBmZW5jZV9leGNsID8gMCA6IDE7CisJCQlyY3VfcmVhZF91bmxvY2soKTsKIAotCQkJ
CXJldCA9IC1FTk9NRU07Ci0JCQkJYnJlYWs7Ci0JCQl9Ci0JCQlzaGFyZWQgPSBuc2hhcmVkOwot
CQkJc2hhcmVkX2NvdW50ID0gZm9iaiA/IGZvYmotPnNoYXJlZF9jb3VudCA6IDA7Ci0JCQlmb3Ig
KGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsKLQkJCQlzaGFyZWRbaV0gPSByY3VfZGVy
ZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKLQkJCQlpZiAoIWRtYV9mZW5jZV9nZXRfcmN1KHNo
YXJlZFtpXSkpCi0JCQkJCWJyZWFrOworCQkJLyogRXZlbnR1YWxseSByZS1hbGxvY2F0ZSB0aGUg
YXJyYXkgKi8KKwkJCSpzaGFyZWQgPSBrcmVhbGxvY19hcnJheSgqc2hhcmVkLCBjb3VudCwKKwkJ
CQkJCSBzaXplb2Yodm9pZCAqKSwKKwkJCQkJCSBHRlBfS0VSTkVMKTsKKwkJCWlmIChjb3VudCAm
JiAhKnNoYXJlZCkgeworCQkJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOworCQkJCXJldHVy
biAtRU5PTUVNOwogCQkJfQorCQkJcmN1X3JlYWRfbG9jaygpOwogCQl9CiAKLQkJaWYgKGkgIT0g
c2hhcmVkX2NvdW50IHx8IHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKSB7Ci0J
CQl3aGlsZSAoaS0tKQotCQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKLQkJCWRtYV9mZW5j
ZV9wdXQoZmVuY2VfZXhjbCk7Ci0JCQlnb3RvIHVubG9jazsKLQkJfQotCi0JCXJldCA9IDA7Ci11
bmxvY2s6Ci0JCXJjdV9yZWFkX3VubG9jaygpOwotCX0gd2hpbGUgKHJldCk7Ci0KLQlpZiAocGZl
bmNlX2V4Y2wpCi0JCSpwZmVuY2VfZXhjbCA9IGZlbmNlX2V4Y2w7Ci0JZWxzZSBpZiAoZmVuY2Vf
ZXhjbCkKLQkJc2hhcmVkW3NoYXJlZF9jb3VudCsrXSA9IGZlbmNlX2V4Y2w7CisJCWlmIChkbWFf
cmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSAmJiBmZW5jZV9leGNsKQorCQkJKmZlbmNl
X2V4Y2wgPSBmZW5jZTsKKwkJZWxzZQorCQkJKCpzaGFyZWQpWygqc2hhcmVkX2NvdW50KSsrXSA9
IGZlbmNlOwogCi0JaWYgKCFzaGFyZWRfY291bnQpIHsKLQkJa2ZyZWUoc2hhcmVkKTsKLQkJc2hh
cmVkID0gTlVMTDsKKwkJLyogRG9uJ3QgZHJvcCB0aGUgcmVmZXJlbmNlICovCisJCWZlbmNlID0g
TlVMTDsKIAl9CisJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7CisJcmN1X3JlYWRfdW5sb2Nr
KCk7CiAKLQkqcHNoYXJlZF9jb3VudCA9IHNoYXJlZF9jb3VudDsKLQkqcHNoYXJlZCA9IHNoYXJl
ZDsKLQlyZXR1cm4gcmV0OworCXJldHVybiAwOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jl
c3ZfZ2V0X2ZlbmNlcyk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK

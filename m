Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 153DF408C4D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 15:17:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A6C6665EE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Sep 2021 13:17:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ED89563542; Mon, 13 Sep 2021 13:17:39 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CD3663542;
	Mon, 13 Sep 2021 13:17:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EF9EF6242A
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9141C619C1; Mon, 13 Sep 2021 13:17:22 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id B2BE861F3E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 13:17:19 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id w29so13883496wra.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Sep 2021 06:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ivU+OEHPZyTPE7GE4j0vohkEJckChOzR5FJoAf7dYnA=;
 b=J5pWzbtViRHhiLdvzRYSg/iy139gaerhwykupE9HkjblLjIXkXaLdMChYI/0qOX/OC
 rAx1Jka/f6UL9UwrbXw1pPP+HCmRzXo/rB1DMIRA8Ag5wWDk2SiFVEpz7hXs3IW2LMuy
 ULz8g75lc5aXJ/90nzVNIq7FemVAhsEC4kcMPT1RrIXbsr8/eYEPC1S++lU4jV6ZmWxj
 XbDwi2cCC8ZSDuXqmorI79dAkXuSfvRsWwBVLc6R+mbjyCf4wtUuhWTtaNcJM8s6QR0J
 rKoFCxi/wcmA1OTk4iNXi4Tkv2HdggHnBGM88llUxz72uxDMM8k2uCcqocXKkzZtsfbq
 JCxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ivU+OEHPZyTPE7GE4j0vohkEJckChOzR5FJoAf7dYnA=;
 b=gzcN9wtu8olFFFZBtzjQ2P3Ehwj2G7gkvSgRUD4YP46ZRQR6cV291+oxk9VEYXTMW7
 MQ3mvtR1L+DdXoiGVtTGe5+yq1MY8kNGzjwDhecgN/FhCMfm4Sp4dblHf82okf2DcF9C
 d/vorh5GRH9xF0+pj21kyYergdxwS/4PxH19/1FrtxO5eeLsJ136JO651oWAIMJ8gxRC
 AZ7N4i8GQWkzHVxZP6wrtjow7LwWo521+Jp/IpJ/cmiYxuAclEou/cBJqbw204jAZds4
 y9pNPKDx8C604uAwzuUq/e7LROBFF5r5oWJkIoG0EP7Zqt7NWzZJ5lmwIqcvZHnaqsJq
 luOw==
X-Gm-Message-State: AOAM5339Skb6mt2GWAN4BZOmssjCXwb6x3rMGkS0tuyHDaS4b/14bmf2
 esDgdTbiLe5bCWuPsR+P4bmWVM9D4apCTY/7
X-Google-Smtp-Source: ABdhPJy7uSu97RQXEG8GegudJHIf1HA6JvebsnWu5zCM57mF6N/7kCZqy7tbuUGVW9dQkNEF8c/BNw==
X-Received: by 2002:adf:9e0b:: with SMTP id u11mr12588355wre.85.1631539038697; 
 Mon, 13 Sep 2021 06:17:18 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 h18sm7602834wrb.33.2021.09.13.06.17.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Sep 2021 06:17:16 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Date: Mon, 13 Sep 2021 15:16:45 +0200
Message-Id: <20210913131707.45639-5-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
References: <20210913131707.45639-1-christian.koenig@amd.com>
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24gbXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4CnJl
dHJ5IGxvZ2ljIGlzIG5vdyBoYW5kbGVkIGVsc2V3aGVyZS4KCnYyOiB1c2Ugc2l6ZW9mKHZvaWQq
KSBpbnN0ZWFkCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAxMTAgKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDM3IGluc2Vy
dGlvbnMoKyksIDczIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKaW5kZXggOWE5YzBiYmE3NzJi
Li4wYTBlM2VlNjI2NDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC00OTMsOTkgKzQ5Myw2MyBAQCBFWFBP
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
cWNvdW50X2JlZ2luKCZvYmotPnNlcSk7Ci0KLQkJZmVuY2VfZXhjbCA9IGRtYV9yZXN2X2V4Y2xf
ZmVuY2Uob2JqKTsKLQkJaWYgKGZlbmNlX2V4Y2wgJiYgIWRtYV9mZW5jZV9nZXRfcmN1KGZlbmNl
X2V4Y2wpKQotCQkJZ290byB1bmxvY2s7CisJc3RydWN0IGRtYV9yZXN2X2N1cnNvciBjdXJzb3I7
CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAKLQkJZm9iaiA9IGRtYV9yZXN2X3NoYXJlZF9s
aXN0KG9iaik7Ci0JCWlmIChmb2JqKQotCQkJc3ogKz0gc2l6ZW9mKCpzaGFyZWQpICogZm9iai0+
c2hhcmVkX21heDsKKwkqc2hhcmVkX2NvdW50ID0gMDsKKwkqc2hhcmVkID0gTlVMTDsKIAotCQlp
ZiAoIXBmZW5jZV9leGNsICYmIGZlbmNlX2V4Y2wpCi0JCQlzeiArPSBzaXplb2YoKnNoYXJlZCk7
CisJaWYgKGZlbmNlX2V4Y2wpCisJCSpmZW5jZV9leGNsID0gTlVMTDsKIAotCQlpZiAoc3opIHsK
LQkJCXN0cnVjdCBkbWFfZmVuY2UgKipuc2hhcmVkOworCXJjdV9yZWFkX2xvY2soKTsKKwlkbWFf
cmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZChvYmosICZjdXJzb3IsIHRydWUsIGZlbmNlKSB7
CiAKLQkJCW5zaGFyZWQgPSBrcmVhbGxvYyhzaGFyZWQsIHN6LAotCQkJCQkgICBHRlBfTk9XQUlU
IHwgX19HRlBfTk9XQVJOKTsKLQkJCWlmICghbnNoYXJlZCkgewotCQkJCXJjdV9yZWFkX3VubG9j
aygpOworCQlpZiAoY3Vyc29yLmlzX2ZpcnN0KSB7CisJCQl1bnNpZ25lZCBpbnQgY291bnQ7CiAK
LQkJCQlkbWFfZmVuY2VfcHV0KGZlbmNlX2V4Y2wpOwotCQkJCWZlbmNlX2V4Y2wgPSBOVUxMOwor
CQkJd2hpbGUgKCpzaGFyZWRfY291bnQpCisJCQkJZG1hX2ZlbmNlX3B1dCgoKnNoYXJlZClbLS0o
KnNoYXJlZF9jb3VudCldKTsKIAotCQkJCW5zaGFyZWQgPSBrcmVhbGxvYyhzaGFyZWQsIHN6LCBH
RlBfS0VSTkVMKTsKLQkJCQlpZiAobnNoYXJlZCkgewotCQkJCQlzaGFyZWQgPSBuc2hhcmVkOwot
CQkJCQljb250aW51ZTsKLQkJCQl9CisJCQlpZiAoZmVuY2VfZXhjbCkKKwkJCQlkbWFfZmVuY2Vf
cHV0KCpmZW5jZV9leGNsKTsKIAotCQkJCXJldCA9IC1FTk9NRU07Ci0JCQkJYnJlYWs7Ci0JCQl9
Ci0JCQlzaGFyZWQgPSBuc2hhcmVkOwotCQkJc2hhcmVkX2NvdW50ID0gZm9iaiA/IGZvYmotPnNo
YXJlZF9jb3VudCA6IDA7Ci0JCQlmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsK
LQkJCQlzaGFyZWRbaV0gPSByY3VfZGVyZWZlcmVuY2UoZm9iai0+c2hhcmVkW2ldKTsKLQkJCQlp
ZiAoIWRtYV9mZW5jZV9nZXRfcmN1KHNoYXJlZFtpXSkpCi0JCQkJCWJyZWFrOwotCQkJfQotCQl9
CisJCQljb3VudCA9IGN1cnNvci5mZW5jZXMgPyBjdXJzb3IuZmVuY2VzLT5zaGFyZWRfY291bnQg
OiAwOworCQkJY291bnQgKz0gZmVuY2VfZXhjbCA/IDAgOiAxOworCQkJcmN1X3JlYWRfdW5sb2Nr
KCk7CiAKLQkJaWYgKGkgIT0gc2hhcmVkX2NvdW50IHx8IHJlYWRfc2VxY291bnRfcmV0cnkoJm9i
ai0+c2VxLCBzZXEpKSB7Ci0JCQl3aGlsZSAoaS0tKQotCQkJCWRtYV9mZW5jZV9wdXQoc2hhcmVk
W2ldKTsKLQkJCWRtYV9mZW5jZV9wdXQoZmVuY2VfZXhjbCk7Ci0JCQlnb3RvIHVubG9jazsKKwkJ
CS8qIEV2ZW50dWFsbHkgcmUtYWxsb2NhdGUgdGhlIGFycmF5ICovCisJCQkqc2hhcmVkID0ga3Jl
YWxsb2NfYXJyYXkoKnNoYXJlZCwgY291bnQsCisJCQkJCQkgc2l6ZW9mKHZvaWQqKSwKKwkJCQkJ
CSBHRlBfS0VSTkVMKTsKKwkJCWlmIChjb3VudCAmJiAhKnNoYXJlZCkKKwkJCQlyZXR1cm4gLUVO
T01FTTsKKwkJCXJjdV9yZWFkX2xvY2soKTsKIAkJfQogCi0JCXJldCA9IDA7Ci11bmxvY2s6Ci0J
CXJjdV9yZWFkX3VubG9jaygpOwotCX0gd2hpbGUgKHJldCk7Ci0KLQlpZiAocGZlbmNlX2V4Y2wp
Ci0JCSpwZmVuY2VfZXhjbCA9IGZlbmNlX2V4Y2w7Ci0JZWxzZSBpZiAoZmVuY2VfZXhjbCkKLQkJ
c2hhcmVkW3NoYXJlZF9jb3VudCsrXSA9IGZlbmNlX2V4Y2w7CisJCWlmIChjdXJzb3IuaXNfZXhj
bHVzaXZlICYmIGZlbmNlX2V4Y2wpCisJCQkqZmVuY2VfZXhjbCA9IGZlbmNlOworCQllbHNlCisJ
CQkoKnNoYXJlZClbKCpzaGFyZWRfY291bnQpKytdID0gZmVuY2U7CiAKLQlpZiAoIXNoYXJlZF9j
b3VudCkgewotCQlrZnJlZShzaGFyZWQpOwotCQlzaGFyZWQgPSBOVUxMOworCQkvKiBEb24ndCBk
cm9wIHRoZSByZWZlcmVuY2UgKi8KKwkJZmVuY2UgPSBOVUxMOwogCX0KKwlyY3VfcmVhZF91bmxv
Y2soKTsKIAotCSpwc2hhcmVkX2NvdW50ID0gc2hhcmVkX2NvdW50OwotCSpwc2hhcmVkID0gc2hh
cmVkOwotCXJldHVybiByZXQ7CisJcmV0dXJuIDA7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkbWFf
cmVzdl9nZXRfZmVuY2VzKTsKIAotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

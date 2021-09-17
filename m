Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D8A40F79E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 14:35:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A2D663423
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Sep 2021 12:35:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4671066BC3; Fri, 17 Sep 2021 12:35:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78F4D69CF6;
	Fri, 17 Sep 2021 12:35:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B3A3F6328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AEB9163425; Fri, 17 Sep 2021 12:35:21 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 997A76328C
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 12:35:19 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id u15so14932416wru.6
 for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Sep 2021 05:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ipbb4pGWM/3XFhYqg0eQ7bjJFj3sOFyI7ZKdJRE6D0M=;
 b=mAa7/f9+tf2+hjbJCj8af3ffhew+9MkGBVjBYwijaUa2GndzOvfjywhRYuyHrgzEjh
 xtSBzSuvfsqpSQLs0bsZM8EdRSUWIRHyvPFPxN7aLX/LZQRTaHFK0Ew65YKvcdg70ZOV
 3fJiCCn6yUSLU7Tb/hsIfz9QRduJOhVYYuLE6xr5frmSIiC6o4mTkEyHIJDMjWTn0iM9
 jO4PhJsSje9OO+piF5aFjCSD0spX1xS48Fou+M/B7Qq97HbgkT9g2ZykhXqvJJcFamhL
 5goZox9ThDmWU4vzCiPi0JuhhvNh/NxH7mVzZdXmlCAV6zmcKl9kENOOQrowKq8iouU3
 L1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ipbb4pGWM/3XFhYqg0eQ7bjJFj3sOFyI7ZKdJRE6D0M=;
 b=kijpaGS5X3lybuvwALlNtDCDYOWVw9/SSlmTwam2qs54ouxaTMw20s5i+NaS5ePTwW
 RVMo12G5PSe56cOWXazUK9NySiz2gQluh4GEE027j9DSnypMuta6V0f8TyfTvsY/ylO/
 2WUlKcooxD9MM+2lDkJcqqMQMtd/4T8Ad5dbE6BG6wu/VtMI4WZ4yDwrQDemiQL3DB2n
 B8Dh5uRFznauFxUhNTcr7GBwmCskvCUy+JkxtM6Utg1Hiwtyjh3KZDtY9nQ5asX3ff+C
 oIhIROo93Bz6H/EZC5eT0tby71o6WGzhGw53rvXY6HtDpARMQpRJ54ZXlU4NmF4wYvx0
 IT/w==
X-Gm-Message-State: AOAM531848LJoUrtvB+0VYTYKeE82e8VJzUXs/gd1tM0krvms9fDT5nf
 FiEt9GH/CPUgMD47a5dExuJxDANhZhM=
X-Google-Smtp-Source: ABdhPJwTOXrXCvAxWacGW1AiWElE/T+9t49LBa469jBNob+iaJiqRYFm2UdS0ez+WxQeY7AjNFFc7w==
X-Received: by 2002:adf:f904:: with SMTP id b4mr11824300wrr.403.1631882118730; 
 Fri, 17 Sep 2021 05:35:18 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 l21sm6122049wmh.31.2021.09.17.05.35.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:35:18 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Sep 2021 14:34:50 +0200
Message-Id: <20210917123513.1106-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210917123513.1106-1-christian.koenig@amd.com>
References: <20210917123513.1106-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 03/26] dma-buf: use new iterator in
 dma_resv_copy_fences
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
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEt
YnVmL2RtYS1yZXN2LmMgfCA4NiArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMKaW5kZXggYTNjNzlhOTlmYjQ0Li40MDYxNTBkZWE1ZTQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
CkBAIC00MjYsNzQgKzQyNiw1OCBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9pdGVyX3dh
bGspOwogICovCiBpbnQgZG1hX3Jlc3ZfY29weV9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpkc3Qs
IHN0cnVjdCBkbWFfcmVzdiAqc3JjKQogewotCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpzcmNfbGlz
dCwgKmRzdF9saXN0OwotCXN0cnVjdCBkbWFfZmVuY2UgKm9sZCwgKm5ldzsKLQl1bnNpZ25lZCBp
bnQgaTsKKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7CisJc3RydWN0IGRtYV9yZXN2X2xp
c3QgKmxpc3Q7CisJc3RydWN0IGRtYV9mZW5jZSAqZiwgKmV4Y2w7CiAKIAlkbWFfcmVzdl9hc3Nl
cnRfaGVsZChkc3QpOwogCi0JcmN1X3JlYWRfbG9jaygpOwotCXNyY19saXN0ID0gZG1hX3Jlc3Zf
c2hhcmVkX2xpc3Qoc3JjKTsKLQotcmV0cnk6Ci0JaWYgKHNyY19saXN0KSB7Ci0JCXVuc2lnbmVk
IGludCBzaGFyZWRfY291bnQgPSBzcmNfbGlzdC0+c2hhcmVkX2NvdW50OwotCi0JCXJjdV9yZWFk
X3VubG9jaygpOworCWxpc3QgPSBOVUxMOworCWV4Y2wgPSBOVUxMOwogCi0JCWRzdF9saXN0ID0g
ZG1hX3Jlc3ZfbGlzdF9hbGxvYyhzaGFyZWRfY291bnQpOwotCQlpZiAoIWRzdF9saXN0KQotCQkJ
cmV0dXJuIC1FTk9NRU07CisJcmN1X3JlYWRfbG9jaygpOworCWRtYV9yZXN2X2l0ZXJfYmVnaW4o
JmN1cnNvciwgc3JjLCB0cnVlKTsKKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgm
Y3Vyc29yLCBmKSB7CiAKLQkJcmN1X3JlYWRfbG9jaygpOwotCQlzcmNfbGlzdCA9IGRtYV9yZXN2
X3NoYXJlZF9saXN0KHNyYyk7Ci0JCWlmICghc3JjX2xpc3QgfHwgc3JjX2xpc3QtPnNoYXJlZF9j
b3VudCA+IHNoYXJlZF9jb3VudCkgewotCQkJa2ZyZWUoZHN0X2xpc3QpOwotCQkJZ290byByZXRy
eTsKLQkJfQorCQlpZiAoY3Vyc29yLmlzX2ZpcnN0KSB7CisJCQlkbWFfcmVzdl9saXN0X2ZyZWUo
bGlzdCk7CisJCQlkbWFfZmVuY2VfcHV0KGV4Y2wpOwogCi0JCWRzdF9saXN0LT5zaGFyZWRfY291
bnQgPSAwOwotCQlmb3IgKGkgPSAwOyBpIDwgc3JjX2xpc3QtPnNoYXJlZF9jb3VudDsgKytpKSB7
Ci0JCQlzdHJ1Y3QgZG1hX2ZlbmNlIF9fcmN1ICoqZHN0OwotCQkJc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2U7CisJCQlpZiAoY3Vyc29yLmZlbmNlcykgeworCQkJCXVuc2lnbmVkIGludCBjbnQgPSBj
dXJzb3IuZmVuY2VzLT5zaGFyZWRfY291bnQ7CiAKLQkJCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNl
KHNyY19saXN0LT5zaGFyZWRbaV0pOwotCQkJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJ
R05BTEVEX0JJVCwKLQkJCQkgICAgICZmZW5jZS0+ZmxhZ3MpKQotCQkJCWNvbnRpbnVlOworCQkJ
CXJjdV9yZWFkX3VubG9jaygpOworCQkJCWxpc3QgPSBkbWFfcmVzdl9saXN0X2FsbG9jKGNudCk7
CisJCQkJaWYgKCFsaXN0KSB7CisJCQkJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOworCQkJ
CQlyZXR1cm4gLUVOT01FTTsKKwkJCQl9CiAKLQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3UoZmVu
Y2UpKSB7Ci0JCQkJZG1hX3Jlc3ZfbGlzdF9mcmVlKGRzdF9saXN0KTsKLQkJCQlzcmNfbGlzdCA9
IGRtYV9yZXN2X3NoYXJlZF9saXN0KHNyYyk7Ci0JCQkJZ290byByZXRyeTsKLQkJCX0KKwkJCQls
aXN0LT5zaGFyZWRfY291bnQgPSAwOworCQkJCXJjdV9yZWFkX2xvY2soKTsKIAotCQkJaWYgKGRt
YV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpIHsKLQkJCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsK
LQkJCQljb250aW51ZTsKKwkJCX0gZWxzZSB7CisJCQkJbGlzdCA9IE5VTEw7CiAJCQl9Ci0KLQkJ
CWRzdCA9ICZkc3RfbGlzdC0+c2hhcmVkW2RzdF9saXN0LT5zaGFyZWRfY291bnQrK107Ci0JCQly
Y3VfYXNzaWduX3BvaW50ZXIoKmRzdCwgZmVuY2UpOworCQkJZXhjbCA9IE5VTEw7CiAJCX0KLQl9
IGVsc2UgewotCQlkc3RfbGlzdCA9IE5VTEw7Ci0JfQogCi0JbmV3ID0gZG1hX2ZlbmNlX2dldF9y
Y3Vfc2FmZSgmc3JjLT5mZW5jZV9leGNsKTsKKwkJZG1hX2ZlbmNlX2dldChmKTsKKwkJaWYgKGRt
YV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKCZjdXJzb3IpKQorCQkJZXhjbCA9IGY7CisJCWVsc2UK
KwkJCVJDVV9JTklUX1BPSU5URVIobGlzdC0+c2hhcmVkW2xpc3QtPnNoYXJlZF9jb3VudCsrXSwg
Zik7CisJfQorCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwogCXJjdV9yZWFkX3VubG9jaygp
OwogCi0Jc3JjX2xpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChkc3QpOwotCW9sZCA9IGRtYV9y
ZXN2X2V4Y2xfZmVuY2UoZHN0KTsKLQogCXdyaXRlX3NlcWNvdW50X2JlZ2luKCZkc3QtPnNlcSk7
Ci0JLyogd3JpdGVfc2VxY291bnRfYmVnaW4gcHJvdmlkZXMgdGhlIG5lY2Vzc2FyeSBtZW1vcnkg
YmFycmllciAqLwotCVJDVV9JTklUX1BPSU5URVIoZHN0LT5mZW5jZV9leGNsLCBuZXcpOwotCVJD
VV9JTklUX1BPSU5URVIoZHN0LT5mZW5jZSwgZHN0X2xpc3QpOworCWV4Y2wgPSByY3VfcmVwbGFj
ZV9wb2ludGVyKGRzdC0+ZmVuY2VfZXhjbCwgZXhjbCwgZG1hX3Jlc3ZfaGVsZChkc3QpKTsKKwls
aXN0ID0gcmN1X3JlcGxhY2VfcG9pbnRlcihkc3QtPmZlbmNlLCBsaXN0LCBkbWFfcmVzdl9oZWxk
KGRzdCkpOwogCXdyaXRlX3NlcWNvdW50X2VuZCgmZHN0LT5zZXEpOwogCi0JZG1hX3Jlc3ZfbGlz
dF9mcmVlKHNyY19saXN0KTsKLQlkbWFfZmVuY2VfcHV0KG9sZCk7CisJZG1hX3Jlc3ZfbGlzdF9m
cmVlKGxpc3QpOworCWRtYV9mZW5jZV9wdXQoZXhjbCk7CiAKIAlyZXR1cm4gMDsKIH0KLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

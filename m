Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAB3834AF
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 17:06:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A71C160C21
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 15:06:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9CD6A6176E; Tue,  6 Aug 2019 15:06:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18806617D1;
	Tue,  6 Aug 2019 15:02:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 548446097D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:02:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 428EB61778; Tue,  6 Aug 2019 15:02:19 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 6BA826177C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 15:01:43 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a15so78545148wmj.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Aug 2019 08:01:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D94FqstqyitIQXHeEQsOPjB7sJ7kjAHDkqtPAZA0I+c=;
 b=RsCTA0745mT0JN3l69cD4f2DzqmuWiiNHPRlBI0sUAVeIvoHiTodNh0OZA0IXqp8f+
 7RoaFXQMj7i+Qi7clCQoDgsaxWNtSiyz9n1tj0fuvmmFU7rutDv2vjfJUYNmvxkeglB+
 EcukQEqpz3vumLK9WjCS1jwbU6RbMeJH6IkBsPVZia850siq60y5F8HRt2onrYV2M9Nv
 Wq4CSSDVD62qWr7RADCf7vR9cnYEbIfDj559N9ych9k4NR7uFpXjYq31XgAeENwS/cB0
 Ls3Jrk6+c0j8IR8QHGRT1njuA+DqU/Div9V63H/oKbXAO+MIrBywakqu9P+DR8XrRnMj
 j7/g==
X-Gm-Message-State: APjAAAUHCHQDmqY5EEcQP0BaiiuuwajgnZo6LD3jR5PqqfaEqKxlISL9
 yKbcBAzirwt8ElllPl/0hD0=
X-Google-Smtp-Source: APXvYqxVBfSBzWr806NXfxriD36Qyrcq50LCUciaqzuU1GpHszpLqFGl7aaAig4jn/oBkn9mupsKrg==
X-Received: by 2002:a05:600c:20c1:: with SMTP id
 y1mr5463840wmm.10.1565103702622; 
 Tue, 06 Aug 2019 08:01:42 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:d1e0:fffc:b0e3:c66d])
 by smtp.gmail.com with ESMTPSA id g2sm78766828wmh.0.2019.08.06.08.01.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 08:01:41 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Tue,  6 Aug 2019 17:01:34 +0200
Message-Id: <20190806150134.104222-8-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806150134.104222-1-christian.koenig@amd.com>
References: <20190806150134.104222-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 8/8] dma-buf: nuke reservation_object seq
	number
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

VGhlIG9ubHkgcmVtYWluaW5nIHVzZSBmb3IgdGhpcyBpcyB0byBwcm90ZWN0IGFnYWluc3Qgc2V0
dGluZyBhIG5ldyBleGNsdXNpdmUKZmVuY2Ugd2hpbGUgd2UgZ3JhYiBib3RoIGV4Y2x1c2l2ZSBh
bmQgc2hhcmVkLiBUaGF0IGNhbiBhbHNvIGJlIGFyY2hpdmVkIGJ5Cmxvb2tpbmcgaWYgdGhlIGV4
Y2x1c2l2ZSBmZW5jZSBoYXMgY2hhbmdlZCBvciBub3QgYWZ0ZXIgY29tcGxldGluZyB0aGUKb3Bl
cmF0aW9uLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jIHwgMjAgKysrLS0t
LS0tLS0tLS0tLS0tLS0KIGluY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24uaCAgIHwgIDkgKystLS0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMgYi9kcml2ZXJzL2RtYS1i
dWYvcmVzZXJ2YXRpb24uYwppbmRleCA4MzlkNzJhZjdhZDguLjQzNTQ5YTRkNjY1OCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKKysrIGIvZHJpdmVycy9kbWEtYnVm
L3Jlc2VydmF0aW9uLmMKQEAgLTQ5LDEyICs0OSw2IEBACiBERUZJTkVfV0RfQ0xBU1MocmVzZXJ2
YXRpb25fd3dfY2xhc3MpOwogRVhQT1JUX1NZTUJPTChyZXNlcnZhdGlvbl93d19jbGFzcyk7CiAK
LXN0cnVjdCBsb2NrX2NsYXNzX2tleSByZXNlcnZhdGlvbl9zZXFjb3VudF9jbGFzczsKLUVYUE9S
VF9TWU1CT0wocmVzZXJ2YXRpb25fc2VxY291bnRfY2xhc3MpOwotCi1jb25zdCBjaGFyIHJlc2Vy
dmF0aW9uX3NlcWNvdW50X3N0cmluZ1tdID0gInJlc2VydmF0aW9uX3NlcWNvdW50IjsKLUVYUE9S
VF9TWU1CT0wocmVzZXJ2YXRpb25fc2VxY291bnRfc3RyaW5nKTsKLQogLyoqCiAgKiByZXNlcnZh
dGlvbl9vYmplY3RfbGlzdF9hbGxvYyAtIGFsbG9jYXRlIGZlbmNlIGxpc3QKICAqIEBzaGFyZWRf
bWF4OiBudW1iZXIgb2YgZmVuY2VzIHdlIG5lZWQgc3BhY2UgZm9yCkBAIC0xMDMsOSArOTcsNiBA
QCBzdGF0aWMgdm9pZCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdF9mcmVlKHN0cnVjdCByZXNlcnZh
dGlvbl9vYmplY3RfbGlzdCAqbGlzdCkKIHZvaWQgcmVzZXJ2YXRpb25fb2JqZWN0X2luaXQoc3Ry
dWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqKQogewogCXd3X211dGV4X2luaXQoJm9iai0+bG9j
aywgJnJlc2VydmF0aW9uX3d3X2NsYXNzKTsKLQotCV9fc2VxY291bnRfaW5pdCgmb2JqLT5zZXEs
IHJlc2VydmF0aW9uX3NlcWNvdW50X3N0cmluZywKLQkJCSZyZXNlcnZhdGlvbl9zZXFjb3VudF9j
bGFzcyk7CiAJUkNVX0lOSVRfUE9JTlRFUihvYmotPmZlbmNlLCBOVUxMKTsKIAlSQ1VfSU5JVF9Q
T0lOVEVSKG9iai0+ZmVuY2VfZXhjbCwgTlVMTCk7CiB9CkBAIC0yODIsMTIgKzI3MywxMCBAQCB2
b2lkIHJlc2VydmF0aW9uX29iamVjdF9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgcmVzZXJ2YXRpb25f
b2JqZWN0ICpvYmosCiAJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwogCiAJcHJlZW1wdF9kaXNhYmxl
KCk7Ci0Jd3JpdGVfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKLQkvKiB3cml0ZV9zZXFjb3Vu
dF9iZWdpbiBwcm92aWRlcyB0aGUgbmVjZXNzYXJ5IG1lbW9yeSBiYXJyaWVyICovCiAJUkNVX0lO
SVRfUE9JTlRFUihvYmotPmZlbmNlX2V4Y2wsIGZlbmNlKTsKKwkvKiBwb2ludGVyIHVwZGF0ZSBt
dXN0IGJlIHZpc2libGUgYmVmb3JlIHdlIG1vZGlmeSB0aGUgc2hhcmVkX2NvdW50ICovCiAJaWYg
KG9sZCkKLQkJb2xkLT5zaGFyZWRfY291bnQgPSAwOwotCXdyaXRlX3NlcWNvdW50X2VuZCgmb2Jq
LT5zZXEpOworCQlzbXBfc3RvcmVfbWIob2xkLT5zaGFyZWRfY291bnQsIDApOwogCXByZWVtcHRf
ZW5hYmxlKCk7CiAKIAkvKiBpbnBsYWNlIHVwZGF0ZSwgbm8gc2hhcmVkIGZlbmNlcyAqLwpAQCAt
MzcwLDExICszNTksOCBAQCBpbnQgcmVzZXJ2YXRpb25fb2JqZWN0X2NvcHlfZmVuY2VzKHN0cnVj
dCByZXNlcnZhdGlvbl9vYmplY3QgKmRzdCwKIAlvbGQgPSByZXNlcnZhdGlvbl9vYmplY3RfZ2V0
X2V4Y2woZHN0KTsKIAogCXByZWVtcHRfZGlzYWJsZSgpOwotCXdyaXRlX3NlcWNvdW50X2JlZ2lu
KCZkc3QtPnNlcSk7Ci0JLyogd3JpdGVfc2VxY291bnRfYmVnaW4gcHJvdmlkZXMgdGhlIG5lY2Vz
c2FyeSBtZW1vcnkgYmFycmllciAqLwogCVJDVV9JTklUX1BPSU5URVIoZHN0LT5mZW5jZV9leGNs
LCBuZXcpOwotCVJDVV9JTklUX1BPSU5URVIoZHN0LT5mZW5jZSwgZHN0X2xpc3QpOwotCXdyaXRl
X3NlcWNvdW50X2VuZCgmZHN0LT5zZXEpOworCXJjdV9hc3NpZ25fcG9pbnRlcihkc3QtPmZlbmNl
LCBkc3RfbGlzdCk7CiAJcHJlZW1wdF9lbmFibGUoKTsKIAogCXJlc2VydmF0aW9uX29iamVjdF9s
aXN0X2ZyZWUoc3JjX2xpc3QpOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9yZXNlcnZhdGlv
bi5oIGIvaW5jbHVkZS9saW51eC9yZXNlcnZhdGlvbi5oCmluZGV4IGI4YjgyNzNlZWYwMC4uMWRm
YWY3YjFmMWRhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmgKKysrIGIv
aW5jbHVkZS9saW51eC9yZXNlcnZhdGlvbi5oCkBAIC00Niw4ICs0Niw2IEBACiAjaW5jbHVkZSA8
bGludXgvcmN1cGRhdGUuaD4KIAogZXh0ZXJuIHN0cnVjdCB3d19jbGFzcyByZXNlcnZhdGlvbl93
d19jbGFzczsKLWV4dGVybiBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgcmVzZXJ2YXRpb25fc2VxY291
bnRfY2xhc3M7Ci1leHRlcm4gY29uc3QgY2hhciByZXNlcnZhdGlvbl9zZXFjb3VudF9zdHJpbmdb
XTsKIAogLyoqCiAgKiBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgLSBhIGxpc3Qgb2Yg
c2hhcmVkIGZlbmNlcwpAQCAtNzEsNyArNjksNiBAQCBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0
X2xpc3QgewogICovCiBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0IHsKIAlzdHJ1Y3Qgd3dfbXV0
ZXggbG9jazsKLQlzZXFjb3VudF90IHNlcTsKIAogCXN0cnVjdCBkbWFfZmVuY2UgX19yY3UgKmZl
bmNlX2V4Y2w7CiAJc3RydWN0IHJlc2VydmF0aW9uX29iamVjdF9saXN0IF9fcmN1ICpmZW5jZTsK
QEAgLTE1NSwxMyArMTUyLDExIEBAIHJlc2VydmF0aW9uX29iamVjdF9mZW5jZXMoc3RydWN0IHJl
c2VydmF0aW9uX29iamVjdCAqb2JqLAogCQkJICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZXhjbCwKIAkJ
CSAgc3RydWN0IHJlc2VydmF0aW9uX29iamVjdF9saXN0ICoqbGlzdCkKIHsKLQl1bnNpZ25lZCBp
bnQgc2VxOwotCiAJZG8gewotCQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7
CiAJCSpleGNsID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2VfZXhjbCk7CiAJCSpsaXN0ID0g
cmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2UpOwotCX0gd2hpbGUgKHJlYWRfc2VxY291bnRfcmV0
cnkoJm9iai0+c2VxLCBzZXEpKTsKKwkJc21wX3JtYigpOyAvKiBTZWUgcmVzZXJ2YXRpb25fb2Jq
ZWN0X2FkZF9leGNsX2ZlbmNlICovCisJfSB3aGlsZSAocmN1X2FjY2Vzc19wb2ludGVyKG9iai0+
ZmVuY2VfZXhjbCkgIT0gKmV4Y2wpOwogfQogCiAvKioKLS0gCjIuMTcuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

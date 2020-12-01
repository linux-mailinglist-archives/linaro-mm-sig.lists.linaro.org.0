Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A5B2CAA40
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 18:55:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D509765FCE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 17:55:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C7EE266597; Tue,  1 Dec 2020 17:55:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59F4165FD7;
	Tue,  1 Dec 2020 17:52:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2C09F65FCE
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 17:52:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D35F6659B; Tue,  1 Dec 2020 17:52:35 +0000 (UTC)
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by lists.linaro.org (Postfix) with ESMTPS id 9FF966606B
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 17:51:57 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id s21so1575543pfu.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 09:51:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=4zRLtJ0Q5wi/JJXSMnqzlxIlA9XB0kWpvTg/hxCouGQ=;
 b=dx/jyOVXVjyTK1uwYqHBe7JNAljrOOpZmwnlWEgLw17UnmKXFIap5QWNNk+zmDJC9+
 RWJcLlrBo8TRBDa1tX5PcuFj1MJ2RcriWyrA8Xw6Gh3faws0OdCOWcuOwIIxV4CnxKIW
 Hv/vjallOplDEBJsZG1NgxqFAA3PyuIfKJK5Mvf0a6bpNOPOtqOG3XU8VRcCJOz1DPeU
 YGOxEo/87oXxQQsY4jf4Ym3tW8yDbZcHUP4gyHi/VqaVZy6CWQvvRqhZ1Ngj5AjQFodR
 2CviDFxxEMv67SGl3NsCLqTBpOq4BHHyGOBQHI+ytrcSiOrMyCuwQGdZGCUYboFsFvbu
 erfw==
X-Gm-Message-State: AOAM531YFn3YRKON7smOeGjO6oPUdiviXZ2V0JViC5kJb5mF3PAJz84+
 Mmu6gyEeMbYwADlOughx9lK3llUJ0Zc=
X-Google-Smtp-Source: ABdhPJzGe4cpt+aeqFv9FnQFMR/FJjDiGsrboHIU1DKsNNU7bUw3lkcdAv3MMGBbgCOWuQDUV/UPeQ==
X-Received: by 2002:a63:fb42:: with SMTP id w2mr3229528pgj.354.1606845116922; 
 Tue, 01 Dec 2020 09:51:56 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id q23sm390082pfg.192.2020.12.01.09.51.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 09:51:55 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue,  1 Dec 2020 09:51:43 -0800
Message-Id: <20201201175144.3996569-4-minchan@kernel.org>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
In-Reply-To: <20201201175144.3996569-1-minchan@kernel.org>
References: <20201201175144.3996569-1-minchan@kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 david@redhat.com, Minchan Kim <minchan@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, willy@infradead.org,
 Brian.Starkey@arm.com, linaro-mm-sig@lists.linaro.org,
 linux-mm <linux-mm@kvack.org>, john.stultz@linaro.org,
 christian.koenig@amd.com, joaodias@google.com, hridya@google.com,
 iamjoonsoo.kim@lge.com, pullip.cho@samsung.com, surenb@google.com,
 vbabka@suse.cz, hyesoo.yu@samsung.com
Subject: [Linaro-mm-sig] [PATCH v2 3/4] dma-buf: add export symbol for
	dma-heap
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

RnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+CgpUaGUgaGVhcHMgY291bGQg
YmUgYWRkZWQgYXMgbW9kdWxlLCBzbyBzb21lIGZ1bmN0aW9ucyBzaG91bGQKYmUgZXhwb3J0ZWQg
dG8gcmVnaXN0ZXIgZG1hLWhlYXBzLiBBbmQgZG1hLWhlYXAgb2YgbW9kdWxlIGNhbiB1c2UKY21h
IGFyZWEgdG8gYWxsb2NhdGUgYW5kIGZyZWUuIEhvd2V2ZXIgdGhlIGZ1bmN0aW9uIHJlbGF0ZWQg
Y21hCmlzIG5vdCBleHBvcnRlZCBub3cuIExldCdzIGV4cG9ydCB0aGVtIGZvciBuZXh0IHBhdGNo
ZXMuCgpTaWduZWQtb2ZmLWJ5OiBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJz
L2RtYS1idWYvZG1hLWhlYXAuYyB8IDIgKysKIGtlcm5lbC9kbWEvY29udGlndW91cy5jICAgIHwg
MSArCiBtbS9jbWEuYyAgICAgICAgICAgICAgICAgICB8IDUgKysrKysKIDMgZmlsZXMgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFw
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYwppbmRleCBhZmQyMmM5ZGJkY2YuLmNjNjMz
OWNiY2EwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMKKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1oZWFwLmMKQEAgLTE4OSw2ICsxODksNyBAQCB2b2lkICpkbWFfaGVh
cF9nZXRfZHJ2ZGF0YShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXApCiB7CiAJcmV0dXJuIGhlYXAtPnBy
aXY7CiB9CitFWFBPUlRfU1lNQk9MX0dQTChkbWFfaGVhcF9nZXRfZHJ2ZGF0YSk7CiAKIHN0cnVj
dCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5m
byAqZXhwX2luZm8pCiB7CkBAIC0yNzIsNiArMjczLDcgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFf
aGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykKIAlr
ZnJlZShoZWFwKTsKIAlyZXR1cm4gZXJyX3JldDsKIH0KK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9o
ZWFwX2FkZCk7CiAKIHN0YXRpYyBjaGFyICpkbWFfaGVhcF9kZXZub2RlKHN0cnVjdCBkZXZpY2Ug
KmRldiwgdW1vZGVfdCAqbW9kZSkKIHsKZGlmZiAtLWdpdCBhL2tlcm5lbC9kbWEvY29udGlndW91
cy5jIGIva2VybmVsL2RtYS9jb250aWd1b3VzLmMKaW5kZXggM2Q2M2Q5MWNiYTVjLi43ZTk3Nzcx
MTliMjkgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9kbWEvY29udGlndW91cy5jCisrKyBiL2tlcm5lbC9k
bWEvY29udGlndW91cy5jCkBAIC01OCw2ICs1OCw3IEBACiAjZW5kaWYKIAogc3RydWN0IGNtYSAq
ZG1hX2NvbnRpZ3VvdXNfZGVmYXVsdF9hcmVhOworRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2NvbnRp
Z3VvdXNfZGVmYXVsdF9hcmVhKTsKIAogLyoKICAqIERlZmF1bHQgZ2xvYmFsIENNQSBhcmVhIHNp
emUgY2FuIGJlIGRlZmluZWQgaW4ga2VybmVsJ3MgLmNvbmZpZy4KZGlmZiAtLWdpdCBhL21tL2Nt
YS5jIGIvbW0vY21hLmMKaW5kZXggNDQ1OTA0NWZhNzE3Li5kMzljYjcwNjZiOWUgMTAwNjQ0Ci0t
LSBhL21tL2NtYS5jCisrKyBiL21tL2NtYS5jCkBAIC0zMyw2ICszMyw3IEBACiAjaW5jbHVkZSA8
bGludXgvaW8uaD4KICNpbmNsdWRlIDxsaW51eC9rbWVtbGVhay5oPgogI2luY2x1ZGUgPGxpbnV4
L3N3YXAuaD4KKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNsdWRlIDx0cmFjZS9ldmVu
dHMvY21hLmg+CiAKICNpbmNsdWRlICJjbWEuaCIKQEAgLTU0LDYgKzU1LDcgQEAgY29uc3QgY2hh
ciAqY21hX2dldF9uYW1lKGNvbnN0IHN0cnVjdCBjbWEgKmNtYSkKIHsKIAlyZXR1cm4gY21hLT5u
YW1lOwogfQorRVhQT1JUX1NZTUJPTF9HUEwoY21hX2dldF9uYW1lKTsKIAogc3RhdGljIHVuc2ln
bmVkIGxvbmcgY21hX2JpdG1hcF9hbGlnbmVkX21hc2soY29uc3Qgc3RydWN0IGNtYSAqY21hLAog
CQkJCQkgICAgIHVuc2lnbmVkIGludCBhbGlnbl9vcmRlcikKQEAgLTQ5OSw2ICs1MDEsNyBAQCBz
dHJ1Y3QgcGFnZSAqY21hX2FsbG9jKHN0cnVjdCBjbWEgKmNtYSwgc2l6ZV90IGNvdW50LCB1bnNp
Z25lZCBpbnQgYWxpZ24sCiAJcHJfZGVidWcoIiVzKCk6IHJldHVybmVkICVwXG4iLCBfX2Z1bmNf
XywgcGFnZSk7CiAJcmV0dXJuIHBhZ2U7CiB9CitFWFBPUlRfU1lNQk9MX0dQTChjbWFfYWxsb2Mp
OwogCiAvKgogICogY21hX2FsbG9jX2J1bGsoKSAtIGFsbG9jYXRlIGhpZ2ggb3JkZXIgYnVsayBw
YWdlcyBmcm9tIGNvbnRpZ3VvdXMgYXJlYSB3aXRoCkBAIC02MDksNiArNjEyLDcgQEAgaW50IGNt
YV9hbGxvY19idWxrKHN0cnVjdCBjbWEgKmNtYSwgdW5zaWduZWQgaW50IGFsaWduLCBib29sIGZh
c3QsCiAKIAlyZXR1cm4gcmV0OwogfQorRVhQT1JUX1NZTUJPTF9HUEwoY21hX2FsbG9jX2J1bGsp
OwogCiAvKioKICAqIGNtYV9yZWxlYXNlKCkgLSByZWxlYXNlIGFsbG9jYXRlZCBwYWdlcwpAQCAt
NjQyLDYgKzY0Niw3IEBAIGJvb2wgY21hX3JlbGVhc2Uoc3RydWN0IGNtYSAqY21hLCBjb25zdCBz
dHJ1Y3QgcGFnZSAqcGFnZXMsIHVuc2lnbmVkIGludCBjb3VudCkKIAogCXJldHVybiB0cnVlOwog
fQorRVhQT1JUX1NZTUJPTF9HUEwoY21hX3JlbGVhc2UpOwogCiBpbnQgY21hX2Zvcl9lYWNoX2Fy
ZWEoaW50ICgqaXQpKHN0cnVjdCBjbWEgKmNtYSwgdm9pZCAqZGF0YSksIHZvaWQgKmRhdGEpCiB7
Ci0tIAoyLjI5LjIuNDU0LmdhZmYyMGRhM2EyLWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

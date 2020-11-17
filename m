Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 370B92B6D2A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Nov 2020 19:22:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EF6C666D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Nov 2020 18:22:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 39D29666F2; Tue, 17 Nov 2020 18:22:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1A63666E1;
	Tue, 17 Nov 2020 18:20:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A8DB4666D5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 18:20:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 95D45666E1; Tue, 17 Nov 2020 18:20:28 +0000 (UTC)
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by lists.linaro.org (Postfix) with ESMTPS id 753E2666E1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 18:19:50 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id w20so966141pjh.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Nov 2020 10:19:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=q8kidPFG0ShsrD4EKZFHMGOfpY+czdS6PReDEDQbdzA=;
 b=Uc3FTGlnCfv4TO/BzL7PJbHHkYBoWdhGm110pIGHXKNNrYnOxhXJ4k9s2AyLRdThYJ
 Hxe/owV6iUD0D7KNBb9GvE3WSJzuuWZn8g43zdT1eQdGzWRil3r4rB/JZiljAcuu0wra
 7juOxn/u8VhQKStbdAX0AiJieHJ4jd/zdTrCVDB5+Mhs9I1HVKGkK3r7/a20qMNXtKRi
 NgV2Kb9byR5TU1xWX9sROQ5gJP3qC4TcAM1+6oKRZi9bB4YBpkfKYBWXWb4HZfXvBQDV
 /SEphTiZlzVUrdT8htuKSSmbk4KhDBO6qdN98MFg26Ee3nERi+TP7390SyEPOOaDl74Y
 CQEQ==
X-Gm-Message-State: AOAM530v2antCTacj3o2Y8BHsloWHawOni/oF+hfDZqCz7MOIp25viuR
 3CXf1c94CIkMKRK4JiNxCWQ=
X-Google-Smtp-Source: ABdhPJyQ446q/Ak38ZEn3hLJs3wvpyQM6zYG9Z6FeiHKyC/wU2GU+8h9b/m1GDAa14eu5Aua13Cu+A==
X-Received: by 2002:a17:902:778d:b029:d7:cd5a:945e with SMTP id
 o13-20020a170902778db02900d7cd5a945emr384335pll.25.1605637189747; 
 Tue, 17 Nov 2020 10:19:49 -0800 (PST)
Received: from bbox-1.mtv.corp.google.com
 ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id h8sm4302639pjc.54.2020.11.17.10.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 10:19:48 -0800 (PST)
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 17 Nov 2020 10:19:33 -0800
Message-Id: <20201117181935.3613581-3-minchan@kernel.org>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
In-Reply-To: <20201117181935.3613581-1-minchan@kernel.org>
References: <20201117181935.3613581-1-minchan@kernel.org>
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
Subject: [Linaro-mm-sig] [PATCH 2/4] dma-buf: add export symbol for dma-heap
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
L2RtYS1idWYvZG1hLWhlYXAuYyB8IDIgKysKIG1tL2NtYS5jICAgICAgICAgICAgICAgICAgIHwg
MyArKysKIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYwppbmRl
eCBhZmQyMmM5ZGJkY2YuLmNjNjMzOWNiY2EwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1oZWFwLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMKQEAgLTE4OSw2ICsx
ODksNyBAQCB2b2lkICpkbWFfaGVhcF9nZXRfZHJ2ZGF0YShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAp
CiB7CiAJcmV0dXJuIGhlYXAtPnByaXY7CiB9CitFWFBPUlRfU1lNQk9MX0dQTChkbWFfaGVhcF9n
ZXRfZHJ2ZGF0YSk7CiAKIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVj
dCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pCiB7CkBAIC0yNzIsNiArMjczLDcgQEAg
c3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9y
dF9pbmZvICpleHBfaW5mbykKIAlrZnJlZShoZWFwKTsKIAlyZXR1cm4gZXJyX3JldDsKIH0KK0VY
UE9SVF9TWU1CT0xfR1BMKGRtYV9oZWFwX2FkZCk7CiAKIHN0YXRpYyBjaGFyICpkbWFfaGVhcF9k
ZXZub2RlKHN0cnVjdCBkZXZpY2UgKmRldiwgdW1vZGVfdCAqbW9kZSkKIHsKZGlmZiAtLWdpdCBh
L21tL2NtYS5jIGIvbW0vY21hLmMKaW5kZXggN2MxMWVjMmRjMDRjLi44NzgzNGUyOTY2ZmEgMTAw
NjQ0Ci0tLSBhL21tL2NtYS5jCisrKyBiL21tL2NtYS5jCkBAIC01NCw2ICs1NCw3IEBAIGNvbnN0
IGNoYXIgKmNtYV9nZXRfbmFtZShjb25zdCBzdHJ1Y3QgY21hICpjbWEpCiB7CiAJcmV0dXJuIGNt
YS0+bmFtZTsKIH0KK0VYUE9SVF9TWU1CT0xfR1BMKGNtYV9nZXRfbmFtZSk7CiAKIHN0YXRpYyB1
bnNpZ25lZCBsb25nIGNtYV9iaXRtYXBfYWxpZ25lZF9tYXNrKGNvbnN0IHN0cnVjdCBjbWEgKmNt
YSwKIAkJCQkJICAgICB1bnNpZ25lZCBpbnQgYWxpZ25fb3JkZXIpCkBAIC00OTgsNiArNDk5LDcg
QEAgc3RydWN0IHBhZ2UgKmNtYV9hbGxvYyhzdHJ1Y3QgY21hICpjbWEsIHNpemVfdCBjb3VudCwg
dW5zaWduZWQgaW50IGFsaWduLAogCXByX2RlYnVnKCIlcygpOiByZXR1cm5lZCAlcFxuIiwgX19m
dW5jX18sIHBhZ2UpOwogCXJldHVybiBwYWdlOwogfQorRVhQT1JUX1NZTUJPTF9HUEwoY21hX2Fs
bG9jKTsKIAogLyoKICAqIGNtYV9hbGxvY19idWxrKCkgLSBhbGxvY2F0ZSBoaWdoIG9yZGVyIGJ1
bGsgcGFnZXMgZnJvbSBjb250aWd1b3VzIGFyZWEgd2l0aApAQCAtNjQxLDYgKzY0Myw3IEBAIGJv
b2wgY21hX3JlbGVhc2Uoc3RydWN0IGNtYSAqY21hLCBjb25zdCBzdHJ1Y3QgcGFnZSAqcGFnZXMs
IHVuc2lnbmVkIGludCBjb3VudCkKIAogCXJldHVybiB0cnVlOwogfQorRVhQT1JUX1NZTUJPTF9H
UEwoY21hX3JlbGVhc2UpOwogCiBpbnQgY21hX2Zvcl9lYWNoX2FyZWEoaW50ICgqaXQpKHN0cnVj
dCBjbWEgKmNtYSwgdm9pZCAqZGF0YSksIHZvaWQgKmRhdGEpCiB7Ci0tIAoyLjI5LjIuMjk5Lmdk
YzExMjE4MjNjLWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==

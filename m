Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AB4EC916
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Nov 2019 20:32:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5D0336196B
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Nov 2019 19:32:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4C67461973; Fri,  1 Nov 2019 19:32:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,BIGNUM_EMAILS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1672B6196F;
	Fri,  1 Nov 2019 19:32:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 61C7A61966
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Nov 2019 19:32:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 414876196F; Fri,  1 Nov 2019 19:32:06 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1CE0461966
 for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Nov 2019 19:32:05 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id v24so4001240otp.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 01 Nov 2019 12:32:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xga0s6dMP01gptMlxj5T3WD/q3JgkmmpoSrSoRKCVTo=;
 b=piGuBa3UBqq1AL3KER8pylShOWcmj1brIdKVGAuW7A2Q3trOomfeonVsMQRJhMj1G1
 vXWGJV38Fm4PRqu8zgjCdcSM2A24wnDnTitQiCR5M8I4sm9n20dmt/ri4vJVDb1shHU+
 RrMJin++5Fg7rb/kRz54sdkjxNE/Uuc31LQIlT75taeK7UtPZHrwsSS3p5dcHb3INgIU
 Xl6MAbGDXm3CXAmVI9YEwx6YNoCYuyNfMxWlGbTLSaEf89GS1vgGAKvp09/nY8yA7bdM
 /B7xqUBq8xk/ySIYH+TP1utPL4kE+ReYpNvMO3TqT9/nqJoVU6TedtdHCwt3HkRPViw/
 qoJg==
X-Gm-Message-State: APjAAAXhb7N+myOHuiLAuTVOJjcIgnyfD0Npm0lB2TjWXbeLIdDiL7P+
 dpvMS97ElTOf+qnA5Mzxg8UamTUtnzc7RocqKnuvSlHG
X-Google-Smtp-Source: APXvYqwcZFGOOUlvfBAU9/xpQJ5SSF84qCl7+6EAszgXMaxKapGh7e27oRBCUBYwmnaVXSNAvFFMJtauaQj68ndvTds=
X-Received: by 2002:a05:6830:ca:: with SMTP id
 x10mr9263008oto.221.1572636724497; 
 Fri, 01 Nov 2019 12:32:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191031110736.GD26612@mwanda>
In-Reply-To: <20191031110736.GD26612@mwanda>
From: John Stultz <john.stultz@linaro.org>
Date: Fri, 1 Nov 2019 12:31:53 -0700
Message-ID: <CALAqxLUtnZsw0q_5JFtyVjbnxeMUTND=Vt8XgS44iQ_n391XFQ@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [Linaro-mm-sig] [bug report] dma-buf: heaps: Add heap helpers
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

T24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgNDowNyBBTSBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVu
dGVyQG9yYWNsZS5jb20+IHdyb3RlOgo+IFRoZSBwYXRjaCA3Yjg3ZWE3MDRmZDk6ICJkbWEtYnVm
OiBoZWFwczogQWRkIGhlYXAgaGVscGVycyIgZnJvbSBPY3QKPiAyMSwgMjAxOSwgbGVhZHMgdG8g
dGhlIGZvbGxvd2luZyBzdGF0aWMgY2hlY2tlciB3YXJuaW5nOgo+Cj4gICAgICAgICBkcml2ZXJz
L2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmM6MTY1IGRtYV9oZWFwX3ZtX2ZhdWx0KCkKPiAg
ICAgICAgIHdhcm46IHVuY2FwcGVkIHVzZXIgaW5kZXggJ2J1ZmZlci0+cGFnZXNbdm1mLT5wZ29m
Zl0nCj4KPiBkcml2ZXJzL2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMKPiAgICAxNjAgIHN0
YXRpYyB2bV9mYXVsdF90IGRtYV9oZWFwX3ZtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQo+
ICAgIDE2MSAgewo+ICAgIDE2MiAgICAgICAgICBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSA9
IHZtZi0+dm1hOwo+ICAgIDE2MyAgICAgICAgICBzdHJ1Y3QgaGVhcF9oZWxwZXJfYnVmZmVyICpi
dWZmZXIgPSB2bWEtPnZtX3ByaXZhdGVfZGF0YTsKPiAgICAxNjQKPiAgICAxNjUgICAgICAgICAg
dm1mLT5wYWdlID0gYnVmZmVyLT5wYWdlc1t2bWYtPnBnb2ZmXTsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eXl5eXl5eCj4gU21hdGNoIGZvciBzb21lIHJl
YXNvbiB0aGlua3MgdGhpcyBuZWVkcyB0byBiZSBjaGVja2VkLiAgU21hdGNoIGFsc28KPiBnZXRz
IGNvbmZ1c2VkIGJ5IHRoZXNlIGZhdWx0IGhhbmRsZXJzIGFuZCB0aGlua3MgdGhlcmUgaXMgc29t
ZSByZWN1cnNpb24KPiBpbnZvbHZlZC4uLgoKSHJtLCBJJ20gbm90IHRvdGFsbHkgc3VyZSBJIGdy
b2sgd2hhdCBpdCdzIGxvb2tpbmcgZm9yLCBidXQgSSdtCmd1ZXNzaW5nIGl0J3Mgc3VnZ2VzdGlu
ZyB3ZSBjaGVjayB0aGF0IHBnb2ZmIGlzbid0IGxhcmdlciB0aGVuIHRoZQpwYWdlY291bnQ/Ckkn
bGwgYWRkIHRoYXQgY2hlY2sgaW4sIGJ1dCBsZXQgbWUga25vdyBpZiBJJ3ZlIG1pc3VuZGVyc3Rv
b2QuCgpUaGFua3MgZm9yIHRoZSByZXBvcnQhCi1qb2huCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

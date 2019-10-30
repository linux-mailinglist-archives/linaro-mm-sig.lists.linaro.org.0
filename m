Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C160EA1AB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 17:22:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35CE46196F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Oct 2019 16:22:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 24FEA6196E; Wed, 30 Oct 2019 16:22:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D7D86196B;
	Wed, 30 Oct 2019 16:21:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 61BAE6179A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 16:21:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 52CC66196B; Wed, 30 Oct 2019 16:21:54 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id 428B56179A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 16:21:53 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id y194so2484227oie.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Oct 2019 09:21:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B4YfyDvcjYY9edtaAxaWe+R+x3fMKG/oWbf1ji+gZ9o=;
 b=r8rIEh65WBCIEwBEUcQkRg7zIdxy4HRmr1s8xoPwR+h6k2k3cnpT1V5FdV5CPIi1Yb
 PB4J1EiOX8MDOxS4Ko7Z47a9Xygfspr1MNlIZCCySmcVQ32j8xWJ9vhFBqPjV4Gw7duw
 FB3GZeNp2sJ7EPxwzBnAcMYJPZYHtCuk9M6xpqPPDSaEDzLnSQ8N5SvnXdqQigN6puP0
 UN1pcXsF7UtLLCFR4iDq1WnrmbIniSxatZJ7GTuVvGRCNQSfdfYfGHBJ4lfvwge66uzE
 o4x/KTsGBFgEQatASK2SgLPzx4GMmAjOfGkdqbrb4lhP98vQbZ4VD1XrRB7cajAITHK0
 B8YA==
X-Gm-Message-State: APjAAAU2CsHuZlU8RbjNWRLEo5cb6DjObwqsF5uNYiDyAp6QnmAPjsSQ
 zpiZIc5RU7iSCmCJioLjZe1gMxnqXkLYlgzwsLRyCkI1
X-Google-Smtp-Source: APXvYqx/3LD0Wi6ZtOSveEWM/gRe/gZI+G4wG7E22gydAW8YY7t20K75PurFbX1LRPthN3mbGMzOaKzEU+05LiKmGXI=
X-Received: by 2002:a05:6808:a04:: with SMTP id n4mr47802oij.44.1572452512534; 
 Wed, 30 Oct 2019 09:21:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191030150253.10596-1-colin.king@canonical.com>
 <673b3e8f-9211-2fa2-c408-4560b03b4700@ti.com>
In-Reply-To: <673b3e8f-9211-2fa2-c408-4560b03b4700@ti.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 30 Oct 2019 09:21:41 -0700
Message-ID: <CALAqxLVvkd73zQria9C+QcyF1P2cZ7=pOpVQO+AyWzqJQ_q3Yw@mail.gmail.com>
To: "Andrew F. Davis" <afd@ti.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, lkml <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>, Brian Starkey <brian.starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Colin King <colin.king@canonical.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH][next] dma-buf: heaps: remove redundant
 assignment to variable ret
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

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgODo0NSBBTSBBbmRyZXcgRi4gRGF2aXMgPGFmZEB0aS5j
b20+IHdyb3RlOgo+Cj4gT24gMTAvMzAvMTkgMTE6MDIgQU0sIENvbGluIEtpbmcgd3JvdGU6Cj4g
PiBGcm9tOiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgo+ID4KPiA+
IFRoZSB2YXJpYWJsZSByZXQgaXMgYmVpbmcgYXNzaWduZWQgd2l0aCBhIHZhbHVlIHRoYXQgaXMg
bmV2ZXIKPiA+IHJlYWQsIGl0IGlzIGJlaW5nIHJlLWFzc2lnbmVkIHRoZSBzYW1lIHZhbHVlIG9u
IHRoZSBlcnIwIGV4aXQKPiA+IHBhdGguIFRoZSBhc3NpZ25tZW50IGlzIHJlZHVuZGFudCBhbmQg
aGVuY2UgY2FuIGJlIHJlbW92ZWQuCj4gPgo+ID4gQWRkcmVzc2VzLUNvdmVyaXR5OiAoIlVudXNl
ZCB2YWx1ZSIpCj4gPiBGaXhlczogNDdhMzJmOWMxMjI2ICgiZG1hLWJ1ZjogaGVhcHM6IEFkZCBz
eXN0ZW0gaGVhcCB0byBkbWFidWYgaGVhcHMiKQo+ID4gU2lnbmVkLW9mZi1ieTogQ29saW4gSWFu
IEtpbmcgPGNvbGluLmtpbmdAY2Fub25pY2FsLmNvbT4KPiA+IC0tLQo+Cj4KPiBUaGUgcm9vdCBv
ZiB0aGUgaXNzdWUgaXMgdGhhdCByZXQgaXMgbm90IHVzZWQgaW4gdGhlIGVycm9yIHBhdGgsIGl0
Cj4gc2hvdWxkIGJlLCBJIHN1Z2dlc3QgdGhpcyBmaXg6Cj4KPiA+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMv
c3lzdGVtX2hlYXAuYwo+ID4gQEAgLTk4LDcgKzk4LDcgQEAgc3RhdGljIGludCBzeXN0ZW1faGVh
cF9hbGxvY2F0ZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsCj4gPiAgZXJyMDoKPiA+ICAgICAgICAg
a2ZyZWUoaGVscGVyX2J1ZmZlcik7Cj4gPgo+ID4gLSAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+
ICsgICAgICAgcmV0dXJuIHJldDsKPiA+ICB9CgpTb3VuZHMgZ29vZCEgSWYgaXRzIG9rIEknbGwg
Z2VuZXJhdGUgYSBjb21taXQgY3JlZGl0aW5nIENvbGluIGZvcgpyZXBvcnRpbmcgdGhlIGlzc3Vl
IGFuZCBBbmRyZXcgZm9yIHRoZSBmaXggYW5kIHN1Ym1pdCBpdCB0byBTdW1pdC4KCk1hbnkgdGhh
bmtzIHRvIHlvdSBib3RoIQotam9obgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=

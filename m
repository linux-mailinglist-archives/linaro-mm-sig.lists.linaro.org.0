Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEAF98DF0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 10:37:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4093C6187B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 08:37:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 339FF61778; Thu, 22 Aug 2019 08:37:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 063B361846;
	Thu, 22 Aug 2019 08:37:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 13BF3608ED
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 08:37:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EF09461846; Thu, 22 Aug 2019 08:37:23 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id E9859608ED
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 08:37:22 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id z11so4574539wrt.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 01:37:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=qHqGzI3h6bGS7SsXoxtNnAD8/KMthB9ts12wm/m1eDo=;
 b=UpUfoPr+dCGafhcRxKBooYp0wJj4m233xiIDxz3EJby73YYRAHIeKgFY9ZsgE2SV6L
 uSZ7HeD6hidxfjzYXB0+Iu2B7EmN71a7G5MJPFTjZ4OJs2C25sPuD6AHA1XpeFQ5MrIq
 ne8M480Dbj/eBZC3cNsm9HeNEyZv1NKjBxHGt3QN0DhmOMmF4SypeSFmzW4xqmftpceP
 QyNULlDRCCDk9BknF6XPjvELi0Yf56CflI9qxoa1GlQlTuFMEO7fyMhWw7YqoUeUDtro
 2HnuHTgET59+Ta5Hh3pVcFKb237bqrL6vAeztOgMry7VSAqMv4lAoj6panawPLT0BBlX
 cLYw==
X-Gm-Message-State: APjAAAW0+dsvFoIA/GBBynJS/IwA8DnZchrkcYYrzcMTeOKi16dsX+zX
 B7ldlj/0AV6qV8KnIdrvdtY=
X-Google-Smtp-Source: APXvYqzdnU9t8ZEiiXpnOtQfSt7dy2nTHQVHAAc8vwelIXp0H+dR1wesZhPTChfDg57Ppdd202C+vw==
X-Received: by 2002:adf:f14f:: with SMTP id y15mr45649273wro.28.1566463042071; 
 Thu, 22 Aug 2019 01:37:22 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id w13sm55729223wre.44.2019.08.22.01.37.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 01:37:21 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, daniel.vetter@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-9-christian.koenig@amd.com>
 <156640106246.20466.15153611256655352471@skylake-alporthouse-com>
 <156640893097.20466.17027932311642169386@skylake-alporthouse-com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <5a2aea22-6857-d061-4a80-64f2f57da007@gmail.com>
Date: Thu, 22 Aug 2019 10:37:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156640893097.20466.17027932311642169386@skylake-alporthouse-com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 08/10] dma-buf/resv: replace shared
 fence with new fences container
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjEuMDguMTkgdW0gMTk6MzUgc2NocmllYiBDaHJpcyBXaWxzb246Cj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDgtMjEgMTY6MjQ6MjIpCj4+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5p
ZyAoMjAxOS0wOC0yMSAxMzozMTo0NSkKPj4+IEBAIC0xMTcsMTcgKzEyMCwxMCBAQCBpOTE1X2dl
bV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4+PiAgICAg
ICAgICAgICAgICAgIGJ1c3lfY2hlY2tfd3JpdGVyKHJjdV9kZXJlZmVyZW5jZShvYmotPmJhc2Uu
cmVzdi0+ZmVuY2VfZXhjbCkpOwo+Pj4gICAKPj4+ICAgICAgICAgIC8qIFRyYW5zbGF0ZSBzaGFy
ZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPj4+IC0gICAgICAgbGlzdCA9IHJj
dV9kZXJlZmVyZW5jZShvYmotPmJhc2UucmVzdi0+ZmVuY2UpOwo+Pj4gLSAgICAgICBpZiAobGlz
dCkgewo+Pj4gLSAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBzaGFyZWRfY291bnQgPSBsaXN0
LT5zaGFyZWRfY291bnQsIGk7Cj4+PiAtCj4+PiAtICAgICAgICAgICAgICAgZm9yIChpID0gMDsg
aSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Cj4+PiAtICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSA9Cj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJjdV9kZXJlZmVyZW5jZShsaXN0LT5zaGFyZWRbaV0pOwo+Pj4gLQo+Pj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgYXJncy0+YnVzeSB8PSBidXN5X2NoZWNrX3JlYWRlcihmZW5jZSk7Cj4+PiAt
ICAgICAgICAgICAgICAgfQo+Pj4gLSAgICAgICB9Cj4+PiArICAgICAgIHJlYWRlcnMgPSBkbWFf
cmVzdl9mZW5jZXNfZ2V0X3JjdSgmb2JqLT5iYXNlLnJlc3YtPnJlYWRlcnMpOwo+Pj4gKyAgICAg
ICBkbWFfZmVuY2VfYXJyYXlfZm9yX2VhY2goZmVuY2UsIGN1cnNvciwgcmVhZGVycykKPj4+ICsg
ICAgICAgICAgICAgICBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKPj4+
ICsgICAgICAgZG1hX2ZlbmNlX3B1dChyZWFkZXJzKTsKPj4gVGhhdCdzIHVuZGVyd2hlbG1pbmcs
IHRoZSBmdWxsLW1iIHNob3dzIHVwIGluIHNjYWxpbmcgdGVzdHMgKEknbGwgdGVzdAo+PiB0aGUg
aW1wYWN0IG9mIHRoaXMgc2VyaWVzIGxhdGVyKS4gU29tZXRoaW5nIGxpa2UsCj4gVG8gcHV0IHNv
bWUgbnVtYmVycyB0byBpdCwgYWRkaW5nIHRoZSBmdWxsLW1iIGFkZHMgNW5zIHRvIGEgc2luZ2xl
Cj4gdGhyZWFkIG9uIEthYnlsYWtlIGFuZCAyMG5zIHVuZGVyIGNvbnRlbnRpb24uCgpUaGUgcXVl
c3Rpb24gaXMgaWYgdGhhdCdzIHRoZSB1c2UgY2FzZSB3ZSB3YW50IHRvIG9wdGltaXplIGZvci4K
ClF1ZXJ5aW5nIGEgYnVmZmVyIGZvciBidXNpbmVzcyBpcyBzb21ldGhpbmcgd2UgZG8gYWJzb2x1
dGVseSByYXJlbHkgb24gCmFtZGdwdSwgZS5nLiBJSVJDIHdlIGV2ZW4gZ3JhYiB0aGUgZnVsbCBy
ZXNlcnZhdGlvbiBsb2NrIGZvciB0aGlzLgoKQnV0IGFkZGluZyBuZXcgZmVuY2VzIGNvbWVzIHdp
dGggZXZlcnkgY29tbWFuZCBzdWJtaXNzaW9uLgoKV2hhdCBjb3VsZCBtYXliZSB3b3JrIGlzIHRo
ZSAiZG8geyB9IHdoaWxlIChmZW5jZSBoYXMgY2hhbmdlZCk7IGxvb3AgeW91IApzdWdnZXN0ZWQg
ZWFybGllciBpbiB0aGlzIG1haWwgdGhyZWFkLCBidXQgSSBuZWVkIHRvIGRvdWJsZSBjaGVjayBp
ZiAKdGhhdCB3b3VsZCByZWFsbHkgd29yayBvciBjbGFzaCB3aXRoIHJlY3ljbGluZyBkbWFfZmVu
Y2VfYXJyYXlzKCkuCgpDaHJpc3RpYW4uCgo+IC1DaHJpcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BD698F08
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 11:17:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B1AE361810
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 Aug 2019 09:16:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A36956186E; Thu, 22 Aug 2019 09:16:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 732F361846;
	Thu, 22 Aug 2019 09:16:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9198561810
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:16:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8663261846; Thu, 22 Aug 2019 09:16:29 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 6F8D961810
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 09:16:28 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id e8so6647093wme.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Aug 2019 02:16:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:from:to:references:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=pBmNUN83OemH3FmcqfsNeAfJoNa4Im4df8D7+zD1r3E=;
 b=jQjXccodGeSC852Z+nW1l2FOXHfDMVjujbaeWbZvfrAjqfOx+BFlxM6LcRKzO63sg0
 Qy6seAiEzHya3jf5yaB5yCb3krY1T/y2vNJuCI6s91wE9NX+ChjNDcV8YcQRy2gZiEjw
 ar0nTytJq0ZsJRgpBXQjuFkkX4X3ATOnbsOmJ7mMcOm3aNBHa4aA/VTUq6UWVbfuQl3Y
 I+tWkMkcqjhoiJ0FzOEylklCnCYKABWzXr4h2pY8GvovgdygR1ODOKr/rLsKf0ESSAIo
 ahr9CKMffj8NYfNfUcBeGkVFYTW5r4BOht2QOEWe5B6qWkpH/ItgcPi8I8EnAd4oxDk7
 u2Fg==
X-Gm-Message-State: APjAAAU1B6JTHUaxbNpSKSe6cGQJzM+7XJFy7ZFeO4oyWzygGXBzGV6D
 0kbqjpUqtMDAife53aI+EMA=
X-Google-Smtp-Source: APXvYqy/Wz1IuC/teaJCII1HCJXAPjNQbjqduVpy6CcVncTwTbqhe4dbierlFKaXLSDPxoq1SqKVjw==
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr4706155wma.24.1566465387555; 
 Thu, 22 Aug 2019 02:16:27 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id j20sm57328725wre.65.2019.08.22.02.16.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 02:16:27 -0700 (PDT)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, daniel.vetter@ffwll.ch,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-9-christian.koenig@amd.com>
 <156640106246.20466.15153611256655352471@skylake-alporthouse-com>
 <156640893097.20466.17027932311642169386@skylake-alporthouse-com>
 <5a2aea22-6857-d061-4a80-64f2f57da007@gmail.com>
Message-ID: <25f13de1-c5e2-1ec8-cb79-4e7ee28bb392@gmail.com>
Date: Thu, 22 Aug 2019 11:16:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5a2aea22-6857-d061-4a80-64f2f57da007@gmail.com>
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

QW0gMjIuMDguMTkgdW0gMTA6Mzcgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+IEFtIDIxLjA4
LjE5IHVtIDE5OjM1IHNjaHJpZWIgQ2hyaXMgV2lsc29uOgo+PiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0wOC0yMSAxNjoyNDoyMikKPj4+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5pZyAoMjAx
OS0wOC0yMSAxMzozMTo0NSkKPj4+PiBAQCAtMTE3LDE3ICsxMjAsMTAgQEAgaTkxNV9nZW1fYnVz
eV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCAKPj4+PiB2b2lkICpkYXRhLAo+Pj4+IGJ1
c3lfY2hlY2tfd3JpdGVyKHJjdV9kZXJlZmVyZW5jZShvYmotPmJhc2UucmVzdi0+ZmVuY2VfZXhj
bCkpOwo+Pj4+IMKgIMKgwqDCoMKgwqDCoMKgwqAgLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMg
dG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+Pj4+IC3CoMKgwqDCoMKgwqAgbGlzdCA9IHJjdV9k
ZXJlZmVyZW5jZShvYmotPmJhc2UucmVzdi0+ZmVuY2UpOwo+Pj4+IC3CoMKgwqDCoMKgwqAgaWYg
KGxpc3QpIHsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQg
c2hhcmVkX2NvdW50ID0gbGlzdC0+c2hhcmVkX2NvdW50LCBpOwo+Pj4+IC0KPj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50OyArK2kp
IHsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UgPQo+Pj4+IC0gcmN1X2RlcmVmZXJlbmNlKGxpc3QtPnNoYXJl
ZFtpXSk7Cj4+Pj4gLQo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKPj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gLcKgwqDCoMKgwqDCoCB9Cj4+Pj4gK8Kg
wqDCoMKgwqDCoCByZWFkZXJzID0gZG1hX3Jlc3ZfZmVuY2VzX2dldF9yY3UoJm9iai0+YmFzZS5y
ZXN2LT5yZWFkZXJzKTsKPj4+PiArwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9hcnJheV9mb3JfZWFj
aChmZW5jZSwgY3Vyc29yLCByZWFkZXJzKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwo+Pj4+ICvCoMKgwqDC
oMKgwqAgZG1hX2ZlbmNlX3B1dChyZWFkZXJzKTsKPj4+IFRoYXQncyB1bmRlcndoZWxtaW5nLCB0
aGUgZnVsbC1tYiBzaG93cyB1cCBpbiBzY2FsaW5nIHRlc3RzIChJJ2xsIHRlc3QKPj4+IHRoZSBp
bXBhY3Qgb2YgdGhpcyBzZXJpZXMgbGF0ZXIpLiBTb21ldGhpbmcgbGlrZSwKPj4gVG8gcHV0IHNv
bWUgbnVtYmVycyB0byBpdCwgYWRkaW5nIHRoZSBmdWxsLW1iIGFkZHMgNW5zIHRvIGEgc2luZ2xl
Cj4+IHRocmVhZCBvbiBLYWJ5bGFrZSBhbmQgMjBucyB1bmRlciBjb250ZW50aW9uLgo+Cj4gVGhl
IHF1ZXN0aW9uIGlzIGlmIHRoYXQncyB0aGUgdXNlIGNhc2Ugd2Ugd2FudCB0byBvcHRpbWl6ZSBm
b3IuCj4KPiBRdWVyeWluZyBhIGJ1ZmZlciBmb3IgYnVzaW5lc3MgaXMgc29tZXRoaW5nIHdlIGRv
IGFic29sdXRlbHkgcmFyZWx5IG9uIAo+IGFtZGdwdSwgZS5nLiBJSVJDIHdlIGV2ZW4gZ3JhYiB0
aGUgZnVsbCByZXNlcnZhdGlvbiBsb2NrIGZvciB0aGlzLgo+Cj4gQnV0IGFkZGluZyBuZXcgZmVu
Y2VzIGNvbWVzIHdpdGggZXZlcnkgY29tbWFuZCBzdWJtaXNzaW9uLgo+Cj4gV2hhdCBjb3VsZCBt
YXliZSB3b3JrIGlzIHRoZSAiZG8geyB9IHdoaWxlIChmZW5jZSBoYXMgY2hhbmdlZCk7IGxvb3Ag
Cj4geW91IHN1Z2dlc3RlZCBlYXJsaWVyIGluIHRoaXMgbWFpbCB0aHJlYWQsIGJ1dCBJIG5lZWQg
dG8gZG91YmxlIGNoZWNrIAo+IGlmIHRoYXQgd291bGQgcmVhbGx5IHdvcmsgb3IgY2xhc2ggd2l0
aCByZWN5Y2xpbmcgZG1hX2ZlbmNlX2FycmF5cygpLgoKT2sgdGhpbmtpbmcgYWJvdXQgaXQgc29t
ZSBtb3JlIHRoYXQgd29uJ3Qgd29yayBlaXRoZXIuCgpTZWUgdGhlIGRtYV9mZW5jZV9hcnJheSBp
cyBvbmx5IGd1YXJhbnRlZWQgdG8gbm90IGNoYW5nZSB3aGVuIHlvdSBob2xkIGEgCnJlZmVyZW5j
ZSB0byBpdC4gT3RoZXJ3aXNlIHdlIGRvbid0IGd1YXJhbnRlZSBhbnl0aGluZy4KCkNocmlzdGlh
bi4KCj4KPiBDaHJpc3RpYW4uCj4KPj4gLUNocmlzCj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

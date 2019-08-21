Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDE798167
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 19:36:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC29A61810
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 17:36:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A14D86183B; Wed, 21 Aug 2019 17:36:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E78386183E;
	Wed, 21 Aug 2019 17:35:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 91AE161810
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 17:35:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 851266183D; Wed, 21 Aug 2019 17:35:46 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id ECD7F61810
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 17:35:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18217793-1500050 for multiple; Wed, 21 Aug 2019 18:35:33 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-9-christian.koenig@amd.com>
 <156640106246.20466.15153611256655352471@skylake-alporthouse-com>
In-Reply-To: <156640106246.20466.15153611256655352471@skylake-alporthouse-com>
Message-ID: <156640893097.20466.17027932311642169386@skylake-alporthouse-com>
Date: Wed, 21 Aug 2019 18:35:31 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 08/10] dma-buf/resv: replace shared
 fence with new fences container
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjEgMTY6MjQ6MjIpCj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDE5LTA4LTIxIDEzOjMxOjQ1KQo+ID4gQEAgLTExNywxNyArMTIwLDEw
IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwKPiA+ICAgICAgICAgICAgICAgICBidXN5X2NoZWNrX3dyaXRlcihyY3VfZGVyZWZlcmVuY2Uo
b2JqLT5iYXNlLnJlc3YtPmZlbmNlX2V4Y2wpKTsKPiA+ICAKPiA+ICAgICAgICAgLyogVHJhbnNs
YXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+ID4gLSAgICAgICBs
aXN0ID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+YmFzZS5yZXN2LT5mZW5jZSk7Cj4gPiAtICAgICAg
IGlmIChsaXN0KSB7Cj4gPiAtICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IHNoYXJlZF9jb3Vu
dCA9IGxpc3QtPnNoYXJlZF9jb3VudCwgaTsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgICBmb3Ig
KGkgPSAwOyBpIDwgc2hhcmVkX2NvdW50OyArK2kpIHsKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmN1X2RlcmVmZXJlbmNlKGxpc3QtPnNoYXJlZFtpXSk7Cj4gPiAtCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICBhcmdzLT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNl
KTsKPiA+IC0gICAgICAgICAgICAgICB9Cj4gPiAtICAgICAgIH0KPiA+ICsgICAgICAgcmVhZGVy
cyA9IGRtYV9yZXN2X2ZlbmNlc19nZXRfcmN1KCZvYmotPmJhc2UucmVzdi0+cmVhZGVycyk7Cj4g
PiArICAgICAgIGRtYV9mZW5jZV9hcnJheV9mb3JfZWFjaChmZW5jZSwgY3Vyc29yLCByZWFkZXJz
KQo+ID4gKyAgICAgICAgICAgICAgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVu
Y2UpOwo+ID4gKyAgICAgICBkbWFfZmVuY2VfcHV0KHJlYWRlcnMpOwo+IAo+IFRoYXQncyB1bmRl
cndoZWxtaW5nLCB0aGUgZnVsbC1tYiBzaG93cyB1cCBpbiBzY2FsaW5nIHRlc3RzIChJJ2xsIHRl
c3QKPiB0aGUgaW1wYWN0IG9mIHRoaXMgc2VyaWVzIGxhdGVyKS4gU29tZXRoaW5nIGxpa2UsCgpU
byBwdXQgc29tZSBudW1iZXJzIHRvIGl0LCBhZGRpbmcgdGhlIGZ1bGwtbWIgYWRkcyA1bnMgdG8g
YSBzaW5nbGUKdGhyZWFkIG9uIEthYnlsYWtlIGFuZCAyMG5zIHVuZGVyIGNvbnRlbnRpb24uCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

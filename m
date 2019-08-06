Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 689A6839A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 21:26:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85EF861792
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 19:26:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 778AB617B5; Tue,  6 Aug 2019 19:26:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90150617C3;
	Tue,  6 Aug 2019 19:26:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 65B2061792
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:26:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 58ACF617C3; Tue,  6 Aug 2019 19:26:00 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 15FBC61792
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 19:25:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17909803-1500050 for multiple; Tue, 06 Aug 2019 20:25:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-5-christian.koenig@amd.com>
In-Reply-To: <20190806150134.104222-5-christian.koenig@amd.com>
Message-ID: <156511955431.6198.11016206792697073807@skylake-alporthouse-com>
Date: Tue, 06 Aug 2019 20:25:54 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 5/8] dma-buf: further relax
	reservation_object_add_shared_fence
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA2IDE2OjAxOjMxKQo+IE90aGVyIGNv
cmVzIGRvbid0IGJ1c3kgd2FpdCBhbnkgbW9yZSBhbmQgd2UgcmVtb3ZlZCB0aGUgbGFzdCB1c2Vy
IG9mIGNoZWNraW5nCj4gdGhlIHNlcW5vIGZvciBjaGFuZ2VzLiBEcm9wIHVwZGF0aW5nIHRoZSBu
dW1iZXIgZm9yIHNoYXJlZCBmZW5jZXMgYWx0b2dldGhlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jICAgICAgICAgICAgICAgICAgICB8IDYgLS0tLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZ3B1dm0uYyB8IDcgKy0t
LS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMgYi9kcml2ZXJz
L2RtYS1idWYvcmVzZXJ2YXRpb24uYwo+IGluZGV4IGMwYmEwNTkzNmFiNi4uOTQ0ZDk2MmRkZGRm
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKPiBAQCAtMjM3LDkgKzIzNyw2IEBAIHZvaWQgcmVz
ZXJ2YXRpb25fb2JqZWN0X2FkZF9zaGFyZWRfZmVuY2Uoc3RydWN0IHJlc2VydmF0aW9uX29iamVj
dCAqb2JqLAo+ICAgICAgICAgZm9iaiA9IHJlc2VydmF0aW9uX29iamVjdF9nZXRfbGlzdChvYmop
Owo+ICAgICAgICAgY291bnQgPSBmb2JqLT5zaGFyZWRfY291bnQ7Cj4gIAo+IC0gICAgICAgcHJl
ZW1wdF9kaXNhYmxlKCk7Cj4gLSAgICAgICB3cml0ZV9zZXFjb3VudF9iZWdpbigmb2JqLT5zZXEp
Owo+IC0KPiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBjb3VudDsgKytpKSB7Cj4gIAo+ICAgICAg
ICAgICAgICAgICBvbGQgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZvYmotPnNoYXJlZFtp
XSwKPiBAQCAtMjU3LDkgKzI1NCw2IEBAIHZvaWQgcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9zaGFy
ZWRfZmVuY2Uoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAo+ICAgICAgICAgUkNVX0lO
SVRfUE9JTlRFUihmb2JqLT5zaGFyZWRbaV0sIGZlbmNlKTsKPiAgICAgICAgIC8qIHBvaW50ZXIg
dXBkYXRlIG11c3QgYmUgdmlzaWJsZSBiZWZvcmUgd2UgZXh0ZW5kIHRoZSBzaGFyZWRfY291bnQg
Ki8KPiAgICAgICAgIHNtcF9zdG9yZV9tYihmb2JqLT5zaGFyZWRfY291bnQsIGNvdW50KTsKCll1
cCwgdGhhdCdzIGFsbCB0aGUgbWIgcnVsZXMgd2UgbmVlZCB0byBhcHBseSBmb3IgdGhlIHJjdSBy
ZWFkZXJzIHRvIHNlZQphIGNvbnNpc3RlbnQgdmlldy4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

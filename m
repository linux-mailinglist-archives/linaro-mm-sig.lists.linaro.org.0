Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC5998001
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 18:25:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 763B361837
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 16:25:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 617CE6183B; Wed, 21 Aug 2019 16:25:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 511D561836;
	Wed, 21 Aug 2019 16:24:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D18A61833
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 16:24:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 197FC61836; Wed, 21 Aug 2019 16:24:36 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 590E461833
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 16:24:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18216887-1500050 for multiple; Wed, 21 Aug 2019 17:24:27 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-4-christian.koenig@amd.com>
In-Reply-To: <20190821123147.110736-4-christian.koenig@amd.com>
Message-ID: <156640466565.20466.15873039258008813430@skylake-alporthouse-com>
Date: Wed, 21 Aug 2019 17:24:25 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 03/10] dma-buf: add
	dma_fence_array_recycle
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTIxIDEzOjMxOjQwKQo+IFRyeSB0byBy
ZWN5Y2xlIGFuIGRtYV9mZW5jZV9hcnJheSBvYmplY3QgYnkgZHJvcHBpbmcgdGhlIGxhc3QKPiBy
ZWZlcmVuY2UgdG8gaXQgd2l0aG91dCBmcmVlaW5nIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4gIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggICB8ICAxICsKPiAgMiBmaWxl
cyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXku
Ywo+IGluZGV4IGU4MmYzMDU1MWFhMS4uMzE0Y2YwZTg4MWQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UtYXJyYXkuYwo+IEBAIC0xODgsNiArMTg4LDMzIEBAIHZvaWQgZG1hX2ZlbmNlX2FycmF5
X2luaXQoc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXksIHU2NCBjb250ZXh0LAo+ICB9Cj4g
IEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2FycmF5X2luaXQpOwo+ICAKPiArLyoqCj4gKyAqIGRt
YV9mZW5jZV9hcnJheV9yZXVzZSAtIGR1bW15IGZvciBkbWFfZmVuY2VfYXJyYXlfcmVjeWNsZQo+
ICsgKi8KPiArc3RhdGljIHZvaWQgZG1hX2ZlbmNlX2FycmF5X3JldXNlKHN0cnVjdCBrcmVmICpr
cmVmKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSA9IGNvbnRh
aW5lcl9vZihrcmVmLCB0eXBlb2YoKmFycmF5KSwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJhc2UucmVmY291bnQpOwo+ICsKPiArICAgICAg
IFdBUk5fT05fT05DRSghbGlzdF9lbXB0eSgmYXJyYXktPmJhc2UuY2JfbGlzdCkpOwoKWyAgIDc3
LjU4NDY5NF0gV0FSTklORzogQ1BVOiAzIFBJRDogNjI3IGF0IGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UtYXJyYXkuYzoxOTkgZG1hX2ZlbmNlX2FycmF5X3JlY3ljbGUrMHgxZC8weDIwClsgICA3
Ny41ODQ3MDJdIE1vZHVsZXMgbGlua2VkIGluOiBubHNfYXNjaWkgbmxzX2NwNDM3IHZmYXQgZmF0
IGNyY3QxMGRpZl9wY2xtdWwgaTkxNSBjcmMzMl9wY2xtdWwgY3JjMzJjX2ludGVsIGFlc25pX2lu
dGVsIGFlc194ODZfNjQgZ2x1ZV9oZWxwZXIgY3J5cHRvX3NpbWQgY3J5cHRkIGludGVsX2NzdGF0
ZSBpbnRlbF9ndHQgZHJtX2ttc19oZWxwZXIgaW50ZWxfdW5jb3JlIGludGVsX3JhcGxfcGVyZiBh
aGNpIGkyY19pODAxIGxpYmFoY2kgZWZpdmFycyB2aWRlbyBidXR0b24gZWZpdmFyZnMKWyAgIDc3
LjU4NDcxNl0gQ1BVOiAzIFBJRDogNjI3IENvbW06IGdlbV9idXN5IFRhaW50ZWQ6IEcgICAgIFUg
ICAgICAgICAgICA1LjMuMC1yYzUrICM3MgpbICAgNzcuNTg0NzE5XSBIYXJkd2FyZSBuYW1lOiBJ
bnRlbCBDb3Jwb3JhdGlvbiBOVUM3aTVCTksvTlVDN2k1Qk5CLCBCSU9TIEJOS0JMMzU3Ljg2QS4w
MDUyLjIwMTcuMDkxOC4xMzQ2IDA5LzE4LzIwMTcKWyAgIDc3LjU4NDcyM10gUklQOiAwMDEwOmRt
YV9mZW5jZV9hcnJheV9yZWN5Y2xlKzB4MWQvMHgyMApbICAgNzcuNTg0NzI2XSBDb2RlOiA1ZCBj
MyA1YiA1ZCBlOSA1NCBmNSBmZiBmZiAwZiAxZiA0MCAwMCBmMCBmZiA0ZiAzOCAwZiA4OCBkMyA4
NSAxNCAwMCAwZiA5NCBjMCA3NCAwMSBjMyA0OCA4YiA1NyAxMCA0OCA4MyBjNyAxMCA0OCAzOSBk
NyA3NCBmMiA8MGY+IDBiIGMzIDQ4IGM3IGMwIDYyIDg4IGJlIDgxIGMzIDBmIDFmIDg0IDAwIDAw
IDAwIDAwIDAwIDQ4IGM3IGMwClsgICA3Ny41ODQ3MzBdIFJTUDogMDAxODpmZmZmYzkwMDAwMWMz
Yzc4IEVGTEFHUzogMDAwMTAyOTIKWyAgIDc3LjU4NDczM10gUkFYOiAwMDAwMDAwMDAwMDAwMDAx
IFJCWDogZmZmZjg4ODg1YWMxNGI0MCBSQ1g6IGNjY2NjY2NjY2NjY2NjY2QKWyAgIDc3LjU4NDcz
NV0gUkRYOiAwMDAwMDAxMjEwNWIwYTc3IFJTSTogMDAwMDAwMDAwMDAwMDAwMCBSREk6IGZmZmY4
ODg4NWFjMTRiNTAKWyAgIDc3LjU4NDczN10gUkJQOiAwMDAwMDAwMDAwMDAwMDAwIFIwODogMDAw
MDAwMDAwMDAwMDAwNCBSMDk6IDAwMDAwMDAwMDAwMWRlMDAKWyAgIDc3LjU4NDc0MF0gUjEwOiAw
MDAwMDAzMGY1MjI0MDEyIFIxMTogMDAwMDAwMDAwMDAwMDJkZiBSMTI6IGZmZmY4ODg4NWI1OGFm
ZjAKWyAgIDc3LjU4NDc0Ml0gUjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogMDAwMDAwMDAwMDAw
MDAwMCBSMTU6IGZmZmY4ODg4NTc0OGUxMDAKWyAgIDc3LjU4NDc0NV0gRlM6ICAwMDAwN2YxY2Q0
N2IxOWMwKDAwMDApIEdTOmZmZmY4ODg4NWViODAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAw
MDAwMApbICAgNzcuNTg0NzQ4XSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAw
MDAwMDgwMDUwMDMzClsgICA3Ny41ODQ3NTBdIENSMjogMDAwMDdmMWNkNjcxOTAwMCBDUjM6IDAw
MDAwMDA4NWFjNWIwMDIgQ1I0OiAwMDAwMDAwMDAwMTYwNmUwClsgICA3Ny41ODQ3NTNdIENhbGwg
VHJhY2U6ClsgICA3Ny41ODQ3NThdICBkbWFfcmVzdl9mZW5jZXNfYXNzaWduLmlzcmEuNysweDhk
LzB4MjIwClsgICA3Ny41ODQ3NjFdICBkbWFfcmVzdl9wcnVuZV9mZW5jZXMrMHhiYS8weGMwClsg
ICA3Ny41ODQ3OTZdICBpOTE1X2dlbV9vYmplY3Rfd2FpdF9yZXNlcnZhdGlvbisweDIyNi8weDI0
MCBbaTkxNV0KWyAgIDc3LjU4NDgyN10gIGk5MTVfZ2VtX29iamVjdF93YWl0KzB4MjMvMHg0MCBb
aTkxNV0KWyAgIDc3LjU4NDg1NF0gIGk5MTVfZ2VtX3NldF9kb21haW5faW9jdGwrMHhiZi8weDI0
MCBbaTkxNV0KCklmIHdlIHNpZ25hbCB0aGUgZmVuY2UtYXJyYXksIHRoZSBjYl9saXN0IGlzIHJl
cGxhY2VkIGJ5IHRoZSB0aW1lc3RhbXAKYW5kIGlzIG5vIGxvbmdlciBjb25zaWRlcmVkIGVtcHR5
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

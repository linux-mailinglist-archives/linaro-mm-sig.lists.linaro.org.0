Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFE7259FC0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 22:15:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23CB866722
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Sep 2020 20:15:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1512F66723; Tue,  1 Sep 2020 20:15:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC5CF6671E;
	Tue,  1 Sep 2020 20:15:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 73D4F66718
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:15:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 653446671E; Tue,  1 Sep 2020 20:15:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 473F166718
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Sep 2020 20:15:14 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E2BE1063;
 Tue,  1 Sep 2020 13:15:14 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F1043F66F;
 Tue,  1 Sep 2020 13:15:11 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063545eucas1p22eb2c7a643a299f3e1696b4c5bae0694@eucas1p2.samsung.com>
 <20200826063316.23486-30-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5beb988a-099b-1247-b3d5-257de44b9ab5@arm.com>
Date: Tue, 1 Sep 2020 21:15:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-30-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v9 29/32] rapidio: fix common struct
 sg_table related issues
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMjAyMC0wOC0yNiAwNzozMywgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBUaGUgRG9jdW1l
bnRhdGlvbi9ETUEtQVBJLUhPV1RPLnR4dCBzdGF0ZXMgdGhhdCB0aGUgZG1hX21hcF9zZygpIGZ1
bmN0aW9uCj4gcmV0dXJucyB0aGUgbnVtYmVyIG9mIHRoZSBjcmVhdGVkIGVudHJpZXMgaW4gdGhl
IERNQSBhZGRyZXNzIHNwYWNlLgo+IEhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMgdG8gdGhl
IGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKPiBkbWFfdW5tYXBfc2cgbXVzdCBi
ZSBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzCj4gcGFzc2Vk
IHRvIHRoZSBkbWFfbWFwX3NnKCkuCj4gCj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0
cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5nIGEgbm9uLWNvbnRpZ3VvdXMKPiBtZW1vcnkgYnVm
ZmVyLCB1c2VkIGNvbW1vbmx5IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0
Cj4gY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFk
ZHJlc3NlcyAoc2dsIGVudHJ5KSwKPiBhcyB3ZWxsIGFzIHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxp
c3QgZW50cmllczogQ1BVIHBhZ2VzIChvcmlnX25lbnRzIGVudHJ5KQo+IGFuZCBETUEgbWFwcGVk
IHBhZ2VzIChuZW50cyBlbnRyeSkuCj4gCj4gSXQgdHVybmVkIG91dCB0aGF0IGl0IHdhcyBhIGNv
bW1vbiBtaXN0YWtlIHRvIG1pc3VzZSBuZW50cyBhbmQgb3JpZ19uZW50cwo+IGVudHJpZXMsIGNh
bGxpbmcgRE1BLW1hcHBpbmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIgb2YgZW50cmll
cyBvcgo+IGlnbm9yaW5nIHRoZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkg
dGhlIGRtYV9tYXBfc2coKQo+IGZ1bmN0aW9uLgo+IAo+IFRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBs
ZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFwcGluZyB3cmFwcGVycyBvcGVyYXRpbmcKPiBkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIHVzZSBzY2F0dGVybGlzdCBwYWdl
Cj4gaXRlcmF0b3JzIHdoZXJlIHBvc3NpYmxlLiBUaGlzLCBhbG1vc3QgYWx3YXlzLCBoaWRlcyBy
ZWZlcmVuY2VzIHRvIHRoZQo+IG5lbnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0
aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xsb3cKPiBhbmQgY29weS9wYXN0ZSBzYWZlLgoK
UmV2aWV3ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cgo+IFNpZ25l
ZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPiAt
LS0KPiAgIGRyaXZlcnMvcmFwaWRpby9kZXZpY2VzL3Jpb19tcG9ydF9jZGV2LmMgfCAxMSArKysr
LS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYXBpZGlvL2RldmljZXMvcmlvX21wb3J0X2Nk
ZXYuYyBiL2RyaXZlcnMvcmFwaWRpby9kZXZpY2VzL3Jpb19tcG9ydF9jZGV2LmMKPiBpbmRleCBh
MzAzNDI5NDJlMjYuLjg5ZWIzZDIxMjY1MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhcGlkaW8v
ZGV2aWNlcy9yaW9fbXBvcnRfY2Rldi5jCj4gKysrIGIvZHJpdmVycy9yYXBpZGlvL2RldmljZXMv
cmlvX21wb3J0X2NkZXYuYwo+IEBAIC01NzMsOCArNTczLDcgQEAgc3RhdGljIHZvaWQgZG1hX3Jl
cV9mcmVlKHN0cnVjdCBrcmVmICpyZWYpCj4gICAJCQlyZWZjb3VudCk7Cj4gICAJc3RydWN0IG1w
b3J0X2NkZXZfcHJpdiAqcHJpdiA9IHJlcS0+cHJpdjsKPiAgIAo+IC0JZG1hX3VubWFwX3NnKHJl
cS0+ZG1hY2gtPmRldmljZS0+ZGV2LAo+IC0JCSAgICAgcmVxLT5zZ3Quc2dsLCByZXEtPnNndC5u
ZW50cywgcmVxLT5kaXIpOwo+ICsJZG1hX3VubWFwX3NndGFibGUocmVxLT5kbWFjaC0+ZGV2aWNl
LT5kZXYsICZyZXEtPnNndCwgcmVxLT5kaXIsIDApOwo+ICAgCXNnX2ZyZWVfdGFibGUoJnJlcS0+
c2d0KTsKPiAgIAlpZiAocmVxLT5wYWdlX2xpc3QpIHsKPiAgIAkJdW5waW5fdXNlcl9wYWdlcyhy
ZXEtPnBhZ2VfbGlzdCwgcmVxLT5ucl9wYWdlcyk7Cj4gQEAgLTgxNCw3ICs4MTMsNiBAQCByaW9f
ZG1hX3RyYW5zZmVyKHN0cnVjdCBmaWxlICpmaWxwLCB1MzIgdHJhbnNmZXJfbW9kZSwKPiAgIAlz
dHJ1Y3QgbXBvcnRfZGV2ICptZCA9IHByaXYtPm1kOwo+ICAgCXN0cnVjdCBkbWFfY2hhbiAqY2hh
bjsKPiAgIAlpbnQgcmV0Owo+IC0JaW50IG5lbnRzOwo+ICAgCj4gICAJaWYgKHhmZXItPmxlbmd0
aCA9PSAwKQo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiBAQCAtOTMwLDE1ICs5MjgsMTQgQEAgcmlv
X2RtYV90cmFuc2ZlcihzdHJ1Y3QgZmlsZSAqZmlscCwgdTMyIHRyYW5zZmVyX21vZGUsCj4gICAJ
CQkJeGZlci0+b2Zmc2V0LCB4ZmVyLT5sZW5ndGgpOwo+ICAgCX0KPiAgIAo+IC0JbmVudHMgPSBk
bWFfbWFwX3NnKGNoYW4tPmRldmljZS0+ZGV2LAo+IC0JCQkgICByZXEtPnNndC5zZ2wsIHJlcS0+
c2d0Lm5lbnRzLCBkaXIpOwo+IC0JaWYgKG5lbnRzID09IDApIHsKPiArCXJldCA9IGRtYV9tYXBf
c2d0YWJsZShjaGFuLT5kZXZpY2UtPmRldiwgJnJlcS0+c2d0LCBkaXIsIDApOwo+ICsJaWYgKHJl
dCkgewo+ICAgCQlybWNkX2Vycm9yKCJGYWlsZWQgdG8gbWFwIFNHIGxpc3QiKTsKPiAgIAkJcmV0
ID0gLUVGQVVMVDsKPiAgIAkJZ290byBlcnJfcGc7Cj4gICAJfQo+ICAgCj4gLQlyZXQgPSBkb19k
bWFfcmVxdWVzdChyZXEsIHhmZXIsIHN5bmMsIG5lbnRzKTsKPiArCXJldCA9IGRvX2RtYV9yZXF1
ZXN0KHJlcSwgeGZlciwgc3luYywgcmVxLT5zZ3QubmVudHMpOwo+ICAgCj4gICAJaWYgKHJldCA+
PSAwKSB7Cj4gICAJCWlmIChzeW5jID09IFJJT19UUkFOU0ZFUl9BU1lOQykKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0959E6F7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Aug 2019 13:45:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93E6360E68
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Aug 2019 11:45:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 81C1160EFB; Tue, 27 Aug 2019 11:45:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F51160EFF;
	Tue, 27 Aug 2019 11:44:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3ACA960E68
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Aug 2019 11:44:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 28A2D60EFF; Tue, 27 Aug 2019 11:44:40 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id BE3D060E68
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Aug 2019 11:44:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18276809-1500050 for multiple; Tue, 27 Aug 2019 12:44:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190826145731.1725-1-christian.koenig@amd.com>
 <20190826145731.1725-2-christian.koenig@amd.com>
In-Reply-To: <20190826145731.1725-2-christian.koenig@amd.com>
Message-ID: <156690626744.15406.4672497135424922383@skylake-alporthouse-com>
Date: Tue, 27 Aug 2019 12:44:27 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/9] dma-buf: fix
	dma_fence_array_signaled
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTI2IDE1OjU3OjIzKQo+IFRoZSBmdW5j
dGlvbiBpcyBzdXBwb3NlZCB0byBnaXZlIGEgaGludCBldmVuIGlmIHNpZ25hbGluZyBpcyBub3Qg
ZW5hYmxlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXku
YyB8IDEyICsrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LWFycmF5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMKPiBpbmRleCBkM2Zi
ZDk1MGJlOTQuLjUyMDY4ZWU1ZWIzNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWFycmF5LmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWFycmF5LmMK
PiBAQCAtMTAzLDggKzEwMywxOCBAQCBzdGF0aWMgYm9vbCBkbWFfZmVuY2VfYXJyYXlfZW5hYmxl
X3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKPiAgc3RhdGljIGJvb2wgZG1hX2Zl
bmNlX2FycmF5X3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+ICB7Cj4gICAgICAg
ICBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSA9IHRvX2RtYV9mZW5jZV9hcnJheShmZW5j
ZSk7Cj4gKyAgICAgICBpbnQgaSwgbnVtX3BlbmRpbmc7Cj4gIAo+IC0gICAgICAgcmV0dXJuIGF0
b21pY19yZWFkKCZhcnJheS0+bnVtX3BlbmRpbmcpIDw9IDA7Cj4gKyAgICAgICBudW1fcGVuZGlu
ZyA9IGF0b21pY19yZWFkKCZhcnJheS0+bnVtX3BlbmRpbmcpOwo+ICsgICAgICAgaWYgKHRlc3Rf
Yml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkKPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIG51bV9wZW5kaW5nIDw9IDA7Cj4gKwo+ICsgICAgICAgZm9y
IChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyArK2kpCj4gKyAgICAgICAgICAgICAgIGlm
IChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoYXJyYXktPmZlbmNlc1tpXSkgJiYKPiArICAgICAgICAg
ICAgICAgICAgIC0tbnVtX3BlbmRpbmcgPT0gMCkKPiArICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gdHJ1ZTsKCm51bV9mZW5jZXMgbWF5IGJlIDAgKGl0J3Mgbm90IHJlamVjdGVkIGluIGNv
bnN0cnVjdGlvbiBhbmQgd29ya3MKY3VycmVudGx5IGFzIGEgc2ltcGxlIGFsd2F5cy1zaWduYWxl
ZCBzdHViKS4KCglpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklU
LCAmZmVuY2UtPmZsYWdzKSkgewoJCWZvciAoaSA9IDA7IGkgPCBhcnJheS0+bnVtX2ZlbmNlczsg
KytpKQoJCQlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGFycmF5LT5mZW5jZXNbaV0pICYmCgkJ
CSAgICAtLW51bV9wZW5kaW5nID09IDApCgkJCQlicmVhazsKCX0KCglyZXR1cm4gbnVtX3BlbmRp
bmcgPD0gMDsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

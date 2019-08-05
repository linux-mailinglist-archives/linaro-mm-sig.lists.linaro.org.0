Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A7E82147
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 18:08:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 540026013A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 16:08:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 45BC260770; Mon,  5 Aug 2019 16:08:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5014160795;
	Mon,  5 Aug 2019 16:07:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3DA856013A
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 16:07:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 24FD460795; Mon,  5 Aug 2019 16:07:50 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id B5F6F6013A
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 16:07:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17894862-1500050 for multiple; Mon, 05 Aug 2019 17:07:43 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20190805154554.3476-1-christian.koenig@amd.com>
 <20190805154554.3476-5-christian.koenig@amd.com>
In-Reply-To: <20190805154554.3476-5-christian.koenig@amd.com>
Message-ID: <156502126144.28464.11399426968315988701@skylake-alporthouse-com>
Date: Mon, 05 Aug 2019 17:07:41 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 5/5] dma-buf: nuke reservation_object
	seq number
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA1IDE2OjQ1OjU0KQo+IEBAIC0yMTQs
MTYgKzIxNCwxNiBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxlICpm
aWxlLCBwb2xsX3RhYmxlICpwb2xsKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAgCj4g
IHJldHJ5Ogo+IC0gICAgICAgc2VxID0gcmVhZF9zZXFjb3VudF9iZWdpbigmcmVzdi0+c2VxKTsK
PiAgICAgICAgIHJjdV9yZWFkX2xvY2soKTsKPiAgCj4gKyAgICAgICBmZW5jZV9leGNsID0gcmN1
X2RlcmVmZXJlbmNlKHJlc3YtPmZlbmNlX2V4Y2wpOwo+ICAgICAgICAgZm9iaiA9IHJjdV9kZXJl
ZmVyZW5jZShyZXN2LT5mZW5jZSk7Cj4gICAgICAgICBpZiAoZm9iaikKPiAgICAgICAgICAgICAg
ICAgc2hhcmVkX2NvdW50ID0gZm9iai0+c2hhcmVkX2NvdW50Owo+ICAgICAgICAgZWxzZQo+ICAg
ICAgICAgICAgICAgICBzaGFyZWRfY291bnQgPSAwOwo+IC0gICAgICAgZmVuY2VfZXhjbCA9IHJj
dV9kZXJlZmVyZW5jZShyZXN2LT5mZW5jZV9leGNsKTsKPiAtICAgICAgIGlmIChyZWFkX3NlcWNv
dW50X3JldHJ5KCZyZXN2LT5zZXEsIHNlcSkpIHsKPiArCj4gKyAgICAgICBpZiAocmN1X2RlcmVm
ZXJlbmNlKHJlc3YtPmZlbmNlX2V4Y2wpICE9IGZlbmNlX2V4Y2wpIHsKCklmIEkgcmVtZW1iZXIg
bXkgcnVsZXMgY29ycmVjdGx5LCByY3VfZGVyZWZlcmVuY2UgaXMgYQpyZWFkLWRhdGEtZGVwZW5k
cywgd2hpY2ggb25seSBtZWFucyB0aGF0IGEgcmVhZCB0aHJvdWdoIHRoZSBwb2ludGVyCnJldHVy
bmVkIGJ5IHJjdV9kZXJlZmVyZW5jZSgpIGlzIGFmdGVyIHRoZSByZXRyaWV2YWwgb2YgdGhhdCBw
b2ludGVyLgpOb3RoaW5nIG9yZGVycyB0aGUgcmV0cmlldmFsIG9mIGZlbmNlX2V4Y2wgdnMgc2hh
cmVkX2NvdW50IChkaWZmZXJlbnQKcG9pbnRlcnMpLCBzbyBJIHRoaW5rIHRoZSBsYXN0IGxpbmUg
c2hvdWxkIGJlOgoKc21wX3JtYigpOwppZiAocmN1X2FjY2Vzc19wb2ludGVyKHJlc3YtPmZlbmNl
X2V4Y2wpICE9IGZlbmNlX2V4Y2wpCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=

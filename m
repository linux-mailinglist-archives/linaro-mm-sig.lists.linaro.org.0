Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0BABA295
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 22 Sep 2019 14:18:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 465D361904
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 22 Sep 2019 12:18:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3985A61900; Sun, 22 Sep 2019 12:18:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F1166618EF;
	Sun, 22 Sep 2019 12:17:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 45712607FB
 for <linaro-mm-sig@lists.linaro.org>; Sun, 22 Sep 2019 12:17:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2BB02618EF; Sun, 22 Sep 2019 12:17:38 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 61C07607FB
 for <linaro-mm-sig@lists.linaro.org>; Sun, 22 Sep 2019 12:17:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18576281-1500050 for multiple; Sun, 22 Sep 2019 13:17:22 +0100
MIME-Version: 1.0
To: Qiang Yu <yuq825@gmail.com>, dri-devel@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190922074900.853-1-yuq825@gmail.com>
References: <20190922074900.853-1-yuq825@gmail.com>
Message-ID: <156915463935.21369.4938801884938429332@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 22 Sep 2019 13:17:19 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 Qiang Yu <yuq825@gmail.com>, lima@lists.freedesktop.org,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/resv: fix exclusive fence get
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

UXVvdGluZyBRaWFuZyBZdSAoMjAxOS0wOS0yMiAwODo0OTowMCkKPiBUaGlzIGNhdXNlcyBrZXJu
ZWwgY3Jhc2ggd2hlbiB0ZXN0aW5nIGxpbWEgZHJpdmVyLgo+IAo+IENjOiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gRml4ZXM6IGI4YzAzNmRmYzY2ZiAoImRt
YS1idWY6IHNpbXBsaWZ5IHJlc2VydmF0aW9uX29iamVjdF9nZXRfZmVuY2VzX3JjdSBhIGJpdCIp
Cj4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUgPHl1cTgyNUBnbWFpbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+IGluZGV4IDQyYThmM2Yx
MTY4MS4uNzA5MDAyNTE1NTUwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiBAQCAtNDcxLDcgKzQ3MSw3
IEBAIGludCBkbWFfcmVzdl9nZXRfZmVuY2VzX3JjdShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwKPiAg
ICAgICAgIGlmIChwZmVuY2VfZXhjbCkKPiAgICAgICAgICAgICAgICAgKnBmZW5jZV9leGNsID0g
ZmVuY2VfZXhjbDsKPiAgICAgICAgIGVsc2UgaWYgKGZlbmNlX2V4Y2wpCj4gLSAgICAgICAgICAg
ICAgIHNoYXJlZFsrK3NoYXJlZF9jb3VudF0gPSBmZW5jZV9leGNsOwo+ICsgICAgICAgICAgICAg
ICBzaGFyZWRbc2hhcmVkX2NvdW50KytdID0gZmVuY2VfZXhjbDsKCk9vcHMuCgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

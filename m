Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A4778BA2B9
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 22 Sep 2019 14:51:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4E3C6184D
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 22 Sep 2019 12:50:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B8C02618DA; Sun, 22 Sep 2019 12:50:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DCB561885;
	Sun, 22 Sep 2019 12:50:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 84EFE6184D
 for <linaro-mm-sig@lists.linaro.org>; Sun, 22 Sep 2019 12:50:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7789D6083D; Sun, 22 Sep 2019 12:50:29 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 5FAAF6083D
 for <linaro-mm-sig@lists.linaro.org>; Sun, 22 Sep 2019 12:50:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18576431-1500050 for multiple; Sun, 22 Sep 2019 13:50:19 +0100
MIME-Version: 1.0
To: Qiang Yu <yuq825@gmail.com>, dri-devel@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156915463935.21369.4938801884938429332@skylake-alporthouse-com>
References: <20190922074900.853-1-yuq825@gmail.com>
 <156915463935.21369.4938801884938429332@skylake-alporthouse-com>
Message-ID: <156915661567.21369.17366014102480171128@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 22 Sep 2019 13:50:15 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjIgMTM6MTc6MTkpCj4gUXVvdGluZyBRaWFu
ZyBZdSAoMjAxOS0wOS0yMiAwODo0OTowMCkKPiA+IFRoaXMgY2F1c2VzIGtlcm5lbCBjcmFzaCB3
aGVuIHRlc3RpbmcgbGltYSBkcml2ZXIuCj4gPiAKPiA+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBGaXhlczogYjhjMDM2ZGZjNjZmICgiZG1hLWJ1
Zjogc2ltcGxpZnkgcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9mZW5jZXNfcmN1IGEgYml0IikKPiA+
IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDx5dXE4MjVAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gPiBpbmRl
eCA0MmE4ZjNmMTE2ODEuLjcwOTAwMjUxNTU1MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ID4g
QEAgLTQ3MSw3ICs0NzEsNyBAQCBpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlc19yY3Uoc3RydWN0IGRt
YV9yZXN2ICpvYmosCj4gPiAgICAgICAgIGlmIChwZmVuY2VfZXhjbCkKPiA+ICAgICAgICAgICAg
ICAgICAqcGZlbmNlX2V4Y2wgPSBmZW5jZV9leGNsOwo+ID4gICAgICAgICBlbHNlIGlmIChmZW5j
ZV9leGNsKQo+ID4gLSAgICAgICAgICAgICAgIHNoYXJlZFsrK3NoYXJlZF9jb3VudF0gPSBmZW5j
ZV9leGNsOwo+ID4gKyAgICAgICAgICAgICAgIHNoYXJlZFtzaGFyZWRfY291bnQrK10gPSBmZW5j
ZV9leGNsOwo+IAo+IE9vcHMuCj4gCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgoKQXBwbGllZCwgdGhhbmtzIGZvciB0aGUgZml4LgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

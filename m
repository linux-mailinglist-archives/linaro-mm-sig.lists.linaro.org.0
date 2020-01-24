Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B292914825F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 12:27:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC62D619DC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Jan 2020 11:27:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E1C67619E2; Fri, 24 Jan 2020 11:27:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8B1C60E75;
	Fri, 24 Jan 2020 11:26:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6992860BF7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 11:15:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5BEE860E75; Fri, 24 Jan 2020 11:15:41 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 9DC3960BF7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Jan 2020 11:15:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19993546-1500050 for multiple; Fri, 24 Jan 2020 11:15:33 +0000
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200124103123.GL1847@kadam>
References: <20200124101311.drryaegcdc7d4x7e@kili.mountain>
 <157986125623.2524.13979010293671565726@skylake-alporthouse-com>
 <20200124103123.GL1847@kadam>
Message-ID: <157986453128.2524.3980064063029834231@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 11:15:31 +0000
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: fix locking in sync_print_obj()
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDIwLTAxLTI0IDEwOjMxOjIzKQo+IE9uIEZyaSwgSmFu
IDI0LCAyMDIwIGF0IDEwOjIwOjU2QU0gKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1
b3RpbmcgRGFuIENhcnBlbnRlciAoMjAyMC0wMS0yNCAxMDoxMzoxMikKPiA+ID4gVGhpcyBpcyBh
bHdheXMgY2FsbGVkIHdpdGggSVJRcyBkaXNhYmxlZCBhbmQgd2UgZG9uJ3QgYWN0dWFsbHkgd2Fu
dCB0bwo+ID4gPiBlbmFibGUgSVJRcyBhdCB0aGUgZW5kLgo+ID4gPiAKPiA+ID4gRml4ZXM6IGE2
YWE4ZmNhNGQ3OSAoImRtYS1idWYvc3ctc3luYzogUmVkdWNlIGlycXNhdmUvaXJxcmVzdG9yZSBm
cm9tIGtub3duIGNvbnRleHQiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEYW4gQ2FycGVudGVyIDxk
YW4uY2FycGVudGVyQG9yYWNsZS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9kbWEtYnVm
L3N5bmNfZGVidWcuYyB8IDUgKysrLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9k
bWEtYnVmL3N5bmNfZGVidWcuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMKPiA+ID4g
aW5kZXggMTAxMzk0ZjE2OTMwLi45NTIzMzEzNDRiMWMgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMKPiA+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNf
ZGVidWcuYwo+ID4gPiBAQCAtMTA3LDE1ICsxMDcsMTYgQEAgc3RhdGljIHZvaWQgc3luY19wcmlu
dF9mZW5jZShzdHJ1Y3Qgc2VxX2ZpbGUgKnMsCj4gPiA+ICBzdGF0aWMgdm9pZCBzeW5jX3ByaW50
X29iaihzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHN0cnVjdCBzeW5jX3RpbWVsaW5lICpvYmopCj4gPiA+
ICB7Cj4gPiA+ICAgICAgICAgc3RydWN0IGxpc3RfaGVhZCAqcG9zOwo+ID4gPiArICAgICAgIHVu
c2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiA+ICAKPiA+ID4gICAgICAgICBzZXFfcHJpbnRmKHMsICIl
czogJWRcbiIsIG9iai0+bmFtZSwgb2JqLT52YWx1ZSk7Cj4gPiA+ICAKPiA+ID4gLSAgICAgICBz
cGluX2xvY2tfaXJxKCZvYmotPmxvY2spOwo+ID4gPiArICAgICAgIHNwaW5fbG9ja19pcnFzYXZl
KCZvYmotPmxvY2ssIGZsYWdzKTsKPiA+IAo+ID4gRXhhY3RseSwgaXQgY2FuIGJlIGp1c3Qgc3Bp
bl9sb2NrKCkgYXMgdGhlIGlycSBzdGF0ZSBpcyBrbm93bi4KPiA+IAo+IAo+IEkgZGlkIGNvbnNp
ZGVyIHRoYXQgYnV0IEkgd2Fzbid0IHN1cmUgaG93IHRoaXMgaXMgZ29pbmcgdG8gYmUgdXNlZCBp
bgo+IHRoZSBmdXR1cmUgc28gSSB0b29rIGEgY29uc2VydmF0aXZlIGFwcHJvYWNoLgoKU3VyZSwg
aXQncyBkZWJ1ZyBzbyBub3QgY3JpdGljYWwgKGxpc3RzIHdpdGhpbiBsaXN0cyB0byBhIHNlcWZp
bGUsIG91Y2gpCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=

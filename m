Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D77BE461603
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 14:14:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 02FE06079C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:14:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 68DF46090B; Mon, 29 Nov 2021 13:14:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C7AB60851;
	Mon, 29 Nov 2021 13:14:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 988AD60787
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 13:14:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8B4D260851; Mon, 29 Nov 2021 13:14:44 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by lists.linaro.org (Postfix) with ESMTPS id 4703B60787
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 13:14:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10182"; a="236193690"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="236193690"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 05:14:40 -0800
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="459143628"
Received: from keyanli-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.249.254.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 05:14:38 -0800
MIME-Version: 1.0
In-Reply-To: <180f069a-bf29-cf05-c9f9-5b1737ec5664@gmail.com>
References: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
 <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
 <58ca11648ab29d96b84640760d2acc3ac2d39d19.camel@linux.intel.com>
 <e4d8e272-8175-4298-f227-240febc0bda0@gmail.com>
 <ee128e237dbc2b6b2341b49ab07661c1f1b65e0b.camel@linux.intel.com>
 <180f069a-bf29-cf05-c9f9-5b1737ec5664@gmail.com>
To: Christian König <ckoenig.leichtzumerken@gmail.com>, Thomas Hellström <thomas.hellstrom@linux.intel.com>, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163819167565.18436.3361321032268102014@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 29 Nov 2021 15:14:35 +0200
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma_fence_array: Fix PENDING_ERROR leak
 in dma_fence_array_signaled()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: linaro-mm-sig@lists.linaro.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

KFN3aXRjaGluZyB0byBteSBAbGludXguaW50ZWwuY29tIGFkZHJlc3MpCgpRdW90aW5nIENocmlz
dGlhbiBLw7ZuaWcgKDIwMjEtMTEtMjkgMTQ6NTU6MzcpCj4gQW0gMjkuMTEuMjEgdW0gMTM6NDYg
c2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiA+IE9uIE1vbiwgMjAyMS0xMS0yOSBhdCAxMzoz
MyArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+PiBBbSAyOS4xMS4yMSB1bSAxMzoy
MyBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+ID4+PiBIaSwgQ2hyaXN0aWFuLAo+ID4+Pgo+
ID4+PiBPbiBNb24sIDIwMjEtMTEtMjkgYXQgMDk6MjEgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6Cj4gPj4+PiBBbSAyOS4xMS4yMSB1bSAwODozNSBzY2hyaWViIFRob21hcyBIZWxsc3Ry
w7ZtOgo+ID4+Pj4+IElmIGEgZG1hX2ZlbmNlX2FycmF5IGlzIHJlcG9ydGVkIHNpZ25hbGVkIGJ5
IGEgY2FsbCB0bwo+ID4+Pj4+IGRtYV9mZW5jZV9pc19zaWduYWxlZCgpLCBpdCBtYXkgbGVhayB0
aGUgUEVORElOR19FUlJPUiBzdGF0dXMuCj4gPj4+Pj4KPiA+Pj4+PiBGaXggdGhpcyBieSBjbGVh
cmluZyB0aGUgUEVORElOR19FUlJPUiBzdGF0dXMgaWYgd2UgcmV0dXJuIHRydWUKPiA+Pj4+PiBp
bgo+ID4+Pj4+IGRtYV9mZW5jZV9hcnJheV9zaWduYWxlZCgpLgo+ID4+Pj4+Cj4gPj4+Pj4gRml4
ZXM6IDFmNzBiOGI4MTJmMyAoImRtYS1mZW5jZTogUHJvcGFnYXRlIGVycm9ycyB0byBkbWEtZmVu
Y2UtCj4gPj4+Pj4gYXJyYXkgY29udGFpbmVyIikKPiA+Pj4+PiBDYzogbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCj4gPj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVp
Y2h0enVtZXJrZW5AZ21haWwuY29tPgo+ID4+Pj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiA+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2
bQo+ID4+Pj4+IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiA+Pj4+IFJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPj4+
IEhvdyBhcmUgdGhlIGRtYS1idWYgLyBkbWEtZmVuY2UgcGF0Y2hlcyB0eXBpY2FsbHkgbWVyZ2Vk
PyBJZiBpOTE1Cj4gPj4+IGlzCj4gPj4+IHRoZSBvbmx5IGZlbmNlLT5lcnJvciB1c2VyLCBjb3Vs
ZCB3ZSB0YWtlIHRoaXMgdGhyb3VnaCBkcm0taW50ZWwgdG8KPiA+Pj4gYXZvaWQgYSBiYWNrbWVy
Z2UgZm9yIHVwY29taW5nIGk5MTUgd29yaz8KPiA+PiBXZWxsIHRoYXQgb25lIGhlcmUgbG9va3Mg
bGlrZSBhIGJ1Z2ZpeCB0byBtZSwgc28gZWl0aGVyIHRocm91Z2gKPiA+PiBkcm0tbWlzYy1maXhl
cyBvcmUgc29tZSBpOTE1IC1maXhlcyBicmFuY2ggc291bmRzIGZpbmUgdG8gbWUuCj4gPj4KPiA+
PiBJZiB5b3UgaGF2ZSBhbnkgbmV3IGRldmVsb3BtZW50IGJhc2VkIG9uIHRoYXQgYSBiYWNrbWVy
Z2Ugb2YgdGhlIC0KPiA+PiBmaXhlcwo+ID4+IGludG8geW91ciAtbmV4dCBicmFuY2ggaXMgdW5h
dm9pZGFibGUgYW55d2F5Lgo+ID4gT2ssIEknbGwgY2hlY2sgd2l0aCBKb29uYXMgaWYgSSBjYW4g
dGFrZSBpdCB0aHJvdWdoCj4gPiBkcm0taW50ZWwtZ3QtbmV4dCwgc2luY2UgZml4ZXMgYXJlIGNo
ZXJyeS1waWNrZWQgZnJvbSB0aGF0IG9uZS4gUGF0Y2gKPiA+IHdpbGwgdGhlbiBhcHBlYXIgaW4g
Ym90aCB0aGUgLWZpeGVzIGFuZCB0aGUgLW5leHQgYnJhbmNoLgo+IAo+IFdlbGwgZXhhY3RseSB0
aGF0J3MgdGhlIHN0dWZmIERhbmllbCB0b2xkIG1lIHRvIGF2b2lkIDopCj4gCj4gQnV0IG1heWJl
IHlvdXIgaTkxNSB3b3JrZmxvdyBpcyBzb21laG93IGJldHRlciBoYW5kbGluZyB0aGF0IHRoYW4g
dGhlIAo+IEFNRCB3b3JrZmxvdy4KCklmIGl0J3MgYSBidWdmaXggdG8gYSBwYXRjaCB0aGF0IG1l
cmdlZCB0aHJvdWdoIGRybS1taXNjLW5leHQsIEknZAphbHdheXMgYmUgaW5jbGluZWQgdG8gbWVy
Z2UgdGhlIGZpeHVwIHVzaW5nIHRoZSBzYW1lIHByb2Nlc3MgKHdoaWNoCndvdWxkIGJlIGRybS1u
ZXh0LWZpeGVzKS4KCkluIGk5MTUgd2UgZG8gYWx3YXlzIG1lcmdlIHRoZSBwYXRjaGVzIHRvIC1u
ZXh0IGZpcnN0LCBhbmQgbmV2ZXIgZG8gYQpiYWNrbWVyZ2Ugb2YgLWZpeGVzIChhcyBpdCdzIGEg
Y2hlcnJ5LXBpY2tlZCBicmFuY2gpIHNvIHRoZSB3b3JrZmxvd3MKZGlmZmVyIHRoZXJlLgoKSGVy
ZSB0aGUgdGltZSBiZXR3ZWVuIHRoZSBmaXh1cCBhbmQgdGhlIHByZXZpb3VzIHBhdGNoIGlzIHNv
IGxvbmcgdGhhdAplaXRoZXIgd2F5IGlzIGZpbmUgd2l0aC4gU28gZmVlbCBmcmVlIHRvIGFwcGx5
IHRvIGRybS1pbnRlbC1ndC1uZXh0LgoKUmVnYXJkcywgSm9vbmFzCgo+IENocmlzdGlhbi4KPiAK
PiA+Cj4gPiBUaGFua3MsCj4gPiAvVGhvbWFzCj4gPgo+ID4KPiA+PiBSZWdhcmRzLAo+ID4+IENo
cmlzdGlhbi4KPiA+Pgo+ID4+PiAvVGhvbWFzCj4gPj4+Cj4gPj4+Cj4gPj4+Pj4gLS0tCj4gPj4+
Pj4gIMKgwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgNiArKysrKy0KPiA+
Pj4+PiAgwqDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPj4+Pj4KPiA+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1h
cnJheS5jIGIvZHJpdmVycy9kbWEtCj4gPj4+Pj4gYnVmL2RtYS1mZW5jZS1hcnJheS5jCj4gPj4+
Pj4gaW5kZXggZDNmYmQ5NTBiZTk0Li4zZTA3Zjk2MWUyZjMgMTAwNjQ0Cj4gPj4+Pj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jCj4gPj4+Pj4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jCj4gPj4+Pj4gQEAgLTEwNCw3ICsxMDQsMTEgQEAgc3Rh
dGljIGJvb2wKPiA+Pj4+PiBkbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQoc3RydWN0Cj4gPj4+Pj4g
ZG1hX2ZlbmNlICpmZW5jZSkKPiA+Pj4+PiAgwqDCoCB7Cj4gPj4+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5ID0KPiA+Pj4+PiB0b19kbWFfZmVuY2Vf
YXJyYXkoZmVuY2UpOwo+ID4+Pj4+ICAgICAKPiA+Pj4+PiAtwqDCoMKgwqDCoMKgwqByZXR1cm4g
YXRvbWljX3JlYWQoJmFycmF5LT5udW1fcGVuZGluZykgPD0gMDsKPiA+Pj4+PiArwqDCoMKgwqDC
oMKgwqBpZiAoYXRvbWljX3JlYWQoJmFycmF5LT5udW1fcGVuZGluZykgPiAwKQo+ID4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gPj4+Pj4gKwo+ID4+
Pj4+ICvCoMKgwqDCoMKgwqDCoGRtYV9mZW5jZV9hcnJheV9jbGVhcl9wZW5kaW5nX2Vycm9yKGFy
cmF5KTsKPiA+Pj4+PiArwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiA+Pj4+PiAgwqDCoCB9
Cj4gPj4+Pj4gICAgIAo+ID4+Pj4+ICDCoMKgIHN0YXRpYyB2b2lkIGRtYV9mZW5jZV9hcnJheV9y
ZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+ID4KPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

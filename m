Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FB24223DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 12:48:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A75F61197
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 10:48:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3444E6049D; Tue,  5 Oct 2021 10:48:00 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EDE38604C3;
	Tue,  5 Oct 2021 10:47:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EC01A6043D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 10:47:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E9C60604C3; Tue,  5 Oct 2021 10:47:55 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by lists.linaro.org (Postfix) with ESMTPS id A8EB46043D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 10:47:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="225649140"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="225649140"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 03:47:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="438651191"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.238.194])
 ([10.213.238.194])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 03:47:51 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-25-christian.koenig@amd.com>
 <80bb132f-0e40-68a1-d034-2d4b17d321ad@linux.intel.com>
 <4e94e263-fd20-4779-690a-b530c220b350@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <32d9b655-0b18-417a-eefc-cc1dc41fb554@linux.intel.com>
Date: Tue, 5 Oct 2021 11:47:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <4e94e263-fd20-4779-690a-b530c220b350@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb
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
Cc: daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDA1LzEwLzIwMjEgMTE6MjcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMDUuMTAu
MjEgdW0gMDk6NTMgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMDEvMTAvMjAyMSAx
MTowNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IE1ha2VzIHRoZSBoYW5kbGluZyBhIGJp
dCBtb3JlIGNvbXBsZXgsIGJ1dCBhdm9pZHMgdGhlIHVzZSBvZgo+Pj4gZG1hX3Jlc3ZfZ2V0X2V4
Y2xfdW5sb2NrZWQoKS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2F0b21pY19oZWxwZXIuYyB8IDEzICsrKysrKysrKysrLS0KPj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgCj4+PiBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYwo+Pj4gaW5kZXggZTU3MDM5OGFiZDc4
Li4yMWVkOTMwMDQyYjggMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9h
dG9taWNfaGVscGVyLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19o
ZWxwZXIuYwo+Pj4gQEAgLTE0Myw2ICsxNDMsNyBAQAo+Pj4gwqDCoCAqLwo+Pj4gwqAgaW50IGRy
bV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0
cnVjdCAKPj4+IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpCj4+PiDCoCB7Cj4+PiArwqDCoMKgIHN0
cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmo7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+Pj4g
wqAgQEAgLTE1MCw5ICsxNTEsMTcgQEAgaW50IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVf
ZmIoc3RydWN0IAo+Pj4gZHJtX3BsYW5lICpwbGFuZSwgc3RydWN0IGRybV9wbGFuZV9zdAo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4gwqAgwqDCoMKgwqDCoCBvYmogPSBkcm1f
Z2VtX2ZiX2dldF9vYmooc3RhdGUtPmZiLCAwKTsKPj4+IC3CoMKgwqAgZmVuY2UgPSBkbWFfcmVz
dl9nZXRfZXhjbF91bmxvY2tlZChvYmotPnJlc3YpOwo+Pj4gLcKgwqDCoCBkcm1fYXRvbWljX3Nl
dF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsKPj4+ICvCoMKgwqAgZG1hX3Jlc3ZfaXRl
cl9iZWdpbigmY3Vyc29yLCBvYmotPnJlc3YsIGZhbHNlKTsKPj4+ICvCoMKgwqAgZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPj4+ICvCoMKgwqDCoMKg
wqDCoCBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl9p
dGVyX2VuZCgmY3Vyc29yKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBUT0RPOiBXZSBvbmx5IHVz
ZSB0aGUgZmlyc3Qgd3JpdGUgZmVuY2UgaGVyZSAqLwo+Pgo+PiBXaGF0IGlzIHRoZSBUT0RPPyBO
QiBpbnN0ZWFkPwo+IAo+IFRoZSBkcm0gYXRvbWljIEFQSSBjYW4gdW5mb3J0dW5hdGVseSBoYW5k
bGUgb25seSBvbmUgZmVuY2UgYW5kIHdlIGNhbiAKPiBjZXJ0YWlubHkgaGF2ZSBtb3JlIHRoYW4g
dGhhdC4KPiAKPj4KPj4+ICsgZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBm
ZW5jZSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+PiArwqDCoMKgIH0KPj4+ICvC
oMKgwqAgZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+PiDCoCArwqDCoMKgIGRybV9hdG9t
aWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgTlVMTCk7Cj4+Cj4+IMKgwqDCoMKgZG1hX3Jl
c3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBvYmotPnJlc3YsIGZhbHNlKTsKPj4gwqDCoMKgwqBkbWFf
cmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+PiDCoMKgwqDC
oMKgwqDCoCBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKPj4gwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+
IMKgwqDCoMKgfQo+PiDCoMKgwqDCoGRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+Pgo+PiDC
oMKgwqDCoGRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOwo+Pgo+
PiBEb2VzIHRoaXMgd29yaz8KPiAKPiBZZWFoIHRoYXQgc2hvdWxkIHdvcmsgYXMgd2VsbC4KPiAK
Pj4KPj4gQnV0IG92ZXJhbGwgSSBhbSBub3Qgc3VyZSB0aGlzIGlzIG5pY2VyLiBJcyB0aGUgZ29h
bCB0byByZW1vdmUgCj4+IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkIGFzIEFQSSBpdCBqdXN0
IGRvZXMgbm90IGhhcHBlbiBpbiB0aGlzIHNlcmllcz8KPiAKPiBZZXMsIHRoZSBvbmx5IHVzZXIg
bGVmdCBpcyB0aGUgaTkxNV9nZW1fb2JqZWN0X2xhc3Rfd3JpdGVfZW5naW5lKCkgCj4gZnVuY3Rp
b24gYW5kIHRoYXQgb25lIHlvdSBhbHJlYWR5IHJlbW92ZWQgaW4gaTkxNS4KClRvIG1lIHRoZSBh
Ym92ZSBmZWVscyBjbHVtc2llciB0aGFuIGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkIGFuZCB5
b3UgCmNhbiBldmVuIHZpZXcgaXQgYXMgb3BlbiBjb2RpbmcgdGhhdCBoZWxwZXIuIFNvIGRvbid0
IGtub3csIHNvbWVvbmUgZWxzZSAKY2FuIGhhdmUgYSBjYXN0aW5nIHZvdGUuCgpJIGd1ZXNzIGlm
IHN1cHBvcnQgZm9yIG1vcmUgdGhhbiBvbmUgZmVuY2UgaXMgY29taW5nIHNvb24oLWlzaCkgZG8g
ZHJtIAphdG9taWMgYXBpIHRoZW4gSSBjb3VsZCBiZSBjb252aW5jZWQgdGhlIGl0ZXJhdG9yIGhl
cmUgbWFrZXMgc2Vuc2UgdG9kYXkuCgpSZWdhcmRzLAoKVHZydGtvCgo+IFJlZ2FyZHMsCj4gQ2hy
aXN0aWFuLgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiBUdnJ0a28KPj4KPj4+IMKgwqDCoMKgwqAg
cmV0dXJuIDA7Cj4+PiDCoCB9Cj4+PiDCoCBFWFBPUlRfU1lNQk9MX0dQTChkcm1fZ2VtX3BsYW5l
X2hlbHBlcl9wcmVwYXJlX2ZiKTsKPj4+Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==

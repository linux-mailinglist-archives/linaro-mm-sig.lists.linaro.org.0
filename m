Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B719B4148B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 14:20:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 628F3619C8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 12:20:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4B9D2617DA; Wed, 22 Sep 2021 12:20:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F58861731;
	Wed, 22 Sep 2021 12:20:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6934C6117A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 12:20:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5FE4261731; Wed, 22 Sep 2021 12:20:36 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by lists.linaro.org (Postfix) with ESMTPS id 05EEE6117A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 12:20:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223622213"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="223622213"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 05:20:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="703740646"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 05:20:31 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-14-christian.koenig@amd.com>
 <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
 <4c357136-3279-ff57-1c4f-62276534c887@linux.intel.com>
 <acc297ce-287e-295c-8b54-223610fb2093@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6f8140bd-9cff-e0d8-e014-b3fb8d2d8ab0@linux.intel.com>
Date: Wed, 22 Sep 2021 13:20:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <acc297ce-287e-295c-8b54-223610fb2093@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 13/26] drm/i915: use the new iterator in
 i915_gem_busy_ioctl
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

Ck9uIDIyLzA5LzIwMjEgMTM6MTUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjIuMDku
MjEgdW0gMTM6NDYgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMjIvMDkvMjAyMSAx
MToyMSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pgo+Pj4gT24gMjIvMDkvMjAyMSAxMDoxMCwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBUaGlzIG1ha2VzIHRoZSBmdW5jdGlvbiBtdWNo
IHNpbXBsZXIgc2luY2UgdGhlIGNvbXBsZXgKPj4+PiByZXRyeSBsb2dpYyBpcyBub3cgaGFuZGxl
ZCBlbHNlIHdoZXJlLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMgfCAzNSAKPj4+PiArKysrKysrKysrLS0tLS0tLS0t
LS0tLS0KPj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRp
b25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2J1c3kuYyAKPj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9i
dXN5LmMKPj4+PiBpbmRleCA2MjM0ZTE3MjU5YzEuLjMxM2FmYjRhMTFjNyAxMDA2NDQKPj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+Pj4+IEBAIC04Miw4ICs4
Miw4IEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAK
Pj4+PiAqZGF0YSwKPj4+PiDCoCB7Cj4+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2J1c3kgKmFyZ3MgPSBkYXRhOwo+Pj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iajsKPj4+PiAtwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0Owo+Pj4+
IC3CoMKgwqAgdW5zaWduZWQgaW50IHNlcTsKPj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9p
dGVyIGN1cnNvcjsKPj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+Pj4+IMKg
wqDCoMKgwqAgaW50IGVycjsKPj4+PiDCoMKgwqDCoMKgIGVyciA9IC1FTk9FTlQ7Cj4+Pj4gQEAg
LTEwOSwyNyArMTA5LDIwIEBAIGk5MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgCj4+Pj4gdm9pZCAqZGF0YSwKPj4+PiDCoMKgwqDCoMKgwqAgKiB0byByZXBvcnQgdGhl
IG92ZXJhbGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCAKPj4+PiBkb2Vz
Lgo+Pj4+IMKgwqDCoMKgwqDCoCAqCj4+Pj4gwqDCoMKgwqDCoMKgICovCj4+Pj4gLXJldHJ5Ogo+
Pj4+IC3CoMKgwqAgc2VxID0gcmF3X3JlYWRfc2VxY291bnQoJm9iai0+YmFzZS5yZXN2LT5zZXEp
Owo+Pj4+IC0KPj4+PiAtwqDCoMKgIC8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRv
IHRoZSBSRUFEICphbmQqIFdSSVRFIGVuZ2luZSAqLwo+Pj4+IC3CoMKgwqAgYXJncy0+YnVzeSA9
IAo+Pj4+IGJ1c3lfY2hlY2tfd3JpdGVyKGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2JqLT5iYXNlLnJl
c3YpKTsKPj4+PiAtCj4+Pj4gLcKgwqDCoCAvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBS
RUFEIHNldCBvZiBlbmdpbmVzICovCj4+Pj4gLcKgwqDCoCBsaXN0ID0gZG1hX3Jlc3Zfc2hhcmVk
X2xpc3Qob2JqLT5iYXNlLnJlc3YpOwo+Pj4+IC3CoMKgwqAgaWYgKGxpc3QpIHsKPj4+PiAtwqDC
oMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IHNoYXJlZF9jb3VudCA9IGxpc3QtPnNoYXJlZF9jb3Vu
dCwgaTsKPj4+PiAtCj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBzaGFyZWRf
Y291bnQ7ICsraSkgewo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlID0KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJjdV9kZXJl
ZmVyZW5jZShsaXN0LT5zaGFyZWRbaV0pOwo+Pj4+IC0KPj4+PiArwqDCoMKgIGFyZ3MtPmJ1c3kg
PSBmYWxzZTsKPj4+Cj4+PiBZb3UgY2FuIGRyb3AgdGhpcyBsaW5lLCBlc3BlY2lhbGx5IHNpbmNl
IGl0IGlzIG5vdCBhIGJvb2xlYW4uIFdpdGggdGhhdDoKPj4+Cj4+PiBSZXZpZXdlZC1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4KPj4gSGF2aW5nIHNhaWQg
dGhpcywgb25lIHRoaW5nIHRvIGFkZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgaXMgc29tZSAKPj4g
Y29tbWVudGFyeSB0aGF0IGFsdGhvdWdoIHNpbXBsZXIgaW4gY29kZSwgdGhlIG5ldyBpbXBsZW1l
bnRhdGlvbiBoYXMgYSAKPj4gbG90IG1vcmUgYXRvbWljIGluc3RydWN0aW9ucyBkdWUgYWxsIHRo
ZSBleHRyYSBmZW5jZSBnZXQvcHV0Lgo+Pgo+PiBTYXlpbmcgdGhpcyBiZWNhdXNlIEkgcmVtZW1i
ZXJlZCBidXN5IGlvY3RsIGlzIHF1aXRlIGFuIG92ZXItcG9wdWxhciAKPj4gb25lLiBUaGlua2lu
ZyBhYm91dCB0cmFjZXMgZnJvbSBzb21lIHJlYWwgdXNlcnNwYWNlcyBJIGxvb2tlZCBhdCBpbiAK
Pj4gdGhlIHBhc3QuCj4+Cj4+IFNvIEkgdGhpbmsgYWNrIGZyb20gbWFpbnRhaW5lcnMgd2lsbCBi
ZSByZXF1aXJlZCBoZXJlLiBCZWNhdXNlIEkganVzdCAKPj4gZG9uJ3Qga25vdyBpZiBhbnkgcGVy
Zm9ybWFuY2UgaW1wYWN0IHdpbGwgYmUgdmlzaWJsZSBvciBub3QuIFNvIHZpZXcgCj4+IG15IHIt
YiBhcyAiY29kZSBsb29rcyBmaW5lIiBidXQgSSBhbSBvbiB0aGUgZmVuY2UgaWYgaXQgc2hvdWxk
IAo+PiBhY3R1YWxseSBiZSBtZXJnZWQuIFByb2JhYmx5IGxlYW5pbmcgdG93YXJkcyBubyBhY3R1
YWxseSAtIGdpdmVuIGhvdyAKPj4gdGhlIGNvZGUgaXMgbG9jYWxpc2VkIGhlcmUgYW5kIEkgZGlz
bGlrZSBidXJkZW5pbmcgb2xkIHBsYXRmb3JtcyB3aXRoIAo+PiBtb3JlIENQVSB0aW1lIGl0IGNv
dWxkIGJlIGNoZWFwbHkgbGVmdCBhcyBpcy4KPiAKPiBXZWxsIHByZXZpb3VzbHkgd2Ugd291bGQg
aGF2ZSBhbGxvY2F0ZWQgbWVtb3J5LCB3aGljaCBhcyBmYXIgYXMgSSBrbm93IAo+IGhhcyBtb3Jl
IG92ZXJoZWFkIHRoYW4gYSBmZXcgZXh0cmEgYXRvbWljIG9wZXJhdGlvbnMuCgpJdCBkb2Vzbid0
LCBpdCBvbmx5IHVzZXMgZG1hX3Jlc3ZfZXhjbF9mZW5jZSBhbmQgZG1hX3Jlc3Zfc2hhcmVkX2xp
c3QuCgpSZWdhcmRzLAoKVHZydGtvCgo+IE9uIHRoZSBvdGhlciBoYW5kIEkgY291bGQgYXMgd2Vs
bCBzdGljayB3aXRoIGRtYV9yZXN2X2dldF9mZW5jZXMoKSBoZXJlLgo+IAo+IFJlZ2FyZHMsCj4g
Q2hyaXN0aWFuLgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiBUdnJ0a28KPj4KPj4KPj4+Cj4+PiBS
ZWdhcmRzLAo+Pj4KPj4+IFR2cnRrbwo+Pj4KPj4+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVn
aW4oJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIHRydWUpOwo+Pj4+ICvCoMKgwqAgZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPj4+PiArwqDCoMKgwqDC
oMKgwqAgaWYgKGRtYV9yZXN2X2l0ZXJfaXNfcmVzdGFydGVkKCZjdXJzb3IpKQo+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGFyZ3MtPmJ1c3kgPSAwOwo+Pj4+ICsKPj4+PiArwqDCoMKgwqDC
oMKgwqAgaWYgKGRtYV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKCZjdXJzb3IpKQo+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIC8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRo
ZSBSRUFEICphbmQqIAo+Pj4+IFdSSVRFIGVuZ2luZSAqLwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja193cml0ZXIoZmVuY2UpOwo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBlbHNlCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogVHJhbnNsYXRl
IHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwo+
Pj4+IC3CoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gwqDCoMKgwqDCoCB9Cj4+Pj4gLQo+Pj4+IC3CoMKg
wqAgaWYgKGFyZ3MtPmJ1c3kgJiYgcmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5iYXNlLnJlc3Yt
PnNlcSwgc2VxKSkKPj4+PiAtwqDCoMKgwqDCoMKgwqAgZ290byByZXRyeTsKPj4+PiArwqDCoMKg
IGRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+Pj4+IMKgwqDCoMKgwqAgZXJyID0gMDsKPj4+
PiDCoCBvdXQ6Cj4+Pj4KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK

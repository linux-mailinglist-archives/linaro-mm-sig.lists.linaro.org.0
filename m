Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6015B422101
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 10:41:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED70767053
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 08:41:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1A99161E96; Tue,  5 Oct 2021 08:41:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96CAC60B4F;
	Tue,  5 Oct 2021 08:41:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD34E60A8A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 08:41:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C02B160B4F; Tue,  5 Oct 2021 08:41:49 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by lists.linaro.org (Postfix) with ESMTPS id 5944060A8A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 08:41:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="225587602"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="225587602"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 01:41:40 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="487942524"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.238.194])
 ([10.213.238.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 01:41:39 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-10-christian.koenig@amd.com>
 <ef650439-a418-979b-56fb-4cf10f91747e@linux.intel.com>
 <e43bc3f9-60be-0f7f-b1a7-3cd2fe1a6289@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <afa865d8-9d95-1540-016a-f94d80f12950@linux.intel.com>
Date: Tue, 5 Oct 2021 09:41:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <e43bc3f9-60be-0f7f-b1a7-3cd2fe1a6289@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 09/28] dma-buf: use the new iterator in
 dma_resv_poll
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

Ck9uIDA1LzEwLzIwMjEgMDk6MTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMDUuMTAu
MjEgdW0gMDk6NDQgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMDEvMTAvMjAyMSAx
MTowNSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IFNpbXBsaWZ5IHRoZSBjb2RlIGEgYml0
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDM2
ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+
PiBpbmRleCA4MjQyYjVkOWJhZWIuLmJlYjUwNGE5MmQ2MCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMK
Pj4+IEBAIC0yMDksMTkgKzIwOSwxNCBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3BvbGxfY2Ioc3Ry
dWN0IGRtYV9mZW5jZSAKPj4+ICpmZW5jZSwgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpCj4+PiDC
oMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+Pj4gwqAgfQo+Pj4gwqAgLXN0YXRpYyBi
b29sIGRtYV9idWZfcG9sbF9zaGFyZWQoc3RydWN0IGRtYV9yZXN2ICpyZXN2LAo+Pj4gK3N0YXRp
YyBib29sIGRtYV9idWZfcG9sbF9hZGRfY2Ioc3RydWN0IGRtYV9yZXN2ICpyZXN2LCBib29sIHdy
aXRlLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2J1
Zl9wb2xsX2NiX3QgKmRjYikKPj4+IMKgIHsKPj4+IC3CoMKgwqAgc3RydWN0IGRtYV9yZXN2X2xp
c3QgKmZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChyZXN2KTsKPj4+ICvCoMKgwqAgc3RydWN0
IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZTsKPj4+IC3CoMKgwqAgaW50IGksIHI7Cj4+PiAtCj4+PiAtwqDCoMKgIGlmICghZm9iaikK
Pj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7Cj4+PiArwqDCoMKgIGludCByOwo+Pj4g
wqAgLcKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgZm9iai0+c2hhcmVkX2NvdW50OyArK2kpIHsKPj4+
IC3CoMKgwqDCoMKgwqDCoCBmZW5jZSA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoZm9iai0+
c2hhcmVkW2ldLAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGRtYV9yZXN2X2hlbGQocmVzdikpOwo+Pj4gK8KgwqDCoCBkbWFfcmVzdl9mb3Jf
ZWFjaF9mZW5jZSgmY3Vyc29yLCByZXN2LCB3cml0ZSwgZmVuY2UpIHsKPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByID0g
ZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhmZW5jZSwgJmRjYi0+Y2IsIGRtYV9idWZfcG9sbF9jYik7
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFyKQo+Pgo+PiBJdCBpcyB1bmNoYW5nZWQgd2l0
aCB0aGlzIHBhdGNoLCBidXQgYXJlIHRoZSBzZW1hbnRpY3Mgc3VwcG9zZWQgdG8gYmUgCj4+IGxp
a2UgdGhpcz8gU2lnbmFsIHBvbGwgZXZlbnQgaWYgX2FueV8gb2YgdGhlIHNoYXJlZCBmZW5jZXMg
aGFzIGJlZW4gCj4+IHNpZ25hbGVkPwo+IAo+IFRoYXQgaGFkIERhbmllbCBhbmQgbWUgY29uZnVz
ZWQgZm9yIGEgbW9tZW50IGFzIHdlbGwuCj4gCj4gV2UgZG9uJ3Qgc2lnbmFsIHRoZSBwb2xsIHdo
ZW4gYW55IG9mIHRoZSBzaGFyZWQgZmVuY2VzIGhhcyBzaWduYWxlZCwgYnV0IAo+IHJhdGhlciBp
bnN0YWxsIGEgY2FsbGJhY2sgb24gdGhlIGZpcnN0IG5vdC1zaWduYWxlZCBmZW5jZS4KPiAKPiBU
aGlzIGNhbGxiYWNrIHRoZW4gaXNzdWVzIGEgcmUtdGVzdCBvZiB0aGUgcG9sbCBhbmQgb25seSBp
ZiB3ZSBjYW4ndCAKPiBmaW5kIGFueSBtb3JlIGZlbmNlIHRoZSBwb2xsIGlzIGNvbnNpZGVyZWQg
c2lnbmFsZWQgKGF0IGxlYXN0IHRoYXQncyB0aGUgCj4gaWRlYSwgdGhlIGNvZGluZyBjb3VsZCBh
cyB3ZWxsIGJlIGJyb2tlbikuCgpZb3UgYXJlIHJpZ2h0LCBvbmUgdG9vIG1hbnkgYm9vbGVhbiBp
bnZlcnNpb25zIGZvciBtZSBub3QgdG8gZ2V0IGNvbmZ1c2VkLgoKUmV2aWV3ZWQtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCgo+
IAo+IENocmlzdGlhbi4KPiAKPj4KPj4gUmVnYXJkcywKPj4KPj4gVHZydGtvCj4+Cj4+PiBAQCAt
MjMyLDI0ICsyMjcsNiBAQCBzdGF0aWMgYm9vbCBkbWFfYnVmX3BvbGxfc2hhcmVkKHN0cnVjdCBk
bWFfcmVzdiAKPj4+ICpyZXN2LAo+Pj4gwqDCoMKgwqDCoCByZXR1cm4gZmFsc2U7Cj4+PiDCoCB9
Cj4+PiDCoCAtc3RhdGljIGJvb2wgZG1hX2J1Zl9wb2xsX2V4Y2woc3RydWN0IGRtYV9yZXN2ICpy
ZXN2LAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9i
dWZfcG9sbF9jYl90ICpkY2IpCj4+PiAtewo+Pj4gLcKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2UocmVzdik7Cj4+PiAtwqDCoMKgIGludCByOwo+Pj4g
LQo+Pj4gLcKgwqDCoCBpZiAoIWZlbmNlKQo+Pj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiBmYWxz
ZTsKPj4+IC0KPj4+IC3CoMKgwqAgZG1hX2ZlbmNlX2dldChmZW5jZSk7Cj4+PiAtwqDCoMKgIHIg
PSBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGZlbmNlLCAmZGNiLT5jYiwgZG1hX2J1Zl9wb2xsX2Ni
KTsKPj4+IC3CoMKgwqAgaWYgKCFyKQo+Pj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiB0cnVlOwo+
Pj4gLcKgwqDCoCBkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPj4+IC0KPj4+IC3CoMKgwqAgcmV0dXJu
IGZhbHNlOwo+Pj4gLX0KPj4+IC0KPj4+IMKgIHN0YXRpYyBfX3BvbGxfdCBkbWFfYnVmX3BvbGwo
c3RydWN0IGZpbGUgKmZpbGUsIHBvbGxfdGFibGUgKnBvbGwpCj4+PiDCoCB7Cj4+PiDCoMKgwqDC
oMKgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7Cj4+PiBAQCAtMjgyLDggKzI1OSw3IEBAIHN0YXRp
YyBfX3BvbGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIAo+Pj4gcG9sbF90YWJs
ZSAqcG9sbCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBzcGluX3VubG9ja19pcnEoJmRtYWJ1Zi0+
cG9sbC5sb2NrKTsKPj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoZXZlbnRzICYgRVBPTExP
VVQpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghZG1hX2J1Zl9wb2xsX3NoYXJl
ZChyZXN2LCBkY2IpICYmCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFkbWFf
YnVmX3BvbGxfZXhjbChyZXN2LCBkY2IpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KCFkbWFfYnVmX3BvbGxfYWRkX2NiKHJlc3YsIHRydWUsIGRjYikpCj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE5vIGNhbGxiYWNrIHF1ZXVlZCwgd2FrZSB1cCBhbnkg
b3RoZXIgd2FpdGVycyAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
bWFfYnVmX3BvbGxfY2IoTlVMTCwgJmRjYi0+Y2IpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZWxzZQo+Pj4gQEAgLTMwMyw3ICsyNzksNyBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1
Zl9wb2xsKHN0cnVjdCBmaWxlICpmaWxlLCAKPj4+IHBvbGxfdGFibGUgKnBvbGwpCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxKCZkbWFidWYtPnBvbGwubG9jayk7Cj4+PiDC
oCDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGV2ZW50cyAmIEVQT0xMSU4pIHsKPj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmICghZG1hX2J1Zl9wb2xsX2V4Y2wocmVzdiwgZGNiKSkKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghZG1hX2J1Zl9wb2xsX2FkZF9jYihyZXN2LCBmYWxz
ZSwgZGNiKSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogTm8gY2Fs
bGJhY2sgcXVldWVkLCB3YWtlIHVwIGFueSBvdGhlciB3YWl0ZXJzICovCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9idWZfcG9sbF9jYihOVUxMLCAmZGNiLT5jYik7
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4+Pgo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

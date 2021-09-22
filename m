Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5FA414C40
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 16:39:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F378D619C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 14:39:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C8DE561A3C; Wed, 22 Sep 2021 14:39:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47C31617D8;
	Wed, 22 Sep 2021 14:39:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1231561754
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 14:39:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0FA62617D8; Wed, 22 Sep 2021 14:39:24 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by lists.linaro.org (Postfix) with ESMTPS id C907C61754
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 14:39:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="246049350"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="246049350"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:39:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="704043760"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:39:19 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-14-christian.koenig@amd.com>
 <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
 <2afbdc22-28a7-9a47-186c-f47b4f5aceab@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <26981df8-93c7-2718-1ca0-ceb908930101@linux.intel.com>
Date: Wed, 22 Sep 2021 15:39:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2afbdc22-28a7-9a47-186c-f47b4f5aceab@gmail.com>
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

Ck9uIDIyLzA5LzIwMjEgMTU6MzEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjIuMDku
MjEgdW0gMTI6MjEgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMjIvMDkvMjAyMSAx
MDoxMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IFRoaXMgbWFrZXMgdGhlIGZ1bmN0aW9u
IG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+Pj4gcmV0cnkgbG9naWMgaXMgbm93IGhh
bmRsZWQgZWxzZSB3aGVyZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMgfCAzNSArKysrKysrKysrLS0tLS0tLS0tLS0tLS0K
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1
c3kuYyAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+Pj4g
aW5kZXggNjIzNGUxNzI1OWMxLi4zMTNhZmI0YTExYzcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+PiBAQCAtODIsOCArODIsOCBAQCBpOTE1X2dl
bV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgCj4+PiAqZGF0YSwKPj4+
IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9idXN5ICphcmdzID0gZGF0
YTsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPj4+IC3C
oMKgwqAgc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3Q7Cj4+PiAtwqDCoMKgIHVuc2lnbmVkIGlu
dCBzZXE7Cj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+ICvCoMKg
wqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4+PiDCoMKgwqDCoMKgIGludCBlcnI7Cj4+PiDC
oCDCoMKgwqDCoMKgIGVyciA9IC1FTk9FTlQ7Cj4+PiBAQCAtMTA5LDI3ICsxMDksMjAgQEAgaTkx
NV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCAKPj4+IHZvaWQgKmRhdGEs
Cj4+PiDCoMKgwqDCoMKgwqAgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVzeW5lc3MuIFRoaXMg
aXMgd2hhdCB0aGUgd2FpdC1pb2N0bCAKPj4+IGRvZXMuCj4+PiDCoMKgwqDCoMKgwqAgKgo+Pj4g
wqDCoMKgwqDCoMKgICovCj4+PiAtcmV0cnk6Cj4+PiAtwqDCoMKgIHNlcSA9IHJhd19yZWFkX3Nl
cWNvdW50KCZvYmotPmJhc2UucmVzdi0+c2VxKTsKPj4+IC0KPj4+IC3CoMKgwqAgLyogVHJhbnNs
YXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQgKmFuZCogV1JJVEUgZW5naW5lICov
Cj4+PiAtwqDCoMKgIGFyZ3MtPmJ1c3kgPSAKPj4+IGJ1c3lfY2hlY2tfd3JpdGVyKGRtYV9yZXN2
X2V4Y2xfZmVuY2Uob2JqLT5iYXNlLnJlc3YpKTsKPj4+IC0KPj4+IC3CoMKgwqAgLyogVHJhbnNs
YXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+Pj4gLcKgwqDCoCBs
aXN0ID0gZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qob2JqLT5iYXNlLnJlc3YpOwo+Pj4gLcKgwqDCoCBp
ZiAobGlzdCkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBzaGFyZWRfY291bnQg
PSBsaXN0LT5zaGFyZWRfY291bnQsIGk7Cj4+PiAtCj4+PiAtwqDCoMKgwqDCoMKgwqAgZm9yIChp
ID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytpKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJjdV9kZXJlZmVyZW5jZShsaXN0LT5zaGFyZWRbaV0pOwo+Pj4gLQo+Pj4gK8KgwqDC
oCBhcmdzLT5idXN5ID0gZmFsc2U7Cj4+Cj4+IFlvdSBjYW4gZHJvcCB0aGlzIGxpbmUsIGVzcGVj
aWFsbHkgc2luY2UgaXQgaXMgbm90IGEgYm9vbGVhbi4gV2l0aCB0aGF0Ogo+IAo+IEkganVzdCBy
ZWFsaXplZCB0aGF0IHRoaXMgd29uJ3Qgd29yay4gV2Ugc3RpbGwgbmVlZCB0byBpbml0aWFsaXpl
IHRoZSAKPiByZXR1cm4gdmFsdWUgd2hlbiB0aGVyZSBpcyBubyBmZW5jZSBhdCBhbGwgaW4gdGhl
IHJlc3Ygb2JqZWN0Lgo+IAo+Pgo+PiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPiAKPiBEb2VzIHRoYXQgc3RpbGwgY291bnRzIGlmIEkgc2V0
IGFyZ3MtPmJ1c3kgdG8gemVybz8KCkFoIHllcywgbXkgYmFkLCBhcG9sb2dpZXMuIFlvdSBjYW4g
a2VlcCB0aGUgci1iLgoKUmVnYXJkcywKClR2cnRrbwoKPiAKPiBUaGFua3MsCj4gQ2hyaXN0aWFu
Lgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiBUdnJ0a28KPj4KPj4+ICvCoMKgwqAgZG1hX3Jlc3Zf
aXRlcl9iZWdpbigmY3Vyc29yLCBvYmotPmJhc2UucmVzdiwgdHJ1ZSk7Cj4+PiArwqDCoMKgIGRt
YV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgaWYgKGRtYV9yZXN2X2l0ZXJfaXNfcmVzdGFydGVkKCZjdXJzb3IpKQo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXJncy0+YnVzeSA9IDA7Cj4+PiArCj4+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKGRtYV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKCZjdXJzb3IpKQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8g
dGhlIFJFQUQgKmFuZCogV1JJVEUgCj4+PiBlbmdpbmUgKi8KPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja193cml0ZXIoZmVuY2UpOwo+Pj4gK8KgwqDC
oMKgwqDCoMKgIGVsc2UKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFRyYW5zbGF0ZSBz
aGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGFyZ3MtPmJ1c3kgfD0gYnVzeV9jaGVja19yZWFkZXIoZmVuY2UpOwo+Pj4g
LcKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgwqAgfQo+Pj4gLQo+Pj4gLcKgwqDCoCBpZiAo
YXJncy0+YnVzeSAmJiByZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPmJhc2UucmVzdi0+c2VxLCBz
ZXEpKQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8gcmV0cnk7Cj4+PiArwqDCoMKgIGRtYV9yZXN2
X2l0ZXJfZW5kKCZjdXJzb3IpOwo+Pj4gwqAgwqDCoMKgwqDCoCBlcnIgPSAwOwo+Pj4gwqAgb3V0
Ogo+Pj4KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

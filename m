Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 153BF4112E8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 12:33:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFCE0667C1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 10:33:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E3BB463523; Mon, 20 Sep 2021 10:33:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AE6360E9C;
	Mon, 20 Sep 2021 10:33:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C6F9560C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:33:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C4BCF60E9C; Mon, 20 Sep 2021 10:33:25 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by lists.linaro.org (Postfix) with ESMTPS id 78B2B60C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 10:33:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="203258933"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="203258933"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 03:33:22 -0700
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="473549879"
Received: from gbradyx-mobl2.ger.corp.intel.com (HELO [10.213.235.119])
 ([10.213.235.119])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 03:33:20 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-14-christian.koenig@amd.com>
 <6fbaca09-ec51-c44e-708c-334ef8be8595@linux.intel.com>
 <368e8495-f4de-cbb2-3584-e022a5937885@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <563bb7c3-f956-212d-6085-b1b88292887c@linux.intel.com>
Date: Mon, 20 Sep 2021 11:33:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <368e8495-f4de-cbb2-3584-e022a5937885@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 13/26] drm/i915: use the new
 iterator in i915_gem_busy_ioctl
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

Ck9uIDIwLzA5LzIwMjEgMTE6MTMsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjAuMDku
MjEgdW0gMTA6NDUgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMTcvMDkvMjAyMSAx
MzozNSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IFRoaXMgbWFrZXMgdGhlIGZ1bmN0aW9u
IG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+Pj4gcmV0cnkgbG9naWMgaXMgbm93IGhh
bmRsZWQgZWxzZSB3aGVyZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMgfCAzMiArKysrKysrKy0tLS0tLS0tLS0tLS0tLS0K
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1
c3kuYyAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+Pj4g
aW5kZXggNjIzNGUxNzI1OWMxLi5iMWNiN2JhNjg4ZGEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+PiBAQCAtODIsOCArODIsOCBAQCBpOTE1X2dl
bV9idXN5X2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgCj4+PiAqZGF0YSwKPj4+
IMKgIHsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9idXN5ICphcmdzID0gZGF0
YTsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPj4+IC3C
oMKgwqAgc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3Q7Cj4+PiAtwqDCoMKgIHVuc2lnbmVkIGlu
dCBzZXE7Cj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+ICvCoMKg
wqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4+PiDCoMKgwqDCoMKgIGludCBlcnI7Cj4+PiDC
oCDCoMKgwqDCoMKgIGVyciA9IC1FTk9FTlQ7Cj4+PiBAQCAtMTA5LDI3ICsxMDksMTcgQEAgaTkx
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
oCBhcmdzLT5idXN5ID0gZmFsc2U7Cj4+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1
cnNvciwgb2JqLT5iYXNlLnJlc3YsIHRydWUpOwo+Pj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFj
aF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+Pgo+PiBZb3UgZGlkIG5vdCBhZ3Jl
ZSB3aXRoIG15IHN1Z2dlc3Rpb24gdG8gcmVzZXQgYXJncy0+YnVzeSBvbiByZXN0YXJ0IAo+PiBh
bmQgc28gcHJlc2VydmUgY3VycmVudCBiZWhhdmlvdXI/Cj4gCj4gTm8sIEkgd2FudCB0byBrZWVw
IHRoZSByZXN0YXJ0IGJlaGF2aW9yIGludGVybmFsbHkgdG8gdGhlIGRtYV9yZXN2IAo+IG9iamVj
dCBhbmQgYXMgZmFyIGFzIEkgY2FuIHNlZSBpdCBzaG91bGQgbm90IG1ha2UgYSBkaWZmZXJlbmNl
IGhlcmUuCgpUbyBiZSBjbGVhciwgb24gcGFwZXIgZGlmZmVyZW5jZSBiZXR3ZWVuIG9sZCBhbmQg
bmV3IGltcGxlbWVudGF0aW9uIGlzIAppZiB0aGUgcmVzdGFydCBoYXBwZW5zIHdoaWxlIHByb2Nl
c3NpbmcgdGhlIHNoYXJlZCBmZW5jZXMuCgpPbGQgaW1wbGVtZW50YXRpb24gdW5jb25kaXRpb25h
bGx5IGdvZXMgdG8gImFyZ3MtPmJ1c3kgPQogPj4+IGJ1c3lfY2hlY2tfd3JpdGVyKGRtYV9yZXN2
X2V4Y2xfZmVuY2Uob2JqLT5iYXNlLnJlc3YpKTsiIGFuZCBzbyAKb3ZlcndyaXRlcyB0aGUgc2V0
IG9mIGZsYWdzIHJldHVybmVkIHRvIHVzZXJzcGFjZS4KCk5ldyBpbXBsZW1lbnRhdGlvbiBjYW4g
bWVyZ2UgbmV3IHJlYWQgZmxhZ3MgdG8gdGhlIG9sZCBzZXQgb2YgZmxhZ3MgYW5kIApzbyByZXR1
cm4gYSBjb21wb3NpdGlvbiBvZiBwYXN0IGFuZCBjdXJyZW50IGZlbmNlcy4KCk1heWJlIGl0IGRv
ZXMgbm90IG1hdHRlciBodWdlbHkgaW4gdGhpcyBjYXNlLCBkZXBlbmRzIGlmIHVzZXJzcGFjZSAK
dHlwaWNhbGx5IGp1c3QgcmVzdGFydHMgdW50aWwgZmxhZ3MgYXJlIGNsZWFyLiBCdXQgSSBhbSBu
b3Qgc3VyZS4KCk9uIHRoZSBoaWdoZXIgbGV2ZWwgLSB3aGF0IGRvIHlvdSBtZWFuIHdpdGggd2Fu
dGluZyB0byBrZWVwIHRoZSByZXN0YXJ0IApiZWhhdmlvdXIgaW50ZXJuYWw/IE5vdCBwcm92aWRp
bmcgaXRlcmF0b3JzIHVzZXJzIG1lYW5zIG9mIGRldGVjdGluZyBpdD8gCkkgdGhpbmsgaXQgaGFz
IHRvIGJlIHByb3ZpZGVkLgoKUmVnYXJkcywKClR2cnRrbwoKPiBSZWdhcmRzLAo+IENocmlzdGlh
bi4KPiAKPj4KPj4gUmVnYXJkcywKPj4KPj4gVHZydGtvCj4+Cj4+PiArwqDCoMKgwqDCoMKgwqAg
aWYgKGRtYV9yZXN2X2l0ZXJfaXNfZXhjbHVzaXZlKCZjdXJzb3IpKQo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLyogVHJhbnNsYXRlIHRoZSBleGNsdXNpdmUgZmVuY2UgdG8gdGhlIFJFQUQg
KmFuZCogV1JJVEUgCj4+PiBlbmdpbmUgKi8KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFy
Z3MtPmJ1c3kgPSBidXN5X2NoZWNrX3dyaXRlcihmZW5jZSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAg
ZWxzZQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5j
ZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgYXJncy0+YnVzeSB8PSBidXN5X2NoZWNrX3JlYWRlcihmZW5jZSk7Cj4+PiAtwqDCoMKgwqDC
oMKgwqAgfQo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiAtCj4+PiAtwqDCoMKgIGlmIChhcmdzLT5idXN5
ICYmIHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+YmFzZS5yZXN2LT5zZXEsIHNlcSkpCj4+PiAt
wqDCoMKgwqDCoMKgwqAgZ290byByZXRyeTsKPj4+ICvCoMKgwqAgZG1hX3Jlc3ZfaXRlcl9lbmQo
JmN1cnNvcik7Cj4+PiDCoCDCoMKgwqDCoMKgIGVyciA9IDA7Cj4+PiDCoCBvdXQ6Cj4+Pgo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

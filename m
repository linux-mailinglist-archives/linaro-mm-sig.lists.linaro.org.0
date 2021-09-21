Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DC44133D2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 15:10:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 97FAB61174
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 13:10:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2A256611F7; Tue, 21 Sep 2021 13:10:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07C0D60F2F;
	Tue, 21 Sep 2021 13:10:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8FF8A606E1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 13:10:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8DB1A60F2F; Tue, 21 Sep 2021 13:10:33 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by lists.linaro.org (Postfix) with ESMTPS id 471FA606E1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 13:10:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="284365903"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="284365903"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 06:10:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="556923492"
Received: from ekyne-mobl.ger.corp.intel.com (HELO [10.213.200.64])
 ([10.213.200.64])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 06:10:28 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-14-christian.koenig@amd.com>
 <6fbaca09-ec51-c44e-708c-334ef8be8595@linux.intel.com>
 <368e8495-f4de-cbb2-3584-e022a5937885@gmail.com>
 <563bb7c3-f956-212d-6085-b1b88292887c@linux.intel.com>
 <64b6a924-be38-0ed0-da92-86296702f71c@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5705c186-1c17-cd5d-c11d-8b5337204c8a@linux.intel.com>
Date: Tue, 21 Sep 2021 14:10:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <64b6a924-be38-0ed0-da92-86296702f71c@gmail.com>
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

Ck9uIDIxLzA5LzIwMjEgMTA6NDEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjAuMDku
MjEgdW0gMTI6MzMgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4gT24gMjAvMDkvMjAyMSAxMTox
MywgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IEFtIDIwLjA5LjIxIHVtIDEwOjQ1IHNjaHJp
ZWIgVHZydGtvIFVyc3VsaW46Cj4+Pj4KPj4+PiBPbiAxNy8wOS8yMDIxIDEzOjM1LCBDaHJpc3Rp
YW4gS8O2bmlnIHdyb3RlOgo+Pj4+PiBUaGlzIG1ha2VzIHRoZSBmdW5jdGlvbiBtdWNoIHNpbXBs
ZXIgc2luY2UgdGhlIGNvbXBsZXgKPj4+Pj4gcmV0cnkgbG9naWMgaXMgbm93IGhhbmRsZWQgZWxz
ZSB3aGVyZS4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gwqAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDMyIAo+Pj4+PiArKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0KPj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIxIGRlbGV0
aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2J1c3kuYyAKPj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fYnVzeS5jCj4+Pj4+IGluZGV4IDYyMzRlMTcyNTljMS4uYjFjYjdiYTY4OGRhIDEwMDY0NAo+
Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+Pj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMKPj4+Pj4gQEAg
LTgyLDggKzgyLDggQEAgaTkxNV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkIAo+Pj4+PiAqZGF0YSwKPj4+Pj4gwqAgewo+Pj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBk
cm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7Cj4+Pj4+IMKgwqDCoMKgwqAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPj4+Pj4gLcKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfbGlz
dCAqbGlzdDsKPj4+Pj4gLcKgwqDCoCB1bnNpZ25lZCBpbnQgc2VxOwo+Pj4+PiArwqDCoMKgIHN0
cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKPj4+Pj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+Pj4+PiDCoCDCoMKgwqDCoMKgIGVy
ciA9IC1FTk9FTlQ7Cj4+Pj4+IEBAIC0xMDksMjcgKzEwOSwxNyBAQCBpOTE1X2dlbV9idXN5X2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIAo+Pj4+PiB2b2lkICpkYXRhLAo+Pj4+PiDCoMKg
wqDCoMKgwqAgKiB0byByZXBvcnQgdGhlIG92ZXJhbGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0
aGUgCj4+Pj4+IHdhaXQtaW9jdGwgZG9lcy4KPj4+Pj4gwqDCoMKgwqDCoMKgICoKPj4+Pj4gwqDC
oMKgwqDCoMKgICovCj4+Pj4+IC1yZXRyeToKPj4+Pj4gLcKgwqDCoCBzZXEgPSByYXdfcmVhZF9z
ZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Cj4+Pj4+IC0KPj4+Pj4gLcKgwqDCoCAvKiBU
cmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVBRCAqYW5kKiBXUklURSAKPj4+
Pj4gZW5naW5lICovCj4+Pj4+IC3CoMKgwqAgYXJncy0+YnVzeSA9IAo+Pj4+PiBidXN5X2NoZWNr
X3dyaXRlcihkbWFfcmVzdl9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2KSk7Cj4+Pj4+IC0KPj4+
Pj4gLcKgwqDCoCAvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBSRUFEIHNldCBvZiBlbmdp
bmVzICovCj4+Pj4+IC3CoMKgwqAgbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iai0+YmFz
ZS5yZXN2KTsKPj4+Pj4gLcKgwqDCoCBpZiAobGlzdCkgewo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAg
dW5zaWduZWQgaW50IHNoYXJlZF9jb3VudCA9IGxpc3QtPnNoYXJlZF9jb3VudCwgaTsKPj4+Pj4g
LQo+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IHNoYXJlZF9jb3VudDsgKytp
KSB7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
ID0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByY3VfZGVyZWZlcmVuY2Uo
bGlzdC0+c2hhcmVkW2ldKTsKPj4+Pj4gLQo+Pj4+PiArwqDCoMKgIGFyZ3MtPmJ1c3kgPSBmYWxz
ZTsKPj4+Pj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+YmFzZS5y
ZXN2LCB0cnVlKTsKPj4+Pj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tl
ZCgmY3Vyc29yLCBmZW5jZSkgewo+Pj4+Cj4+Pj4gWW91IGRpZCBub3QgYWdyZWUgd2l0aCBteSBz
dWdnZXN0aW9uIHRvIHJlc2V0IGFyZ3MtPmJ1c3kgb24gcmVzdGFydCAKPj4+PiBhbmQgc28gcHJl
c2VydmUgY3VycmVudCBiZWhhdmlvdXI/Cj4+Pgo+Pj4gTm8sIEkgd2FudCB0byBrZWVwIHRoZSBy
ZXN0YXJ0IGJlaGF2aW9yIGludGVybmFsbHkgdG8gdGhlIGRtYV9yZXN2IAo+Pj4gb2JqZWN0IGFu
ZCBhcyBmYXIgYXMgSSBjYW4gc2VlIGl0IHNob3VsZCBub3QgbWFrZSBhIGRpZmZlcmVuY2UgaGVy
ZS4KPj4KPj4gVG8gYmUgY2xlYXIsIG9uIHBhcGVyIGRpZmZlcmVuY2UgYmV0d2VlbiBvbGQgYW5k
IG5ldyBpbXBsZW1lbnRhdGlvbiBpcyAKPj4gaWYgdGhlIHJlc3RhcnQgaGFwcGVucyB3aGlsZSBw
cm9jZXNzaW5nIHRoZSBzaGFyZWQgZmVuY2VzLgo+Pgo+PiBPbGQgaW1wbGVtZW50YXRpb24gdW5j
b25kaXRpb25hbGx5IGdvZXMgdG8gImFyZ3MtPmJ1c3kgPQo+PiA+Pj4gYnVzeV9jaGVja193cml0
ZXIoZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmotPmJhc2UucmVzdikpOyIgYW5kIHNvIAo+PiBvdmVy
d3JpdGVzIHRoZSBzZXQgb2YgZmxhZ3MgcmV0dXJuZWQgdG8gdXNlcnNwYWNlLgo+Pgo+PiBOZXcg
aW1wbGVtZW50YXRpb24gY2FuIG1lcmdlIG5ldyByZWFkIGZsYWdzIHRvIHRoZSBvbGQgc2V0IG9m
IGZsYWdzIAo+PiBhbmQgc28gcmV0dXJuIGEgY29tcG9zaXRpb24gb2YgcGFzdCBhbmQgY3VycmVu
dCBmZW5jZXMuCj4+Cj4+IE1heWJlIGl0IGRvZXMgbm90IG1hdHRlciBodWdlbHkgaW4gdGhpcyBj
YXNlLCBkZXBlbmRzIGlmIHVzZXJzcGFjZSAKPj4gdHlwaWNhbGx5IGp1c3QgcmVzdGFydHMgdW50
aWwgZmxhZ3MgYXJlIGNsZWFyLiBCdXQgSSBhbSBub3Qgc3VyZS4KPj4KPj4gT24gdGhlIGhpZ2hl
ciBsZXZlbCAtIHdoYXQgZG8geW91IG1lYW4gd2l0aCB3YW50aW5nIHRvIGtlZXAgdGhlIAo+PiBy
ZXN0YXJ0IGJlaGF2aW91ciBpbnRlcm5hbD8gTm90IHByb3ZpZGluZyBpdGVyYXRvcnMgdXNlcnMg
bWVhbnMgb2YgCj4+IGRldGVjdGluZyBpdD8gSSB0aGluayBpdCBoYXMgdG8gYmUgcHJvdmlkZWQu
Cj4gCj4gT2sgSSB3aWxsIGFkanVzdCB0aGF0IGZvciBub3cgdG8gZ2V0IHRoZSBwYXRjaCBzZXQg
dXBzdHJlYW0uIEJ1dCBpbiAKPiBnZW5lcmFsIHdoZW4gc29tZWJvZHkgb3V0c2lkZSBvZiB0aGUg
ZG1hX3Jlc3YgY29kZSBiYXNlIGRlcGVuZHMgb24gdGhlIAo+IHJlc3RhcnQgYmVoYXZpb3IgdGhl
biB0aGF0J3MgYSBidWcgaW5zaWRlIHRoZSBkZXNpZ24gb2YgdGhhdCBjb2RlLgoKVGhhbmtzLCBu
byBjaGFuZ2UgaW4gYmVoYXZpb3VyIG1ha2VzIGZvciBhbiBlYXN5IHItYi4gOikKCj4gVGhlIGNh
bGxlcnMgc2hvdWxkIG9ubHkgY2FyZSBhYm91dCB3aGF0IHVuc2lnbmFsZWQgZmVuY2VzIGFyZSBp
bnNpZGUgdGhlIAo+IGRtYV9yZXN2IGNvbnRhaW5lciBhbmQgaXQgc2hvdWxkbid0IG1hdHRlciBp
ZiB0aG9zZSBmZW5jZXMgYXJlIHByZXNlbnRlZCAKPiBvbmNlIG9yIG11bHRpcGxlIHRpbWVzIGJl
Y2F1c2Ugb2YgYSByZXNldC4uCj4gCj4gV2hlbiB0aGlzIG1ha2VzIGEgZGlmZmVyZW5jZSB3ZSBo
YXZlIGEgYnVnIGluIHRoZSBoYW5kbGluZyBhbmQgc2hvdWxkIAo+IHByb2JhYmx5IGNvbnNpZGVy
IHRha2luZyB0aGUgZG1hX3Jlc3YubG9jayBpbnN0ZWFkLgoKSSBhZ3JlZSwgd2hpY2ggaXMgd2h5
IEkgd2FzIG1lbnRpb25pbmcgZWFybGllciBob3cgaXQgd291bGQgYmUgZ29vZCB0byAKY29tcGxl
dGVseSBzb3J0IGxvY2tlZCBmcm9tIHVubG9ja2VkIGl0ZXJhdG9ycyBhbmQgYXZvaWQgc2l0dWF0
aW9ucyAKd2hlcmUgdW5sb2NrZWQgb25lIGlzIGNhbGxlZCBmcm9tIGEgcGF0aCB3aGVyZSBvYmpl
Y3QgaXMgbG9ja2VkLgoKVW5mb3J0dW5hdGVseSBmb3IgdGhlIGRpc3BsYXkgY29kZSBwYXRoIEkg
Y2Fubm90IGVhc2lseSBoZWxwIHdpdGggdGhlIAphdWRpdCBvZiBjYWxsIHBhdGhzLiBBbmQgSSB0
aGluayB0aGVyZSBhcmUgYXQgbGVhc3QgdHdvIHBhdGNoZXMgaW4geW91ciAKc2VyaWVzIHdoaWNo
IG5lZWQgS01TIGV4cGVydGlzZS4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

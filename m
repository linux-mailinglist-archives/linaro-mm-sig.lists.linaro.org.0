Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AA57040AE26
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 14:47:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AE0B61F45
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 12:47:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 63A2962175; Tue, 14 Sep 2021 12:47:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0FDE6194E;
	Tue, 14 Sep 2021 12:47:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DDE3660FC3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:47:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DB9706194E; Tue, 14 Sep 2021 12:47:31 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by lists.linaro.org (Postfix) with ESMTPS id 9ED3B60FC3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 12:47:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="282982903"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="282982903"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:47:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="544056474"
Received: from ocascan-mobl.ger.corp.intel.com (HELO [10.213.234.116])
 ([10.213.234.116])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:47:26 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-19-christian.koenig@amd.com>
 <46a40614-b448-7f2d-7b6b-0705c4277e2b@linux.intel.com>
 <6c0217a7-6ac8-0c12-4087-ee55f456f99c@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f9b65430-de19-7c3b-c77f-5a88114037c5@linux.intel.com>
Date: Tue, 14 Sep 2021 13:47:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <6c0217a7-6ac8-0c12-4087-ee55f456f99c@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 18/26] drm/i915: use new
 iterator in i915_gem_object_last_write_engine
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
Cc: intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDE0LzA5LzIwMjEgMTM6MzIsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMTQuMDku
MjEgdW0gMTQ6Mjcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMTMvMDkvMjAyMSAx
NDoxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IFRoaXMgaXMgbWF5YmUgZXZlbiBhIGZp
eCBzaW5jZSB0aGUgUkNVIHVzYWdlIGhlcmUgbG9va3MgaW5jb3JyZWN0Lgo+Pgo+PiBXaGF0IHlv
dSB0aGluayBpcyBpbmNvcnJlY3Q/IFBvaW50bGVzcyBleHRyYSByY3UgbG9ja2luZz8KPiAKPiBZ
ZWFoLCBleGFjdGx5IHRoYXQuIEkgYWxzbyB3b25kZXJlZCBmb3IgYSBzZWNvbmQgaWYgcmN1X3Jl
YWRfbG9jaygpIGNhbiAKPiBuZXN0IG9yIG5vdC4gQnV0IG9idmlvdXNseSBpdCBlaXRoZXIgd29y
a3Mgb3IgbG9ja2RlcCBoYXNuJ3QgY29tcGxhaW5lZCAKPiB5ZXQuCj4gCj4gQnV0IEkndmUgbWFk
ZSBhIG1pc3Rha2UgaGVyZSBhbmQgYXQgYSBjb3VwbGUgb2Ygb3RoZXIgcGxhY2VzIHRvIHJlbW92
ZSAKPiB0byBtYW55IHJjdV9yZWFkX2xvY2soKSBjYWxscy4gVGhhbmtzIGZvciBwb2ludGluZyB0
aGF0IG91dCwgZ29pbmcgdG8gCj4gZml4IGl0IGFzIHdlbGwuCgpBY2suCgo+PiBBbHNvLCBGV0lX
LCBJIHN1Ym1pdHRlZCBhIHBhdGNoIHRvIHJlbW92ZSB0aGlzIGZ1bmN0aW9uIGFsdG9nZXRoZXIg
Cj4+IHNpbmNlIGl0cyBJTU8gcHJldHR5IHVzZWxlc3MsIGp1c3QgZmFpbGVkIGluIGdldHRpbmcg
YW55b25lIHRvIGFjayBpdCAKPj4gc28gZmFyLgo+IAo+IEkgd2FzIG9uIHRoZSBlZGdlIG9mIHN1
Z2dlc3RpbmcgdGhhdCBhcyB3ZWxsIHNpbmNlIGl0J3Mgb25seSBkZWJ1Z2ZzIAo+IHVzYWdlIGxv
b2tlZCBxdWl0ZSBwb2ludGxlc3MgdG8gbWUuCj4gCj4gRmVlbCBmcmVlIHRvIENDIG1lIG9uIHRo
ZSBwYXRjaCBhbmQgeW91IGNhbiBoYXZlIG15IGFja2VkLWJ5LgoKUGF0Y2ggaXMgaGVyZSAKaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQ1MTg2NC8/c2VyaWVzPTk0MjAy
JnJldj0xLCB0aGFua3MhCgpSZWdhcmRzLAoKVHZydGtvCgo+IFRoYW5rcywKPiBDaHJpc3RpYW4u
Cj4gCj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IFR2cnRrbwo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4gLS0tCj4+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggfCAxNSArKysrKysrLS0t
LS0tLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuaCAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5oCj4+PiBpbmRleCBlOWVlY2ViZjVjOWQuLjMzNDM5MjJhZjRkNiAxMDA2NDQKPj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAo+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCj4+PiBAQCAtNTAwLDE2ICs1
MDAsMTUgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoKPj4+IMKgIGk5
MTVfZ2VtX29iamVjdF9sYXN0X3dyaXRlX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUgPSBOVUxMOwo+Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfY3Vyc29yIGN1cnNvcjsK
Pj4+IMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Cj4+PiDCoCAtwqDCoMKgIHJj
dV9yZWFkX2xvY2soKTsKPj4+IC3CoMKgwqAgZmVuY2UgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxv
Y2tlZChvYmotPmJhc2UucmVzdik7Cj4+PiAtwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+Pj4g
LQo+Pj4gLcKgwqDCoCBpZiAoZmVuY2UgJiYgZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpICYmIAo+
Pj4gIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCj4+PiAtwqDCoMKgwqDCoMKgwqAgZW5n
aW5lID0gdG9fcmVxdWVzdChmZW5jZSktPmVuZ2luZTsKPj4+IC3CoMKgwqAgZG1hX2ZlbmNlX3B1
dChmZW5jZSk7Cj4+PiAtCj4+PiArwqDCoMKgIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9j
a2VkKG9iai0+YmFzZS5yZXN2LCAmY3Vyc29yLCBmYWxzZSwKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZlbmNlKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYg
KGZlbmNlICYmIGRtYV9mZW5jZV9pc19pOTE1KGZlbmNlKSAmJgo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpCj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlbmdpbmUgPSB0b19yZXF1ZXN0KGZlbmNlKS0+ZW5naW5lOwo+Pj4gK8KgwqDC
oCB9Cj4+PiDCoMKgwqDCoMKgIHJldHVybiBlbmdpbmU7Cj4+PiDCoCB9Cj4+Pgo+IApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

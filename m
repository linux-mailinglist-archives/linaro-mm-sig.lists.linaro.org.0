Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE8940AC24
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 12:59:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8F39D622E7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 10:59:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F0A9B629CD; Tue, 14 Sep 2021 10:59:54 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B24DD619C1;
	Tue, 14 Sep 2021 10:59:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9F40B618BC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 10:59:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 87028619C1; Tue, 14 Sep 2021 10:59:49 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by lists.linaro.org (Postfix) with ESMTPS id 48C64618BC
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 10:59:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="220083024"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="220083024"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 03:59:45 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="432953315"
Received: from ocascan-mobl.ger.corp.intel.com (HELO [10.213.234.116])
 ([10.213.234.116])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 03:59:43 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-16-christian.koenig@amd.com>
 <f9ebc539-3965-b57f-7040-78aaba72afbd@linux.intel.com>
 <698f042e-4fc5-2944-8d77-b89352034fcf@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5e0d0d25-9c45-a81f-f8af-6a0c96d57778@linux.intel.com>
Date: Tue, 14 Sep 2021 11:59:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <698f042e-4fc5-2944-8d77-b89352034fcf@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 15/26] drm/i915: use the new
 iterator in i915_request_await_object
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

Ck9uIDE0LzA5LzIwMjEgMTE6MzksIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMTQuMDku
MjEgdW0gMTI6MjYgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMTMvMDkvMjAyMSAx
NDoxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+IFNpbXBsaWZ5aW5nIHRoZSBjb2RlIGEg
Yml0Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMgfCAzNiArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIAo+Pj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+Pj4gaW5kZXggMzdhZWYxMzA4NTczLi5iODEw
NDVjZWI2MTkgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVl
c3QuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPj4+IEBA
IC0xNTgzLDM4ICsxNTgzLDE2IEBAIGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3Qoc3RydWN0IGk5
MTVfcmVxdWVzdCAKPj4+ICp0bywKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJvb2wgd3JpdGUpCj4+PiDCoCB7Cj4+PiAtwqDCoMKgIHN0cnVjdCBkbWFfZmVu
Y2UgKmV4Y2w7Cj4+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29yOwo+Pj4g
K8KgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPj4+IMKgwqDCoMKgwqAgaW50IHJldCA9
IDA7Cj4+PiDCoCAtwqDCoMKgIGlmICh3cml0ZSkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBkbWFfZmVuY2UgKipzaGFyZWQ7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGNv
dW50LCBpOwo+Pj4gLQo+Pj4gLcKgwqDCoMKgwqDCoMKgIHJldCA9IGRtYV9yZXN2X2dldF9mZW5j
ZXMob2JqLT5iYXNlLnJlc3YsICZleGNsLCAmY291bnQsCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZzaGFyZWQpOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlm
IChyZXQpCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gLQo+Pj4g
LcKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXQgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBz
aGFyZWRbaV0pOwo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiAtCj4+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Cj4+PiArwqDCoMKgIGRtYV9yZXN2
X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9iai0+YmFzZS5yZXN2LCAmY3Vyc29yLCB3cml0ZSwg
Cj4+PiBmZW5jZSkgewo+Pgo+PiBJIHRoaW5rIGNhbGxlcnMgaGF2ZSB0aGUgb2JqZWN0IGxvY2tl
ZCBmb3IgdGhpcyBvbmUuIEF0IGxlYXN0IGlmIHlvdSAKPj4gaGF2ZW4ndCB0cmllZCBpdCBpdCdz
IHdvcnRoIGFza2luZyBDSSAoeW91IGhhdmUgdGhlIGFzc2VydCBhbHJlYWR5IHNvIAo+PiBpdCB3
aWxsIHRlbGwgeW91KS4gQnV0IEkgdGhpbmsgaXQncyBpbXBvcnRhbnQgdG8gaGF2ZSBhbiBhdG9t
aWMgCj4+IHNuYXBzaG90IGhlcmUuCj4gCj4gVGhhbmtzIGZvciB0aGUgaW5mby4gSW4gdGhpcyBj
YXNlIEknbSBqdXN0IGdvaW5nIHRvIHVzZSB0aGUgbG9ja2VkIAo+IHZhcmlhbnQgb2YgdGhlIGl0
ZXJhdG9yIGhlcmUgZm9yIHRoZSBuZXh0IHJvdW5kLgo+IAo+IENvdWxkIHlvdSBwb2ludCBtZSB0
byB0aGUgcGxhY2Ugd2hlcmUgdGhlIGxvY2sgaXMgZ3JhYmVkL3JlbGVhc2VkIGZvciAKPiByZWZl
cmVuY2U/CgpUaGVyZSBpcyBxdWl0ZSBhIGZldyBjYWxsZXJzIGFuZCBJIGhhdmVuJ3QgYXVkaXRl
ZCBhbGwgb2YgdGhlbS4gQnV0IEkgCnRoaW5rLCBnaXZlbiB0aGUgZnVuY3Rpb24gaXMgdXNlZCBm
b3Igc2V0dGluZyB1cCB0cmFja2luZyBvZiBpbXBsaWNpdCAKZGVwZW5kZW5jaWVzLCB0aGF0IGl0
IGhhcyB0byBiZSB0cnVlLgoKSW4gdGhlIGNhc2Ugb2YgZXhlY2J1ZiBmb3IgaW5zdGFuY2UgdGhl
IGZsb3cgaXMgcmVsYXRpdmVseSBjb21wbGljYXRlZDoKCmk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIK
ICAgZWJfcmVsb2NhdGVfcGFyc2UKICAgICBlYl92YWxpZGF0ZV92bWFzCiAgICAgICBlYl9sb2Nr
X3ZtYXMKICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X2xvY2sKICAgZWJfc3VibWl0CiAgICAgZWJf
bW92ZV90b19ncHUKICAgICAgIGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3QKICAgaTkxNV9nZW1f
d3dfY3R4X2ZpbmkKICAgICBpOTE1X2dlbV93d19jdHhfdW5sb2NrX2FsbAogICAgICAgaTkxNV9n
ZW1fb2JqZWN0X3VubG9jawoKT3RoZXIgY2FsbCBzaXRlcyBoYXZlIHNpbXBsZXIgZmxvd3MgYnV0
IHRoZXJlIGlzIGEgbG90IG9mIHRoZW0gc28gSSAKdGhpbmsgdXNpbmcgQ0kgaXMgZWFzaWVzdC4K
ClJlZ2FyZHMsCgpUdnJ0a28KCj4gVGhhbmtzLAo+IENocmlzdGlhbi4KPiAKPj4KPj4gUmVnYXJk
cywKPj4KPj4gVHZydGtvCj4+Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0ID0gaTkxNV9yZXF1ZXN0
X2F3YWl0X2RtYV9mZW5jZSh0bywgZmVuY2UpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChyZXQp
IHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+
Pj4gLQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGZvciAoOyBpIDwgY291bnQ7IGkrKykKPj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPj4+IC3CoMKgwqDC
oMKgwqDCoCBrZnJlZShzaGFyZWQpOwo+Pj4gLcKgwqDCoCB9IGVsc2Ugewo+Pj4gLcKgwqDCoMKg
wqDCoMKgIGV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChvYmotPmJhc2UucmVzdik7
Cj4+PiAtwqDCoMKgIH0KPj4+IC0KPj4+IC3CoMKgwqAgaWYgKGV4Y2wpIHsKPj4+IC3CoMKgwqDC
oMKgwqDCoCBpZiAocmV0ID09IDApCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBp
OTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKHRvLCBleGNsKTsKPj4+IC0KPj4+IC3CoMKgwqDC
oMKgwqDCoCBkbWFfZmVuY2VfcHV0KGV4Y2wpOwo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoCDCoMKg
wqDCoMKgIHJldHVybiByZXQ7Cj4+Pgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=

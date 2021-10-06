Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA92D423DE6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Oct 2021 14:40:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D273F605F9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Oct 2021 12:40:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7063B60FF5; Wed,  6 Oct 2021 12:40:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4612D60591;
	Wed,  6 Oct 2021 12:40:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9625A6056F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Oct 2021 12:40:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8946660591; Wed,  6 Oct 2021 12:40:50 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by lists.linaro.org (Postfix) with ESMTPS id 425026056F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Oct 2021 12:40:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="289483783"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="289483783"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 05:40:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="589740133"
Received: from ccronin-mobl.ger.corp.intel.com (HELO [10.213.247.242])
 ([10.213.247.242])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 05:40:45 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
References: <20211006123609.2026-1-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d3b344cf-d7b8-437a-b751-106d42b4f26f@linux.intel.com>
Date: Wed, 6 Oct 2021 13:40:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211006123609.2026-1-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: add
 dma_resv_for_each_fence v3
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDA2LzEwLzIwMjEgMTM6MzYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQSBzaW1wbGVy
IHZlcnNpb24gb2YgdGhlIGl0ZXJhdG9yIHRvIGJlIHVzZWQgd2hlbiB0aGUgZG1hX3Jlc3Ygb2Jq
ZWN0IGlzCj4gbG9ja2VkLgo+IAo+IHYyOiBmaXggaW5kZXggY2hlY2sgaGVyZSBhcyB3ZWxsCj4g
djM6IG1pbm9yIGNvZGluZyBpbXByb3ZlbWVudCwgc29tZSBkb2N1bWVudGF0aW9uIGNsZWFudXAK
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDUxICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2
LmggICB8IDIwICsrKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA3MSBpbnNlcnRp
b25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiBpbmRleCBhNDgwYWY5NTgxYmQuLjJmOThjYWE2OGFl
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gQEAgLTQyMyw2ICs0MjMsNTcgQEAgc3RydWN0IGRtYV9m
ZW5jZSAqZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdl9pdGVyICpj
dXJzb3IpCj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MKGRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tl
ZCk7Cj4gICAKPiArLyoqCj4gKyAqIGRtYV9yZXN2X2l0ZXJfZmlyc3QgLSBmaXJzdCBmZW5jZSBm
cm9tIGEgbG9ja2VkIGRtYV9yZXN2IG9iamVjdAo+ICsgKiBAY3Vyc29yOiBjdXJzb3IgdG8gcmVj
b3JkIHRoZSBjdXJyZW50IHBvc2l0aW9uCj4gKyAqCj4gKyAqIFJldHVybiB0aGUgZmlyc3QgZmVu
Y2UgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCB3aGlsZSBob2xkaW5nIHRoZQo+ICsgKiAmZG1hX3Jl
c3YubG9jay4KPiArICovCj4gK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfZmlyc3Qo
c3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcikKPiArewo+ICsJc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2U7Cj4gKwo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoY3Vyc29yLT5vYmopOwo+ICsKPiAr
CWN1cnNvci0+aW5kZXggPSAwOwo+ICsJaWYgKGN1cnNvci0+YWxsX2ZlbmNlcykKPiArCQljdXJz
b3ItPmZlbmNlcyA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KGN1cnNvci0+b2JqKTsKPiArCWVsc2UK
PiArCQljdXJzb3ItPmZlbmNlcyA9IE5VTEw7Cj4gKwo+ICsJZmVuY2UgPSBkbWFfcmVzdl9leGNs
X2ZlbmNlKGN1cnNvci0+b2JqKTsKPiArCWlmICghZmVuY2UpCj4gKwkJZmVuY2UgPSBkbWFfcmVz
dl9pdGVyX25leHQoY3Vyc29yKTsKPiArCj4gKwljdXJzb3ItPmlzX3Jlc3RhcnRlZCA9IHRydWU7
Cj4gKwlyZXR1cm4gZmVuY2U7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfaXRl
cl9maXJzdCk7Cj4gKwo+ICsvKioKPiArICogZG1hX3Jlc3ZfaXRlcl9uZXh0IC0gbmV4dCBmZW5j
ZSBmcm9tIGEgbG9ja2VkIGRtYV9yZXN2IG9iamVjdAo+ICsgKiBAY3Vyc29yOiBjdXJzb3IgdG8g
cmVjb3JkIHRoZSBjdXJyZW50IHBvc2l0aW9uCj4gKyAqCj4gKyAqIFJldHVybiB0aGUgbmV4dCBm
ZW5jZXMgZnJvbSB0aGUgZG1hX3Jlc3Ygb2JqZWN0IHdoaWxlIGhvbGRpbmcgdGhlCj4gKyAqICZk
bWFfcmVzdi5sb2NrLgo+ICsgKi8KPiArc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9u
ZXh0KHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3IpCj4gK3sKPiArCXVuc2lnbmVkIGludCBp
ZHg7Cj4gKwo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoY3Vyc29yLT5vYmopOwo+ICsKPiArCWN1
cnNvci0+aXNfcmVzdGFydGVkID0gZmFsc2U7Cj4gKwlpZiAoIWN1cnNvci0+ZmVuY2VzIHx8IGN1
cnNvci0+aW5kZXggPj0gY3Vyc29yLT5mZW5jZXMtPnNoYXJlZF9jb3VudCkKPiArCQlyZXR1cm4g
TlVMTDsKPiArCj4gKwlpZHggPSBjdXJzb3ItPmluZGV4Kys7Cj4gKwlyZXR1cm4gcmN1X2RlcmVm
ZXJlbmNlX3Byb3RlY3RlZChjdXJzb3ItPmZlbmNlcy0+c2hhcmVkW2lkeF0sCj4gKwkJCQkJIGRt
YV9yZXN2X2hlbGQoY3Vyc29yLT5vYmopKTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChkbWFf
cmVzdl9pdGVyX25leHQpOwo+ICsKPiAgIC8qKgo+ICAgICogZG1hX3Jlc3ZfY29weV9mZW5jZXMg
LSBDb3B5IGFsbCBmZW5jZXMgZnJvbSBzcmMgdG8gZHN0Lgo+ICAgICogQGRzdDogdGhlIGRlc3Rp
bmF0aW9uIHJlc2VydmF0aW9uIG9iamVjdAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiBpbmRleCA3NjQxMzhhZDg1ODMu
LjQ5MTM1OWNlYTU0YyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiAr
KysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiBAQCAtMTc5LDYgKzE3OSw4IEBAIHN0cnVj
dCBkbWFfcmVzdl9pdGVyIHsKPiAgIAo+ICAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRl
cl9maXJzdF91bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKTsKPiAgIHN0cnVj
dCBkbWFfZmVuY2UgKmRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZChzdHJ1Y3QgZG1hX3Jlc3Zf
aXRlciAqY3Vyc29yKTsKPiArc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9maXJzdChz
dHJ1Y3QgZG1hX3Jlc3ZfaXRlciAqY3Vyc29yKTsKPiArc3RydWN0IGRtYV9mZW5jZSAqZG1hX3Jl
c3ZfaXRlcl9uZXh0KHN0cnVjdCBkbWFfcmVzdl9pdGVyICpjdXJzb3IpOwo+ICAgCj4gICAvKioK
PiAgICAqIGRtYV9yZXN2X2l0ZXJfYmVnaW4gLSBpbml0aWFsaXplIGEgZG1hX3Jlc3ZfaXRlciBv
YmplY3QKPiBAQCAtMjQ0LDYgKzI0NiwyNCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX3Jlc3Zf
aXRlcl9pc19yZXN0YXJ0ZWQoc3RydWN0IGRtYV9yZXN2X2l0ZXIgKmN1cnNvcikKPiAgIAlmb3Ig
KGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9maXJzdF91bmxvY2tlZChjdXJzb3IpOwkJXAo+ICAgCSAg
ICAgZmVuY2U7IGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkKGN1cnNvcikpCj4g
ICAKPiArLyoqCj4gKyAqIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlIC0gZmVuY2UgaXRlcmF0b3IK
PiArICogQGN1cnNvcjogYSBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBwb2ludGVyCj4gKyAqIEBvYmo6
IGEgZG1hX3Jlc3Ygb2JqZWN0IHBvaW50ZXIKPiArICogQGFsbF9mZW5jZXM6IHRydWUgaWYgYWxs
IGZlbmNlcyBzaG91bGQgYmUgcmV0dXJuZWQKPiArICogQGZlbmNlOiB0aGUgY3VycmVudCBmZW5j
ZQo+ICsgKgo+ICsgKiBJdGVyYXRlIG92ZXIgdGhlIGZlbmNlcyBpbiBhIHN0cnVjdCBkbWFfcmVz
diBvYmplY3Qgd2hpbGUgaG9sZGluZyB0aGUKPiArICogJmRtYV9yZXN2LmxvY2suIEBhbGxfZmVu
Y2VzIGNvbnRyb2xzIGlmIHRoZSBzaGFyZWQgZmVuY2VzIGFyZSByZXR1cm5lZCBhcwo+ICsgKiB3
ZWxsLiBUaGUgY3Vyc29yIGluaXRpYWxpc2F0aW9uIGlzIHBhcnQgb2YgdGhlIGl0ZXJhdG9yIGFu
ZCB0aGUgZmVuY2Ugc3RheXMKPiArICogdmFsaWQgYXMgbG9uZyBhcyB0aGUgbG9jayBpcyBoZWxk
IGFuZCBzbyBubyBleHRyYSByZWZlcmVuY2UgdG8gdGhlIGZlbmNlIGlzCj4gKyAqIHRha2VuLgo+
ICsgKi8KPiArI2RlZmluZSBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZShjdXJzb3IsIG9iaiwgYWxs
X2ZlbmNlcywgZmVuY2UpCVwKPiArCWZvciAoZG1hX3Jlc3ZfaXRlcl9iZWdpbihjdXJzb3IsIG9i
aiwgYWxsX2ZlbmNlcyksCVwKPiArCSAgICAgZmVuY2UgPSBkbWFfcmVzdl9pdGVyX2ZpcnN0KGN1
cnNvcik7IGZlbmNlOwlcCj4gKwkgICAgIGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9uZXh0KGN1cnNv
cikpCj4gKwo+ICAgI2RlZmluZSBkbWFfcmVzdl9oZWxkKG9iaikgbG9ja2RlcF9pc19oZWxkKCYo
b2JqKS0+bG9jay5iYXNlKQo+ICAgI2RlZmluZSBkbWFfcmVzdl9hc3NlcnRfaGVsZChvYmopIGxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJihvYmopLT5sb2NrLmJhc2UpCj4gICAKPiAKClJldmlld2VkLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2
cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

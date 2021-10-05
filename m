Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A59421F9A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 09:44:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1747766C11
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 07:44:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B5CA267036; Tue,  5 Oct 2021 07:44:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC3E96197F;
	Tue,  5 Oct 2021 07:44:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9CC16617B3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:44:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 904936197F; Tue,  5 Oct 2021 07:44:38 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by lists.linaro.org (Postfix) with ESMTPS id 5598D617B3
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 07:44:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="205799540"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="205799540"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:44:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="487920385"
Received: from tbarret1-mobl.ger.corp.intel.com (HELO [10.213.238.194])
 ([10.213.238.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 00:44:32 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-10-christian.koenig@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ef650439-a418-979b-56fb-4cf10f91747e@linux.intel.com>
Date: Tue, 5 Oct 2021 08:44:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211001100610.2899-10-christian.koenig@amd.com>
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

Ck9uIDAxLzEwLzIwMjEgMTE6MDUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gU2ltcGxpZnkg
dGhlIGNvZGUgYSBiaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyB8IDM2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4g
aW5kZXggODI0MmI1ZDliYWViLi5iZWI1MDRhOTJkNjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBAQCAt
MjA5LDE5ICsyMDksMTQgQEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9wb2xsX2NiKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLCBzdHJ1Y3QgZG1hX2ZlbmNlX2NiICpjYikKPiAgIAlkbWFfZmVuY2VfcHV0
KGZlbmNlKTsKPiAgIH0KPiAgIAo+IC1zdGF0aWMgYm9vbCBkbWFfYnVmX3BvbGxfc2hhcmVkKHN0
cnVjdCBkbWFfcmVzdiAqcmVzdiwKPiArc3RhdGljIGJvb2wgZG1hX2J1Zl9wb2xsX2FkZF9jYihz
dHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsIGJvb2wgd3JpdGUsCj4gICAJCQkJc3RydWN0IGRtYV9idWZf
cG9sbF9jYl90ICpkY2IpCj4gICB7Cj4gLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZm9iaiA9IGRt
YV9yZXN2X3NoYXJlZF9saXN0KHJlc3YpOwo+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29y
Owo+ICAgCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+IC0JaW50IGksIHI7Cj4gLQo+IC0JaWYg
KCFmb2JqKQo+IC0JCXJldHVybiBmYWxzZTsKPiArCWludCByOwo+ICAgCj4gLQlmb3IgKGkgPSAw
OyBpIDwgZm9iai0+c2hhcmVkX2NvdW50OyArK2kpIHsKPiAtCQlmZW5jZSA9IHJjdV9kZXJlZmVy
ZW5jZV9wcm90ZWN0ZWQoZm9iai0+c2hhcmVkW2ldLAo+IC0JCQkJCQkgIGRtYV9yZXN2X2hlbGQo
cmVzdikpOwo+ICsJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2UoJmN1cnNvciwgcmVzdiwgd3JpdGUs
IGZlbmNlKSB7Cj4gICAJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwo+ICAgCQlyID0gZG1hX2ZlbmNl
X2FkZF9jYWxsYmFjayhmZW5jZSwgJmRjYi0+Y2IsIGRtYV9idWZfcG9sbF9jYik7Cj4gICAJCWlm
ICghcikKCkl0IGlzIHVuY2hhbmdlZCB3aXRoIHRoaXMgcGF0Y2gsIGJ1dCBhcmUgdGhlIHNlbWFu
dGljcyBzdXBwb3NlZCB0byBiZSAKbGlrZSB0aGlzPyBTaWduYWwgcG9sbCBldmVudCBpZiBfYW55
XyBvZiB0aGUgc2hhcmVkIGZlbmNlcyBoYXMgYmVlbiAKc2lnbmFsZWQ/CgpSZWdhcmRzLAoKVHZy
dGtvCgo+IEBAIC0yMzIsMjQgKzIyNyw2IEBAIHN0YXRpYyBib29sIGRtYV9idWZfcG9sbF9zaGFy
ZWQoc3RydWN0IGRtYV9yZXN2ICpyZXN2LAo+ICAgCXJldHVybiBmYWxzZTsKPiAgIH0KPiAgIAo+
IC1zdGF0aWMgYm9vbCBkbWFfYnVmX3BvbGxfZXhjbChzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsCj4g
LQkJCSAgICAgIHN0cnVjdCBkbWFfYnVmX3BvbGxfY2JfdCAqZGNiKQo+IC17Cj4gLQlzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2UocmVzdik7Cj4gLQlpbnQgcjsK
PiAtCj4gLQlpZiAoIWZlbmNlKQo+IC0JCXJldHVybiBmYWxzZTsKPiAtCj4gLQlkbWFfZmVuY2Vf
Z2V0KGZlbmNlKTsKPiAtCXIgPSBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGZlbmNlLCAmZGNiLT5j
YiwgZG1hX2J1Zl9wb2xsX2NiKTsKPiAtCWlmICghcikKPiAtCQlyZXR1cm4gdHJ1ZTsKPiAtCWRt
YV9mZW5jZV9wdXQoZmVuY2UpOwo+IC0KPiAtCXJldHVybiBmYWxzZTsKPiAtfQo+IC0KPiAgIHN0
YXRpYyBfX3BvbGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHBvbGxfdGFibGUg
KnBvbGwpCj4gICB7Cj4gICAJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKPiBAQCAtMjgyLDggKzI1
OSw3IEBAIHN0YXRpYyBfX3BvbGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHBv
bGxfdGFibGUgKnBvbGwpCj4gICAJCXNwaW5fdW5sb2NrX2lycSgmZG1hYnVmLT5wb2xsLmxvY2sp
Owo+ICAgCj4gICAJCWlmIChldmVudHMgJiBFUE9MTE9VVCkgewo+IC0JCQlpZiAoIWRtYV9idWZf
cG9sbF9zaGFyZWQocmVzdiwgZGNiKSAmJgo+IC0JCQkgICAgIWRtYV9idWZfcG9sbF9leGNsKHJl
c3YsIGRjYikpCj4gKwkJCWlmICghZG1hX2J1Zl9wb2xsX2FkZF9jYihyZXN2LCB0cnVlLCBkY2Ip
KQo+ICAgCQkJCS8qIE5vIGNhbGxiYWNrIHF1ZXVlZCwgd2FrZSB1cCBhbnkgb3RoZXIgd2FpdGVy
cyAqLwo+ICAgCQkJCWRtYV9idWZfcG9sbF9jYihOVUxMLCAmZGNiLT5jYik7Cj4gICAJCQllbHNl
Cj4gQEAgLTMwMyw3ICsyNzksNyBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVj
dCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQo+ICAgCQlzcGluX3VubG9ja19pcnEoJmRt
YWJ1Zi0+cG9sbC5sb2NrKTsKPiAgIAo+ICAgCQlpZiAoZXZlbnRzICYgRVBPTExJTikgewo+IC0J
CQlpZiAoIWRtYV9idWZfcG9sbF9leGNsKHJlc3YsIGRjYikpCj4gKwkJCWlmICghZG1hX2J1Zl9w
b2xsX2FkZF9jYihyZXN2LCBmYWxzZSwgZGNiKSkKPiAgIAkJCQkvKiBObyBjYWxsYmFjayBxdWV1
ZWQsIHdha2UgdXAgYW55IG90aGVyIHdhaXRlcnMgKi8KPiAgIAkJCQlkbWFfYnVmX3BvbGxfY2Io
TlVMTCwgJmRjYi0+Y2IpOwo+ICAgCQkJZWxzZQo+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

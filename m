Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 120C1414CBB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 17:09:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 39C5661E96
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 15:09:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBE9561A47; Wed, 22 Sep 2021 15:09:36 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C210617B3;
	Wed, 22 Sep 2021 15:09:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9B78B61754
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 15:09:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 90324617B3; Wed, 22 Sep 2021 15:09:31 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by lists.linaro.org (Postfix) with ESMTPS id 3C10B61754
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 15:09:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="210852640"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="210852640"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:09:26 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="704054443"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 08:09:23 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-2-christian.koenig@amd.com>
 <093432d2-de8e-9684-03aa-7cb4842ea755@linux.intel.com>
 <347e66cf-fd85-da15-6a00-cecab25c2d49@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3ea25ac4-19f9-530e-8961-cb5b1822a11b@linux.intel.com>
Date: Wed, 22 Sep 2021 16:09:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <347e66cf-fd85-da15-6a00-cecab25c2d49@gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/26] dma-buf: add
 dma_resv_for_each_fence_unlocked v4
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

Ck9uIDIyLzA5LzIwMjEgMTU6NTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjIuMDku
MjEgdW0gMTY6MzYgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4+ICsKPj4+ICsvKioKPj4+ICsg
KiBkbWFfcmVzdl9pdGVyX2ZpcnN0X3VubG9ja2VkIC0gZmlyc3QgZmVuY2UgaW4gYW4gdW5sb2Nr
ZWQgCj4+PiBkbWFfcmVzdiBvYmouCj4+PiArICogQGN1cnNvcjogdGhlIGN1cnNvciB3aXRoIHRo
ZSBjdXJyZW50IHBvc2l0aW9uCj4+PiArICoKPj4+ICsgKiBSZXR1cm5zIHRoZSBmaXJzdCBmZW5j
ZSBmcm9tIGFuIHVubG9ja2VkIGRtYV9yZXN2IG9iai4KPj4+ICsgKi8KPj4+ICtzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfcmVzdl9pdGVyX2ZpcnN0X3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdl9pdGVy
IAo+Pj4gKmN1cnNvcikKPj4+ICt7Cj4+PiArwqDCoMKgIHJjdV9yZWFkX2xvY2soKTsKPj4+ICvC
oMKgwqAgZG8gewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X2l0ZXJfcmVzdGFydF91bmxv
Y2tlZChjdXJzb3IpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X2l0ZXJfd2Fsa191bmxv
Y2tlZChjdXJzb3IpOwo+Pj4gK8KgwqDCoCB9IHdoaWxlIChyZWFkX3NlcWNvdW50X3JldHJ5KCZj
dXJzb3ItPm9iai0+c2VxLCBjdXJzb3ItPnNlcSkpOwo+Pj4gK8KgwqDCoCByY3VfcmVhZF91bmxv
Y2soKTsKPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIGN1cnNvci0+ZmVuY2U7Cj4+PiArfQo+Pj4g
K0VYUE9SVF9TWU1CT0woZG1hX3Jlc3ZfaXRlcl9maXJzdF91bmxvY2tlZCk7Cj4+Cj4+IFdoeSBp
cyB0aGlzIG9uZSBzcGxpdCBmcm9tIGRtYV9yZXN2X2l0ZXJfYmVnaW4gYW5kIGV2ZW4gZXhwb3J0
ZWQ/Cj4gCj4gSSd2ZSBzcGxpdCBpdCB0byBiZSBhYmxlIHRvIHVzZSBkbWFfcmVzdl9pdGVyX2Jl
Z2luIGluIGJvdGggdGhlIHVubG9ja2VkIAo+IGFuZCBsb2NrZWQgaXRlcmF0b3IuCgpPay4KCj4g
Cj4+IEkgY291bGRuJ3QgZmluZCBhbnkgdXNlcnMgaW4gdGhlIHNlcmllcy4KPiAKPiBUaGlzIGlz
IHVzZWQgaW4gdGhlIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCkgbWFjcm8gdG8g
cmV0dXJuIAo+IHRoZSBmaXJzdCBmZW5jZS4KCkRvaCEKCj4+PiArCj4+PiArLyoqCj4+PiArICog
ZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkIC0gbmV4dCBmZW5jZSBpbiBhbiB1bmxvY2tlZCBk
bWFfcmVzdiAKPj4+IG9iai4KPj4+ICsgKiBAY3Vyc29yOiB0aGUgY3Vyc29yIHdpdGggdGhlIGN1
cnJlbnQgcG9zaXRpb24KPj4+ICsgKgo+Pj4gKyAqIFJldHVybnMgdGhlIG5leHQgZmVuY2UgZnJv
bSBhbiB1bmxvY2tlZCBkbWFfcmVzdiBvYmouCj4+PiArICovCj4+PiArc3RydWN0IGRtYV9mZW5j
ZSAqZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdl9pdGVyIAo+Pj4g
KmN1cnNvcikKPj4+ICt7Cj4+PiArwqDCoMKgIGJvb2wgcmVzdGFydDsKPj4+ICsKPj4+ICvCoMKg
wqAgcmN1X3JlYWRfbG9jaygpOwo+Pj4gK8KgwqDCoCBjdXJzb3ItPmlzX3Jlc3RhcnRlZCA9IGZh
bHNlOwo+Pj4gK8KgwqDCoCByZXN0YXJ0ID0gcmVhZF9zZXFjb3VudF9yZXRyeSgmY3Vyc29yLT5v
YmotPnNlcSwgY3Vyc29yLT5zZXEpOwo+Pj4gK8KgwqDCoCBkbyB7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgaWYgKHJlc3RhcnQpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl9pdGVy
X3Jlc3RhcnRfdW5sb2NrZWQoY3Vyc29yKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl9p
dGVyX3dhbGtfdW5sb2NrZWQoY3Vyc29yKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXN0YXJ0ID0g
dHJ1ZTsKPj4+ICvCoMKgwqAgfSB3aGlsZSAocmVhZF9zZXFjb3VudF9yZXRyeSgmY3Vyc29yLT5v
YmotPnNlcSwgY3Vyc29yLT5zZXEpKTsKPj4+ICvCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4+
PiArCj4+PiArwqDCoMKgIHJldHVybiBjdXJzb3ItPmZlbmNlOwo+Pj4gK30KPj4+ICtFWFBPUlRf
U1lNQk9MKGRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZCk7Cj4+Cj4+IENvdWxkbid0IGRtYV9y
ZXN2X2l0ZXJfZmlyc3RfdW5sb2NrZWQgYW5kIGRtYV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZCAK
Pj4gc2hhcmUgdGhlIHNhbWUgaW1wbGVtZW50YXRpb24/IEVzcGVjaWFsbHkgaWYgeW91IGFyZSBh
YmxlIHRvIHJlcGxhY2UgCj4+IGN1cnNvci0+aXNfcmVzdGFydGVkIHdpdGggY3Vyc29yLT5pbmRl
eCA9PSAtMS4KPiAKPiBUaGF0J3Mgd2hhdCBJIGhhZCBpbml0aWFsbHksIGJ1dCBEYW5pZWwgZGlz
bGlrZWQgaXQgZm9yIHNvbWUgcmVhc29uLiBZb3UgCj4gdGhlbiBuZWVkIGEgY2VudHJhbGl6ZWQg
d2FsayBmdW5jdGlvbiBpbnN0ZWFkIG9mIGZpcnN0L25leHQuCgpJIGhhZCBzb21lIGlkZWFzIHRv
IG9ubHkgY29uc29saWRhdGUgImZpcnN0IiBhbmQgIm5leHQiIGhlbHBlcnMgYnV0IG5ldmVyIG1p
bmQsIHlvdXJzIGlzIGZpbmUgYXMgd2VsbC4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gCj4gVGhhbmtz
LAo+IENocmlzdGlhbi4KPiAKPj4gUmVnYXJkcywKPj4KPj4gVHZydGtvCj4gCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

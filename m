Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 329DA411151
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 10:47:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19D84610BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 08:47:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1299360C2C; Mon, 20 Sep 2021 08:47:39 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64195610BE;
	Mon, 20 Sep 2021 08:47:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F2102607A7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 08:47:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E73B960E9C; Mon, 20 Sep 2021 08:47:29 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by lists.linaro.org (Postfix) with ESMTPS id 81085607A7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 08:47:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="284101619"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="284101619"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:47:26 -0700
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="473500252"
Received: from gbradyx-mobl2.ger.corp.intel.com (HELO [10.213.235.119])
 ([10.213.235.119])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 01:47:24 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-15-christian.koenig@amd.com>
 <93b93f00-7ad3-9ea3-e947-77297b4552c9@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <60595ff8-7935-c0a4-7c0f-2a4c3a1d62b9@linux.intel.com>
Date: Mon, 20 Sep 2021 09:47:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <93b93f00-7ad3-9ea3-e947-77297b4552c9@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 14/26] drm/i915: use the new
 iterator in i915_sw_fence_await_reservation v3
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

Ck9uIDIwLzA5LzIwMjEgMDk6NDUsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDE3LzA5
LzIwMjEgMTM6MzUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFNpbXBsaWZ5aW5nIHRoZSBj
b2RlIGEgYml0Lgo+Pgo+PiB2MjogdXNlIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlIGluc3RlYWQs
IGFjY29yZGluZyB0byBUdnJ0a28gdGhlIGxvY2sgaXMKPj4gwqDCoMKgwqAgaGVsZCBoZXJlIGFu
eXdheS4KPj4gdjM6IGJhY2sgdG8gdXNpbmcgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2Nr
ZWQuCj4gCj4gSXQgZGlkIG5vdCB3b3JrIG91dCAtIHdoYXQgaGFwcGVuZWQ/CldhaXQsIG15IHN1
Z2dlc3Rpb24gdG8gdHJ5IHRoZSBsb2NrZWQgaXRlcmF0b3Igd2FzIGFnYWluc3QgCmk5MTVfcmVx
dWVzdF9hd2FpdF9vYmplY3QuIEkgaGF2ZW4ndCBsb29rZWQgYXQgdGhpcyBvbmUgYXQgdGhlIHRp
bWUgb3IgCmV2ZW4gbm93LgoKUmVnYXJkcywKClR2cnRrbwoKCj4gUmVnYXJkcywKPiAKPiBUdnJ0
a28KPiAKPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5j
ZS5jIHwgNTcgKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgMTUgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9zd19mZW5jZS5jCj4+IGluZGV4IGM1ODlhNjgxZGE3Ny4uNzYzNWIwNDc4ZWE1
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2ZlbmNlLmMKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCj4+IEBAIC01NzIsNTYg
KzU3MiwyOSBAQCBpbnQgaTkxNV9zd19mZW5jZV9hd2FpdF9yZXNlcnZhdGlvbihzdHJ1Y3QgCj4+
IGk5MTVfc3dfZmVuY2UgKmZlbmNlLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyB0aW1lb3V0LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2ZwX3QgZ2ZwKQo+PiDCoCB7Cj4+IC3CoMKgwqAgc3Ry
dWN0IGRtYV9mZW5jZSAqZXhjbDsKPj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJz
b3I7Cj4+ICvCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqZjsKPj4gwqDCoMKgwqDCoCBpbnQgcmV0
ID0gMCwgcGVuZGluZzsKPj4gwqDCoMKgwqDCoCBkZWJ1Z19mZW5jZV9hc3NlcnQoZmVuY2UpOwo+
PiDCoMKgwqDCoMKgIG1pZ2h0X3NsZWVwX2lmKGdmcGZsYWdzX2FsbG93X2Jsb2NraW5nKGdmcCkp
Owo+PiAtwqDCoMKgIGlmICh3cml0ZSkgewo+PiAtwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9m
ZW5jZSAqKnNoYXJlZDsKPj4gLcKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBjb3VudCwgaTsK
Pj4gLQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0ID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhyZXN2LCAm
ZXhjbCwgJmNvdW50LCAmc2hhcmVkKTsKPj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKg
IGZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGlmIChzaGFyZWRbaV0tPm9wcyA9PSBleGNsdWRlKQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbnRpbnVlOwo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBlbmRp
bmcgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZShmZW5jZSwKPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNoYXJl
ZFtpXSwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHRpbWVvdXQsCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnZnApOwo+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpZiAocGVuZGluZyA8IDApIHsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXQgPSBwZW5kaW5nOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGJyZWFrOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IC0KPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0IHw9IHBlbmRpbmc7Cj4+IC3CoMKgwqDCoMKgwqDCoCB9Cj4+IC0KPj4g
LcKgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKQo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Cj4+IC3CoMKgwqDCoMKgwqDC
oCBrZnJlZShzaGFyZWQpOwo+PiAtwqDCoMKgIH0gZWxzZSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBl
eGNsID0gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQocmVzdik7Cj4+IC3CoMKgwqAgfQo+PiAt
Cj4+IC3CoMKgwqAgaWYgKHJldCA+PSAwICYmIGV4Y2wgJiYgZXhjbC0+b3BzICE9IGV4Y2x1ZGUp
IHsKPj4gLcKgwqDCoMKgwqDCoMKgIHBlbmRpbmcgPSBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9m
ZW5jZShmZW5jZSwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBleGNsLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRpbWVvdXQsCj4+ICvCoMKgwqAgcmN1X3JlYWRfbG9jaygp
Owo+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgcmVzdiwgd3JpdGUpOwo+
PiArwqDCoMKgIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGYpIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+PiArwqDCoMKgwqDCoMKgwqAg
cGVuZGluZyA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1hX2ZlbmNlKGZlbmNlLCBmLCB0aW1lb3V0
LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGdmcCk7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocGVuZGluZyA8IDApCj4+ICvCoMKg
wqDCoMKgwqDCoCByY3VfcmVhZF9sb2NrKCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocGVuZGlu
ZyA8IDApIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gcGVuZGluZzsKPj4g
LcKgwqDCoMKgwqDCoMKgIGVsc2UKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0IHw9IHBl
bmRpbmc7Cj4+IC3CoMKgwqAgfQo+PiAtCj4+IC3CoMKgwqAgZG1hX2ZlbmNlX3B1dChleGNsKTsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+
ICvCoMKgwqDCoMKgwqDCoCByZXQgfD0gcGVuZGluZzsKPj4gK8KgwqDCoCB9Cj4+ICvCoMKgwqAg
ZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+ICvCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7
Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIHJldDsKPj4gwqAgfQo+PgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

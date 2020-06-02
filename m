Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A3B1EB8C4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2020 11:46:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 939B261943
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2020 09:46:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8790A61945; Tue,  2 Jun 2020 09:46:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E5BF60E09;
	Tue,  2 Jun 2020 09:45:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 65C4B60B4C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2020 09:45:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4DDFB60E09; Tue,  2 Jun 2020 09:45:54 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by lists.linaro.org (Postfix) with ESMTPS id BC49060B4C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jun 2020 09:45:52 +0000 (UTC)
IronPort-SDR: h6eWUzA2YRARS9zWtLmGOSadwiauqpbDxfw5QEgKF6p/cXYn4pwN9ht7GTw/+k39zGA8HeIv6r
 1NZFRjXIPY1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 02:45:51 -0700
IronPort-SDR: GBrG+F5G1jx/CTfaA23KqXDTULHq5bmL+Kd+eUBrulPbQ9kir//xf+TwlY9tUtxNuQdyZwXE+J
 4m3k7i0X27cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,463,1583222400"; d="scan'208";a="347353632"
Received: from mhuther1-mobl.ger.corp.intel.com (HELO [10.252.44.107])
 ([10.252.44.107])
 by orsmga001.jf.intel.com with ESMTP; 02 Jun 2020 02:45:48 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
 <20200512085944.222637-2-daniel.vetter@ffwll.ch>
 <0b1c65ec-adc2-9f02-da68-c398cf7ce80b@amd.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <105c02b5-f18d-cd08-bffa-93033c923365@linux.intel.com>
Date: Tue, 2 Jun 2020 11:45:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <0b1c65ec-adc2-9f02-da68-c398cf7ce80b@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [RFC 01/17] dma-fence: add might_sleep
	annotation to _wait()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3AgMTItMDUtMjAyMCBvbSAxMTowOCBzY2hyZWVmIENocmlzdGlhbiBLw7ZuaWc6Cj4gQW0gMTIu
MDUuMjAgdW0gMTA6NTkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+PiBCdXQgb25seSBmb3Igbm9u
LXplcm8gdGltZW91dCwgdG8gYXZvaWQgZmFsc2UgcG9zaXRpdmVzLgo+Pgo+PiBPbmUgcXVlc3Rp
b24gaGVyZSBpcyB3aGV0aGVyIHRoZSBtaWdodF9zbGVlcCBzaG91bGQgYmUgdW5jb25kaXRpb25h
bCwKPj4gb3Igb25seSBmb3IgcmVhbCB0aW1lb3V0cy4gSSdtIG5vdCBzdXJlLCBzbyB3ZW50IHdp
dGggdGhlIG1vcmUKPj4gZGVmZW5zaXZlIG9wdGlvbi4gQnV0IGluIHRoZSBpbnRlcmVzdCBvZiBs
b2NraW5nIGRvd24gdGhlIGNyb3NzLWRyaXZlcgo+PiBkbWFfZmVuY2UgcnVsZXMgd2UgbWlnaHQg
d2FudCB0byBiZSBtb3JlIGFnZ3Jlc3NpdmUuCj4+Cj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtl
cm5lbC5vcmcKPj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+PiBDYzogbGlu
dXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IENjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS5jIHwgMyArKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+IGluZGV4IDA1MmE0MWUyNDUxYy4uNjgwMjEyNTM0
OWZiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKPj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCj4+IEBAIC0yMDgsNiArMjA4LDkgQEAgZG1hX2Zl
bmNlX3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgYm9vbCBpbnRyLCBzaWdu
ZWQgbG9uZyB0aW1lb3V0KQo+PiDCoMKgwqDCoMKgIGlmIChXQVJOX09OKHRpbWVvdXQgPCAwKSkK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+PiDCoCArwqDCoMKgIGlmICh0
aW1lb3V0ID4gMCkKPj4gK8KgwqDCoMKgwqDCoMKgIG1pZ2h0X3NsZWVwKCk7Cj4+ICsKPgo+IEkg
d291bGQgcmF0aGVyIGxpa2UgdG8gc2VlIG1pZ2h0X3NsZWVwKCkgY2FsbGVkIGhlcmUgYWxsIHRo
ZSB0aW1lIGV2ZW4gd2l0aCB0aW1lb3V0PT0wLgo+Cj4gSUlSQyBJIHJlbW92ZWQgdGhlIGNvZGUg
aW4gVFRNIGFidXNpbmcgdGhpcyBpbiBhdG9taWMgY29udGV4dCBxdWl0ZSBhIHdoaWxlIGFnbywg
YnV0IGNvdWxkIGJlIHRoYXQgc29tZSBsZWFrZWQgaW4gYWdhaW4gb3IgaXQgaXMgY2FsbGVkIGlu
IGF0b21pYyBjb250ZXh0IGVsc2V3aGVyZSBhcyB3ZWxsLiAKCgpTYW1lLCBnbGFkIEknbSBub3Qg
dGhlIG9ubHkgb25lIHdobyB3YW50cyBpdC4gOikKCn5NYWFydGVuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

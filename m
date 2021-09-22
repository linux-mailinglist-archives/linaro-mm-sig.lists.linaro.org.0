Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B474741481C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 13:46:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44AB9618D1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 11:46:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E04AD61731; Wed, 22 Sep 2021 11:46:56 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3F986117A;
	Wed, 22 Sep 2021 11:46:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A945660FF5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 11:46:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A6DA56117A; Wed, 22 Sep 2021 11:46:52 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by lists.linaro.org (Postfix) with ESMTPS id 63BBE60FF5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 11:46:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="284586867"
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="284586867"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 04:46:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="703689779"
Received: from bbrowne-mobl.ger.corp.intel.com (HELO [10.213.200.151])
 ([10.213.200.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 04:46:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-14-christian.koenig@amd.com>
 <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4c357136-3279-ff57-1c4f-62276534c887@linux.intel.com>
Date: Wed, 22 Sep 2021 12:46:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
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

Ck9uIDIyLzA5LzIwMjEgMTE6MjEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDIyLzA5
LzIwMjEgMTA6MTAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgbWFrZXMgdGhlIGZ1
bmN0aW9uIG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+PiByZXRyeSBsb2dpYyBpcyBu
b3cgaGFuZGxlZCBlbHNlIHdoZXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fYnVzeS5jIHwgMzUgKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5
LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+PiBpbmRl
eCA2MjM0ZTE3MjU5YzEuLjMxM2FmYjRhMTFjNyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fYnVzeS5jCj4+IEBAIC04Miw4ICs4Miw4IEBAIGk5MTVfZ2VtX2J1c3lf
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPj4gwqAgewo+PiDCoMKg
wqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fYnVzeSAqYXJncyA9IGRhdGE7Cj4+IMKgwqDCoMKg
wqAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPj4gLcKgwqDCoCBzdHJ1Y3QgZG1h
X3Jlc3ZfbGlzdCAqbGlzdDsKPj4gLcKgwqDCoCB1bnNpZ25lZCBpbnQgc2VxOwo+PiArwqDCoMKg
IHN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKPj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+PiDCoMKgwqDCoMKgIGVyciA9IC1FTk9F
TlQ7Cj4+IEBAIC0xMDksMjcgKzEwOSwyMCBAQCBpOTE1X2dlbV9idXN5X2lvY3RsKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHZvaWQgCj4+ICpkYXRhLAo+PiDCoMKgwqDCoMKgwqAgKiB0byByZXBv
cnQgdGhlIG92ZXJhbGwgYnVzeW5lc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2FpdC1pb2N0bCAKPj4g
ZG9lcy4KPj4gwqDCoMKgwqDCoMKgICoKPj4gwqDCoMKgwqDCoMKgICovCj4+IC1yZXRyeToKPj4g
LcKgwqDCoCBzZXEgPSByYXdfcmVhZF9zZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Cj4+
IC0KPj4gLcKgwqDCoCAvKiBUcmFuc2xhdGUgdGhlIGV4Y2x1c2l2ZSBmZW5jZSB0byB0aGUgUkVB
RCAqYW5kKiBXUklURSBlbmdpbmUgKi8KPj4gLcKgwqDCoCBhcmdzLT5idXN5ID0gYnVzeV9jaGVj
a193cml0ZXIoZG1hX3Jlc3ZfZXhjbF9mZW5jZShvYmotPmJhc2UucmVzdikpOwo+PiAtCj4+IC3C
oMKgwqAgLyogVHJhbnNsYXRlIHNoYXJlZCBmZW5jZXMgdG8gUkVBRCBzZXQgb2YgZW5naW5lcyAq
Lwo+PiAtwqDCoMKgIGxpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChvYmotPmJhc2UucmVzdik7
Cj4+IC3CoMKgwqAgaWYgKGxpc3QpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBz
aGFyZWRfY291bnQgPSBsaXN0LT5zaGFyZWRfY291bnQsIGk7Cj4+IC0KPj4gLcKgwqDCoMKgwqDC
oMKgIGZvciAoaSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewo+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9Cj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmN1X2RlcmVmZXJlbmNlKGxpc3QtPnNoYXJlZFtpXSk7Cj4+IC0KPj4g
K8KgwqDCoCBhcmdzLT5idXN5ID0gZmFsc2U7Cj4gCj4gWW91IGNhbiBkcm9wIHRoaXMgbGluZSwg
ZXNwZWNpYWxseSBzaW5jZSBpdCBpcyBub3QgYSBib29sZWFuLiBXaXRoIHRoYXQ6Cj4gCj4gUmV2
aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpIYXZp
bmcgc2FpZCB0aGlzLCBvbmUgdGhpbmcgdG8gYWRkIGluIHRoZSBjb21taXQgbWVzc2FnZSBpcyBz
b21lIApjb21tZW50YXJ5IHRoYXQgYWx0aG91Z2ggc2ltcGxlciBpbiBjb2RlLCB0aGUgbmV3IGlt
cGxlbWVudGF0aW9uIGhhcyBhIApsb3QgbW9yZSBhdG9taWMgaW5zdHJ1Y3Rpb25zIGR1ZSBhbGwg
dGhlIGV4dHJhIGZlbmNlIGdldC9wdXQuCgpTYXlpbmcgdGhpcyBiZWNhdXNlIEkgcmVtZW1iZXJl
ZCBidXN5IGlvY3RsIGlzIHF1aXRlIGFuIG92ZXItcG9wdWxhciAKb25lLiBUaGlua2luZyBhYm91
dCB0cmFjZXMgZnJvbSBzb21lIHJlYWwgdXNlcnNwYWNlcyBJIGxvb2tlZCBhdCBpbiB0aGUgCnBh
c3QuCgpTbyBJIHRoaW5rIGFjayBmcm9tIG1haW50YWluZXJzIHdpbGwgYmUgcmVxdWlyZWQgaGVy
ZS4gQmVjYXVzZSBJIGp1c3QgCmRvbid0IGtub3cgaWYgYW55IHBlcmZvcm1hbmNlIGltcGFjdCB3
aWxsIGJlIHZpc2libGUgb3Igbm90LiBTbyB2aWV3IG15IApyLWIgYXMgImNvZGUgbG9va3MgZmlu
ZSIgYnV0IEkgYW0gb24gdGhlIGZlbmNlIGlmIGl0IHNob3VsZCBhY3R1YWxseSBiZSAKbWVyZ2Vk
LiBQcm9iYWJseSBsZWFuaW5nIHRvd2FyZHMgbm8gYWN0dWFsbHkgLSBnaXZlbiBob3cgdGhlIGNv
ZGUgaXMgCmxvY2FsaXNlZCBoZXJlIGFuZCBJIGRpc2xpa2UgYnVyZGVuaW5nIG9sZCBwbGF0Zm9y
bXMgd2l0aCBtb3JlIENQVSB0aW1lIAppdCBjb3VsZCBiZSBjaGVhcGx5IGxlZnQgYXMgaXMuCgpS
ZWdhcmRzLAoKVHZydGtvCgoKPiAKPiBSZWdhcmRzLAo+IAo+IFR2cnRrbwo+IAo+PiArwqDCoMKg
IGRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5iYXNlLnJlc3YsIHRydWUpOwo+PiAr
wqDCoMKgIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7
Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoZG1hX3Jlc3ZfaXRlcl9pc19yZXN0YXJ0ZWQoJmN1cnNv
cikpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFyZ3MtPmJ1c3kgPSAwOwo+PiArCj4+ICvC
oMKgwqDCoMKgwqDCoCBpZiAoZG1hX3Jlc3ZfaXRlcl9pc19leGNsdXNpdmUoJmN1cnNvcikpCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNl
IHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIAo+PiBlbmdpbmUgKi8KPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgYXJncy0+YnVzeSB8PSBidXN5X2NoZWNrX3dyaXRlcihmZW5jZSk7Cj4+ICvCoMKg
wqDCoMKgwqDCoCBlbHNlCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFRyYW5zbGF0ZSBz
aGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgYXJncy0+YnVzeSB8PSBidXN5X2NoZWNrX3JlYWRlcihmZW5jZSk7Cj4+IC3C
oMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgfQo+PiAtCj4+IC3CoMKgwqAgaWYgKGFyZ3Mt
PmJ1c3kgJiYgcmVhZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5iYXNlLnJlc3YtPnNlcSwgc2VxKSkK
Pj4gLcKgwqDCoMKgwqDCoMKgIGdvdG8gcmV0cnk7Cj4+ICvCoMKgwqAgZG1hX3Jlc3ZfaXRlcl9l
bmQoJmN1cnNvcik7Cj4+IMKgwqDCoMKgwqAgZXJyID0gMDsKPj4gwqAgb3V0Ogo+PgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FBE414896
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 14:15:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA85F6197A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 12:15:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CD9F661731; Wed, 22 Sep 2021 12:15:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92A4F61731;
	Wed, 22 Sep 2021 12:15:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1DEAD6117A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 12:15:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 10AE561731; Wed, 22 Sep 2021 12:15:38 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by lists.linaro.org (Postfix) with ESMTPS id 09C4F6117A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 12:15:36 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id t7so6013571wrw.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 05:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=GnxpSz2YTPBv5eN5//0MtqAUk2h+KB4qVZEHzUyCAZw=;
 b=ZNBG4vyTdhDJp3JwVLvKNp3mKoy0RSvoXQXHg5eaQTQY3S6jyzt2hNYcBBRadfBRV4
 cBaAR2PTmi8z1PGYZEzfaOWNtvUzynb1qjrOjUaF1zVusEHfptJBBICNjmwbSMeeqvzZ
 DBYuFe0cAe/rKGxOVpA0LxMs3pBkL2Mb+whDdZC/MDJUaLcg4+ZNJih+7pohsTG9rmXr
 ohQZURtxN8cBMWDOSXJKYEUkB2cRx6rQwcb7ioNoPvz1t8u8OKX7z3XQfl9BZoK+msxw
 Xo0gYRT/hx9gqaW9iwnKkURJv1lGk7Qkbha7z2wY4tmnk6qWEJMnGVrfuoHEQTcZ5PI+
 r3SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=GnxpSz2YTPBv5eN5//0MtqAUk2h+KB4qVZEHzUyCAZw=;
 b=Ch7E7bKXD9dN/EXpb0unkHu+tMVN4+aOnw/vApRLmZ2/r81tRaeH6N74UDapHYiApA
 JGwyCuhkJ9ZwQeR/0+yYUu6id9UAGObHkpKqPPVfiCH8KotPaC56AEIY8ARUHX/w2+BA
 6yKe70dleBF+RSlHOUKYicTh0gOvVSAfrHyqTNKAr7/Kzl4WITj0NCeWKvddecNn/sdo
 iqSiJqNfD93rIbE73y5eJnTGHpXYbQ7dyt/+afUikYraXv+cYREGgxCITKy0JVuqxG4H
 xiP+aI7hI3g2U46+T4TOHTtZtayntQHEPtfO4S7PO4kcu1JbpuzIeoRUTtuctH0aFuW5
 2m5Q==
X-Gm-Message-State: AOAM531VWVluF8sQ5KiyK4bWbWYzNs7I4GvuiHJWKKkFQwWGE91yXeMP
 qZRVtkqPj5Kx8UGlSXK6Uus=
X-Google-Smtp-Source: ABdhPJxArNaumdFR5k7zQh5umtGKKovsq13VN0RWOn1Titd3CtqtdYE/3R+onTeTvl+mta5khRMTuQ==
X-Received: by 2002:a1c:9888:: with SMTP id
 a130mr10155375wme.102.1632312935065; 
 Wed, 22 Sep 2021 05:15:35 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id o13sm2357309wri.53.2021.09.22.05.15.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 05:15:34 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-14-christian.koenig@amd.com>
 <6b22cb75-6c41-db55-83f2-3eae87b585aa@linux.intel.com>
 <4c357136-3279-ff57-1c4f-62276534c887@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <acc297ce-287e-295c-8b54-223610fb2093@gmail.com>
Date: Wed, 22 Sep 2021 14:15:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <4c357136-3279-ff57-1c4f-62276534c887@linux.intel.com>
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

QW0gMjIuMDkuMjEgdW0gMTM6NDYgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDIyLzA5
LzIwMjEgMTE6MjEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Pgo+PiBPbiAyMi8wOS8yMDIxIDEw
OjEwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4gVGhpcyBtYWtlcyB0aGUgZnVuY3Rpb24g
bXVjaCBzaW1wbGVyIHNpbmNlIHRoZSBjb21wbGV4Cj4+PiByZXRyeSBsb2dpYyBpcyBub3cgaGFu
ZGxlZCBlbHNlIHdoZXJlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYyB8IDM1IAo+Pj4gKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25z
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9idXN5LmMgCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9idXN5LmMK
Pj4+IGluZGV4IDYyMzRlMTcyNTljMS4uMzEzYWZiNGExMWM3IDEwMDY0NAo+Pj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2J1c3kuYwo+Pj4gQEAgLTgyLDggKzgyLDggQEAgaTkx
NV9nZW1fYnVzeV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkIAo+Pj4gKmRhdGEs
Cj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fYnVzeSAqYXJncyA9
IGRhdGE7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+
PiAtwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0Owo+Pj4gLcKgwqDCoCB1bnNpZ25l
ZCBpbnQgc2VxOwo+Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4+PiAr
wqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+Pj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+
Pj4gwqDCoMKgwqDCoCBlcnIgPSAtRU5PRU5UOwo+Pj4gQEAgLTEwOSwyNyArMTA5LDIwIEBAIGk5
MTVfZ2VtX2J1c3lfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgCj4+PiB2b2lkICpkYXRh
LAo+Pj4gwqDCoMKgwqDCoMKgICogdG8gcmVwb3J0IHRoZSBvdmVyYWxsIGJ1c3luZXNzLiBUaGlz
IGlzIHdoYXQgdGhlIHdhaXQtaW9jdGwgCj4+PiBkb2VzLgo+Pj4gwqDCoMKgwqDCoMKgICoKPj4+
IMKgwqDCoMKgwqDCoCAqLwo+Pj4gLXJldHJ5Ogo+Pj4gLcKgwqDCoCBzZXEgPSByYXdfcmVhZF9z
ZXFjb3VudCgmb2JqLT5iYXNlLnJlc3YtPnNlcSk7Cj4+PiAtCj4+PiAtwqDCoMKgIC8qIFRyYW5z
bGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIFdSSVRFIGVuZ2luZSAq
Lwo+Pj4gLcKgwqDCoCBhcmdzLT5idXN5ID0gCj4+PiBidXN5X2NoZWNrX3dyaXRlcihkbWFfcmVz
dl9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2KSk7Cj4+PiAtCj4+PiAtwqDCoMKgIC8qIFRyYW5z
bGF0ZSBzaGFyZWQgZmVuY2VzIHRvIFJFQUQgc2V0IG9mIGVuZ2luZXMgKi8KPj4+IC3CoMKgwqAg
bGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KG9iai0+YmFzZS5yZXN2KTsKPj4+IC3CoMKgwqAg
aWYgKGxpc3QpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50
ID0gbGlzdC0+c2hhcmVkX2NvdW50LCBpOwo+Pj4gLQo+Pj4gLcKgwqDCoMKgwqDCoMKgIGZvciAo
aSA9IDA7IGkgPCBzaGFyZWRfY291bnQ7ICsraSkgewo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByY3VfZGVyZWZlcmVuY2UobGlzdC0+c2hhcmVkW2ldKTsKPj4+IC0KPj4+ICvCoMKg
wqAgYXJncy0+YnVzeSA9IGZhbHNlOwo+Pgo+PiBZb3UgY2FuIGRyb3AgdGhpcyBsaW5lLCBlc3Bl
Y2lhbGx5IHNpbmNlIGl0IGlzIG5vdCBhIGJvb2xlYW4uIFdpdGggdGhhdDoKPj4KPj4gUmV2aWV3
ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4KPiBIYXZp
bmcgc2FpZCB0aGlzLCBvbmUgdGhpbmcgdG8gYWRkIGluIHRoZSBjb21taXQgbWVzc2FnZSBpcyBz
b21lIAo+IGNvbW1lbnRhcnkgdGhhdCBhbHRob3VnaCBzaW1wbGVyIGluIGNvZGUsIHRoZSBuZXcg
aW1wbGVtZW50YXRpb24gaGFzIGEgCj4gbG90IG1vcmUgYXRvbWljIGluc3RydWN0aW9ucyBkdWUg
YWxsIHRoZSBleHRyYSBmZW5jZSBnZXQvcHV0Lgo+Cj4gU2F5aW5nIHRoaXMgYmVjYXVzZSBJIHJl
bWVtYmVyZWQgYnVzeSBpb2N0bCBpcyBxdWl0ZSBhbiBvdmVyLXBvcHVsYXIgCj4gb25lLiBUaGlu
a2luZyBhYm91dCB0cmFjZXMgZnJvbSBzb21lIHJlYWwgdXNlcnNwYWNlcyBJIGxvb2tlZCBhdCBp
biAKPiB0aGUgcGFzdC4KPgo+IFNvIEkgdGhpbmsgYWNrIGZyb20gbWFpbnRhaW5lcnMgd2lsbCBi
ZSByZXF1aXJlZCBoZXJlLiBCZWNhdXNlIEkganVzdCAKPiBkb24ndCBrbm93IGlmIGFueSBwZXJm
b3JtYW5jZSBpbXBhY3Qgd2lsbCBiZSB2aXNpYmxlIG9yIG5vdC4gU28gdmlldyAKPiBteSByLWIg
YXMgImNvZGUgbG9va3MgZmluZSIgYnV0IEkgYW0gb24gdGhlIGZlbmNlIGlmIGl0IHNob3VsZCAK
PiBhY3R1YWxseSBiZSBtZXJnZWQuIFByb2JhYmx5IGxlYW5pbmcgdG93YXJkcyBubyBhY3R1YWxs
eSAtIGdpdmVuIGhvdyAKPiB0aGUgY29kZSBpcyBsb2NhbGlzZWQgaGVyZSBhbmQgSSBkaXNsaWtl
IGJ1cmRlbmluZyBvbGQgcGxhdGZvcm1zIHdpdGggCj4gbW9yZSBDUFUgdGltZSBpdCBjb3VsZCBi
ZSBjaGVhcGx5IGxlZnQgYXMgaXMuCgpXZWxsIHByZXZpb3VzbHkgd2Ugd291bGQgaGF2ZSBhbGxv
Y2F0ZWQgbWVtb3J5LCB3aGljaCBhcyBmYXIgYXMgSSBrbm93IApoYXMgbW9yZSBvdmVyaGVhZCB0
aGFuIGEgZmV3IGV4dHJhIGF0b21pYyBvcGVyYXRpb25zLgoKT24gdGhlIG90aGVyIGhhbmQgSSBj
b3VsZCBhcyB3ZWxsIHN0aWNrIHdpdGggZG1hX3Jlc3ZfZ2V0X2ZlbmNlcygpIGhlcmUuCgpSZWdh
cmRzLApDaHJpc3RpYW4uCgo+Cj4gUmVnYXJkcywKPgo+IFR2cnRrbwo+Cj4KPj4KPj4gUmVnYXJk
cywKPj4KPj4gVHZydGtvCj4+Cj4+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNv
ciwgb2JqLT5iYXNlLnJlc3YsIHRydWUpOwo+Pj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9m
ZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChk
bWFfcmVzdl9pdGVyX2lzX3Jlc3RhcnRlZCgmY3Vyc29yKSkKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGFyZ3MtPmJ1c3kgPSAwOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkbWFf
cmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29yKSkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC8qIFRyYW5zbGF0ZSB0aGUgZXhjbHVzaXZlIGZlbmNlIHRvIHRoZSBSRUFEICphbmQqIAo+
Pj4gV1JJVEUgZW5naW5lICovCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdzLT5idXN5
IHw9IGJ1c3lfY2hlY2tfd3JpdGVyKGZlbmNlKTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlCj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBUcmFuc2xhdGUgc2hhcmVkIGZlbmNlcyB0byBS
RUFEIHNldCBvZiBlbmdpbmVzICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcmdz
LT5idXN5IHw9IGJ1c3lfY2hlY2tfcmVhZGVyKGZlbmNlKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCB9
Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IC0KPj4+IC3CoMKgwqAgaWYgKGFyZ3MtPmJ1c3kgJiYgcmVh
ZF9zZXFjb3VudF9yZXRyeSgmb2JqLT5iYXNlLnJlc3YtPnNlcSwgc2VxKSkKPj4+IC3CoMKgwqDC
oMKgwqDCoCBnb3RvIHJldHJ5Owo+Pj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29y
KTsKPj4+IMKgwqDCoMKgwqAgZXJyID0gMDsKPj4+IMKgIG91dDoKPj4+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

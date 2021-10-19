Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B39CE433660
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 14:54:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06FFA605F9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 12:54:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9BCBA60861; Tue, 19 Oct 2021 12:54:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 464F26057D;
	Tue, 19 Oct 2021 12:54:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4216560537
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 12:54:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2F5456057D; Tue, 19 Oct 2021 12:54:09 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id 1C98660537
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 12:54:07 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id v17so47501151wrv.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 05:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=1mvclZulp1jBGRqznG/b0fXQ3yElAWRCQ+ub5281RqY=;
 b=DyFXLhO2hfmcRk4ZOfWcW28zmBfrAPLobYErFlCLG06QAX5ZvNHr/DLxehkTJHu3Jn
 q6NJzPBjIU+CRVyMxKVSbh06aqUkoILHEHA3acN5Wt2YGTz239ZBwtiu6UQMhZE5w6mB
 W/MhXuMU9VOMyTno6gEmYX9r12vkA2fDq6cIlsbChKyf5g2SoWcjwRPkoZnYaCFjw2t9
 m+upfRu68oogpgtE7B0HpUbSds1XYQYJ0qOmXlOubz5sFz2GITTdbL+/g2DH7c6bGF7z
 GK5ctOSWxAH/t3jJiiHJOlG0SsCDj5B5K/BBS0spkO7TT5DwMxNI6zGDXcI58ILa55i8
 HdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=1mvclZulp1jBGRqznG/b0fXQ3yElAWRCQ+ub5281RqY=;
 b=SxPNVHbZsWDbb/NDb6XhQfvNSb3mwTJs+OodDKfIPS8iIDPsHQdVIjXliIUQ12LlCP
 eAYQLu1Lbd1DCSxFyTFR8pzOKsoXC3FfOux5iwhKNTsJ64owXK2mB3K4bmy5+WyvydpS
 wFN4WIhSc17qzIJio6BKo+21nfrNr2VZM8ooaKD0y8LAK63Q1izFJstfcCSOtJ0A0TFo
 k93nsEUvBhIVzRm0rdFK6HJakJHP+JksCxLNslgsz1s6kcG66AJFJCL6PC9+jzy5vth+
 GiEOW2iSGFSjh1/5nWuSQKxvcd6GWQ5RU7b51TrdrfQi4PkbfaFtcVJMxLUoDlFC3szm
 eqnA==
X-Gm-Message-State: AOAM5334pCX0anRx69CxcgJcyySUur1HwzxQIZSsXFZCDZByQAy10BTC
 d5uKqqiqUK7n3FlTyDJnB2c=
X-Google-Smtp-Source: ABdhPJznqWw6536w7KHmaGxJprPY+w8hHoqj2Re1K7qIk8KLaWxB9z9oathPltY4TElg2E6VG/42Uw==
X-Received: by 2002:a5d:6245:: with SMTP id m5mr44059656wrv.148.1634648046127; 
 Tue, 19 Oct 2021 05:54:06 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:f344:748e:38f7:c50?
 ([2a02:908:1252:fb60:f344:748e:38f7:c50])
 by smtp.gmail.com with ESMTPSA id k10sm15045970wrh.64.2021.10.19.05.54.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 05:54:05 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-24-christian.koenig@amd.com>
 <YWbrb7xQfTWU15U1@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <71bf3523-7c18-dac7-de53-f7b20e737cc3@gmail.com>
Date: Tue, 19 Oct 2021 14:54:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YWbrb7xQfTWU15U1@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 23/28] drm: use new iterator in
 drm_gem_fence_array_add_implicit v3
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
Cc: linaro-mm-sig@lists.linaro.org, tvrtko.ursulin@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMTAuMjEgdW0gMTY6MjEgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDA1LCAyMDIxIGF0IDAxOjM3OjM3UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFNpbXBsaWZ5aW5nIHRoZSBjb2RlIGEgYml0Lgo+Pgo+PiB2MjogYWRkIG1pc3NpbmcgcmN1X3Jl
YWRfbG9jaygpL3VubG9jaygpCj4+IHYzOiBzd2l0Y2ggdG8gbG9ja2VkIHZlcnNpb24KPj4KPj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pgo+PiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiBQbGVhc2UgbWFrZSBzdXJlIHlvdSBhbHNvIGFwcGx5IHRoaXMgdG8gdGhlIG5ldyBjb3B5
IG9mIHRoaXMgY29kZSBpbgo+IGRybS9zY2hlZC4gVGhpcyBvbmUgaGVyZSBpcyB1cCBmb3IgZGVs
ZXRpb24sIG9uY2UgSSBnZXQgYWxsIHRoZSBkcml2ZXIKPiBjb252ZXJzaW9ucyBJIGhhdmUgbGFu
ZGVkIC4uLgoKWWVhaCwgSSBkbyBoYXZlIHRoYXQuIE9ubHkgYWRkZWQgdGhpcyBwYXRjaCBoZXJl
IGZvciBjb21wbGV0ZW5lc3Mgc28gCnRoYXQgSSBjb3VsZCBhdCBsZWFzdCBjb25zaWRlciBkcm9w
cGluZyB0aGUgb2xkIGFjY2VzcyBmdW5jdGlvbnMuCgpQdXQgSSB3aWxsIGhvbGQgaXQgYmFjaywg
anVzdCBwaW5nIG1lIHdoZW4gdGhlIGNvZGUgaW4gcXVlc3Rpb24gaXMgcmVtb3ZlZC4KCkNocmlz
dGlhbi4KCj4gLURhbmllbAo+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMg
fCAyNiArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPj4gaW5kZXggMDlj
ODIwMDQ1ODU5Li40ZGNkZWM2NDg3YmIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYwo+PiBAQCAtMTM0MCwz
MSArMTM0MCwxNSBAQCBpbnQgZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQoc3RydWN0
IHhhcnJheSAqZmVuY2VfYXJyYXksCj4+ICAgCQkJCSAgICAgc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmosCj4+ICAgCQkJCSAgICAgYm9vbCB3cml0ZSkKPj4gICB7Cj4+IC0JaW50IHJldDsKPj4g
LQlzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2VzOwo+PiAtCXVuc2lnbmVkIGludCBpLCBmZW5jZV9j
b3VudDsKPj4gLQo+PiAtCWlmICghd3JpdGUpIHsKPj4gLQkJc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UgPQo+PiAtCQkJZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQob2JqLT5yZXN2KTsKPj4gLQo+
PiAtCQlyZXR1cm4gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoZmVuY2VfYXJyYXksIGZlbmNlKTsK
Pj4gLQl9Cj4+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+PiArCXN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlOwo+PiArCWludCByZXQgPSAwOwo+PiAgIAo+PiAtCXJldCA9IGRtYV9yZXN2
X2dldF9mZW5jZXMob2JqLT5yZXN2LCBOVUxMLAo+PiAtCQkJCQkJJmZlbmNlX2NvdW50LCAmZmVu
Y2VzKTsKPj4gLQlpZiAocmV0IHx8ICFmZW5jZV9jb3VudCkKPj4gLQkJcmV0dXJuIHJldDsKPj4g
LQo+PiAtCWZvciAoaSA9IDA7IGkgPCBmZW5jZV9jb3VudDsgaSsrKSB7Cj4+IC0JCXJldCA9IGRy
bV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBmZW5jZXNbaV0pOwo+PiArCWRtYV9y
ZXN2X2Zvcl9lYWNoX2ZlbmNlKCZjdXJzb3IsIG9iai0+cmVzdiwgd3JpdGUsIGZlbmNlKSB7Cj4+
ICsJCXJldCA9IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBmZW5jZSk7Cj4+
ICAgCQlpZiAocmV0KQo+PiAgIAkJCWJyZWFrOwo+PiAgIAl9Cj4+IC0KPj4gLQlmb3IgKDsgaSA8
IGZlbmNlX2NvdW50OyBpKyspCj4+IC0JCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2ldKTsKPj4gLQlr
ZnJlZShmZW5jZXMpOwo+PiAgIAlyZXR1cm4gcmV0Owo+PiAgIH0KPj4gICBFWFBPUlRfU1lNQk9M
KGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KTsKPj4gLS0gCj4+IDIuMjUuMQo+PgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

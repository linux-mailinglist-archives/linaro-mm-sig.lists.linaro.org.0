Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C65FA4224F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 13:23:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 544CA608CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 11:23:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2D2296055A; Tue,  5 Oct 2021 11:23:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 929696048D;
	Tue,  5 Oct 2021 11:23:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D1E94600A0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:23:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CF9806048D; Tue,  5 Oct 2021 11:23:25 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id C7457600A0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 11:23:23 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id e12so16437553wra.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 04:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=PWa0G8LLCncqq6J/n1Fr1FpsEkDA9qNPpQve05GZfrg=;
 b=it6T8Kfbu+jcw1C0phj7AmEpqUFOh80NXnr2KQSpgiDFK0qmn6hZM+4nAns7XPmzQL
 K0oWanDcdFZnHca9SMYuVOR61ZWh+l3HvmSo9prGIPTtR+SjPfWsVM4vBMhRBIU2Pbg1
 1um2Ei4G7oUIvu7mAiqQbkQhho0sYEIlFD7L3rMrBj7M5fnvrXuONKRlVOgoGBJKZzRn
 8O2IgiMHqddCsJn65fJjhO+zZUrfT8np2ZyVBUCW4dcpa6BBWLqWzI9E32+M1SdZMhsv
 xtsLjdC+DeBH3UkISfOIaxqTL55G2J9/PJmZS4NLmy42xfnJfilHzRxTvNhKu2J6heVf
 z8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=PWa0G8LLCncqq6J/n1Fr1FpsEkDA9qNPpQve05GZfrg=;
 b=hZRTlkxnnJHg9Vf/60zcKSiWxtFJS0/AT55Su6iBdwciD13G39XfZZGDVOQnu0LMrX
 VH/IPDbX8pdifwa1PJNE9g0SdOd7Ob0o/pWH26ndXYy1UVOZOnQibSB7fL31KgTgJpFQ
 06b6Z8dNc1OxHJsMo45MjPjN8NabIDKjiNecNorKXeHymng12RkGhN0nW+3+yVTPCakQ
 iJvGYTUr8Tgy2oWViUtElJv3wq8sZymqMl4ozEl37HW6JWqC4luMj6wp7rZPO6PrxzHF
 py317yBxM9aaa2mLuEkN+bSBCQepyJiWGnF4Db59AJPig6I9WfHDwXXqUdg/9Ibcj+FE
 El6Q==
X-Gm-Message-State: AOAM533oDrUAnJx6JAUFTnaKw0hbmJuUMJZxv73usu8keZM3+tmreSHt
 UKg5l6VXqXyK5drRtH5pLEA=
X-Google-Smtp-Source: ABdhPJzpxkpSlwzjrOFU/Ealgx1O7BSn1yO1wib6cKwvh5qjPa7VG/r5qzlgeOdH4OFek4yLJ2Cdrg==
X-Received: by 2002:adf:959a:: with SMTP id p26mr853129wrp.342.1633433002913; 
 Tue, 05 Oct 2021 04:23:22 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id g2sm17256112wrq.62.2021.10.05.04.23.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Oct 2021 04:23:22 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-25-christian.koenig@amd.com>
 <80bb132f-0e40-68a1-d034-2d4b17d321ad@linux.intel.com>
 <4e94e263-fd20-4779-690a-b530c220b350@gmail.com>
 <32d9b655-0b18-417a-eefc-cc1dc41fb554@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <71441139-707b-f47d-4edb-444ac665f6a6@gmail.com>
Date: Tue, 5 Oct 2021 13:23:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <32d9b655-0b18-417a-eefc-cc1dc41fb554@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb
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

QW0gMDUuMTAuMjEgdW0gMTI6NDcgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDA1LzEw
LzIwMjEgMTE6MjcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFtIDA1LjEwLjIxIHVtIDA5
OjUzIHNjaHJpZWIgVHZydGtvIFVyc3VsaW46Cj4+Pgo+Pj4gT24gMDEvMTAvMjAyMSAxMTowNiwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+PiBNYWtlcyB0aGUgaGFuZGxpbmcgYSBiaXQgbW9y
ZSBjb21wbGV4LCBidXQgYXZvaWRzIHRoZSB1c2Ugb2YKPj4+PiBkbWFfcmVzdl9nZXRfZXhjbF91
bmxvY2tlZCgpLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2F0b21pY19oZWxwZXIuYyB8IDEzICsrKysrKysrKysrLS0KPj4+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgCj4+Pj4gYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMKPj4+PiBpbmRleCBlNTcwMzk4
YWJkNzguLjIxZWQ5MzAwNDJiOCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbV9hdG9taWNfaGVscGVyLmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9h
dG9taWNfaGVscGVyLmMKPj4+PiBAQCAtMTQzLDYgKzE0Myw3IEBACj4+Pj4gwqDCoCAqLwo+Pj4+
IMKgIGludCBkcm1fZ2VtX3BsYW5lX2hlbHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUg
KnBsYW5lLCAKPj4+PiBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkKPj4+PiDCoCB7Cj4+
Pj4gK8KgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7Cj4+Pj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iajsKPj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOwo+Pj4+IMKgIEBAIC0xNTAsOSArMTUxLDE3IEBAIGludCBkcm1fZ2VtX3BsYW5l
X2hlbHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCAKPj4+PiBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3Qg
ZHJtX3BsYW5lX3N0Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4+IMKgIMKg
wqDCoMKgwqAgb2JqID0gZHJtX2dlbV9mYl9nZXRfb2JqKHN0YXRlLT5mYiwgMCk7Cj4+Pj4gLcKg
wqDCoCBmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+cmVzdik7Cj4+Pj4g
LcKgwqDCoCBkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsKPj4+
PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5yZXN2LCBmYWxzZSk7
Cj4+Pj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBm
ZW5jZSkgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKPj4+PiAr
wqDCoMKgwqDCoMKgwqAgZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIC8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZSBmZW5jZSBoZXJlICov
Cj4+Pgo+Pj4gV2hhdCBpcyB0aGUgVE9ETz8gTkIgaW5zdGVhZD8KPj4KPj4gVGhlIGRybSBhdG9t
aWMgQVBJIGNhbiB1bmZvcnR1bmF0ZWx5IGhhbmRsZSBvbmx5IG9uZSBmZW5jZSBhbmQgd2UgY2Fu
IAo+PiBjZXJ0YWlubHkgaGF2ZSBtb3JlIHRoYW4gdGhhdC4KPj4KPj4+Cj4+Pj4gKyBkcm1fYXRv
bWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsKPj4+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIDA7Cj4+Pj4gK8KgwqDCoCB9Cj4+Pj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2Vu
ZCgmY3Vyc29yKTsKPj4+PiDCoCArwqDCoMKgIGRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFu
ZShzdGF0ZSwgTlVMTCk7Cj4+Pgo+Pj4gwqDCoMKgwqBkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJz
b3IsIG9iai0+cmVzdiwgZmFsc2UpOwo+Pj4gwqDCoMKgwqBkbWFfcmVzdl9mb3JfZWFjaF9mZW5j
ZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+Pj4gwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNl
X2dldChmZW5jZSk7Cj4+PiDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+IMKgwqDCoMKgfQo+Pj4g
wqDCoMKgwqBkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPj4+Cj4+PiDCoMKgwqDCoGRybV9h
dG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOwo+Pj4KPj4+IERvZXMgdGhp
cyB3b3JrPwo+Pgo+PiBZZWFoIHRoYXQgc2hvdWxkIHdvcmsgYXMgd2VsbC4KPj4KPj4+Cj4+PiBC
dXQgb3ZlcmFsbCBJIGFtIG5vdCBzdXJlIHRoaXMgaXMgbmljZXIuIElzIHRoZSBnb2FsIHRvIHJl
bW92ZSAKPj4+IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkIGFzIEFQSSBpdCBqdXN0IGRvZXMg
bm90IGhhcHBlbiBpbiB0aGlzIAo+Pj4gc2VyaWVzPwo+Pgo+PiBZZXMsIHRoZSBvbmx5IHVzZXIg
bGVmdCBpcyB0aGUgaTkxNV9nZW1fb2JqZWN0X2xhc3Rfd3JpdGVfZW5naW5lKCkgCj4+IGZ1bmN0
aW9uIGFuZCB0aGF0IG9uZSB5b3UgYWxyZWFkeSByZW1vdmVkIGluIGk5MTUuCj4KPiBUbyBtZSB0
aGUgYWJvdmUgZmVlbHMgY2x1bXNpZXIgdGhhbiBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCBh
bmQgeW91IAo+IGNhbiBldmVuIHZpZXcgaXQgYXMgb3BlbiBjb2RpbmcgdGhhdCBoZWxwZXIuIFNv
IGRvbid0IGtub3csIHNvbWVvbmUgCj4gZWxzZSBjYW4gaGF2ZSBhIGNhc3Rpbmcgdm90ZS4KPgo+
IEkgZ3Vlc3MgaWYgc3VwcG9ydCBmb3IgbW9yZSB0aGFuIG9uZSBmZW5jZSBpcyBjb21pbmcgc29v
bigtaXNoKSBkbyBkcm0gCj4gYXRvbWljIGFwaSB0aGVuIEkgY291bGQgYmUgY29udmluY2VkIHRo
ZSBpdGVyYXRvciBoZXJlIG1ha2VzIHNlbnNlIHRvZGF5LgoKV2VsbCBEYW5pZWwgbm90ZWQgdGhh
dCB0aGUgZHJtIGF0b21pYyBBUEkgbmVlZHMgc29tZSBtb3JlIHdvcmsgaGVyZSAKYmVjYXVzZSB3
ZSBkb24ndCBoYW5kbGUgZGlmZmVyZW50IGZlbmNlcyBmb3IgZGlmZmVyZW50IHBsYW5lcyBjb3Jy
ZWN0bHkgCmVpdGhlci4KCldlIGNvdWxkIGFzIHdlbGwgcG9zdHBvbmUgdGhpcyBjaGFuZ2UgYW5k
IGZpeCB0aGUgYXRvbWljIGZ1bmN0aW9ucyBmaXJzdC4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4K
PiBSZWdhcmRzLAo+Cj4gVHZydGtvCj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4K
Pj4+IFJlZ2FyZHMsCj4+Pgo+Pj4gVHZydGtvCj4+Pgo+Pj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7
Cj4+Pj4gwqAgfQo+Pj4+IMKgIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fcGxhbmVfaGVscGVy
X3ByZXBhcmVfZmIpOwo+Pj4+Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=

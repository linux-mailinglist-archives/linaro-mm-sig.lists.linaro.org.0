Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655E40ABDC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 12:39:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B48F561ECD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Sep 2021 10:39:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9487062166; Tue, 14 Sep 2021 10:39:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF96261A44;
	Tue, 14 Sep 2021 10:39:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3508B6194E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 10:39:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 256F361A44; Tue, 14 Sep 2021 10:39:51 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 1ACB66194E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 10:39:49 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id u15so13349343wru.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Sep 2021 03:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=gaNlTnM22ZgHEti35wvdLQPE6D1YFYS28Y/vm+DUkXQ=;
 b=QqCodjx6Wt7rxplRHp69uRmXcsDdQIGAGXcqU7jaZmKSst71F7O6SY/HtIw2IqE0eL
 g+0Rcnv2rUXqR6bHLdcqSBncLyp5GUhGDRpDeCfr+zzAukioMLm19ML6stXZdOeMF80h
 4AphPhTzQGEi0CFjsXV7fR9xgufdoErodhL4ZuTQqT/lfY19Eel+bLv1+mw8m8IPQq2B
 XAsWcQ0sa3tT3faKlSsfVtXuX/62FouHm6nZPGiyjv0bUU1nRH/2uJHpZXRUXyOCXIMd
 07AgaZSgPv3FSdz+kA2iRlQ1/5VZ0rbm4dibUdqOTkW7zj5FeIP3Wm5NoD7TEif+93Rp
 cDfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gaNlTnM22ZgHEti35wvdLQPE6D1YFYS28Y/vm+DUkXQ=;
 b=px1RoE/rq+309MjHtrqrJgHcVYwZ5Y42D1LnlCmVNMN0m5LF5VYAnNH4GC9KWY64uv
 hP2sLCXdBwlTwtzoAQiXwlBYRFZwvNG0An1x2JW0gUj9lTS/JK2gL5l8bgKqHODPYIEj
 pxR8lmdgJlyQcEIFH9FIzK/346QUk1JKFGkmug0uAx7qjPNm5HPBN6rY2GV8d2spk6Ti
 DwvS+3mmZunHbBJD9I+1J4bn0fTWgkWruHbKLlLYQVfLwdnGqkRSGy/bKpohGqXQQvF8
 0cgtFOHyjw6ssGfZFgur5ozFUpIe09sGgyHsNwIPd+A+kyMy3W3Qibt24GanDckjv/aE
 q4cg==
X-Gm-Message-State: AOAM531omGUMezImggXla7GItMULGoJrsyWX/WWKwDW+uWLv3GI57Fa6
 rou8Rb8sMVmg5GfZhRjLPzM=
X-Google-Smtp-Source: ABdhPJzE0BLcszS++MT/qDVFC7rZ2jvXTXxN6JrKYzMXzPaWIgUtfMSNN5JQc9KRPYzbpk2FJTUZrg==
X-Received: by 2002:adf:f011:: with SMTP id j17mr10547094wro.320.1631615987999; 
 Tue, 14 Sep 2021 03:39:47 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id 129sm750642wmz.26.2021.09.14.03.39.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Sep 2021 03:39:47 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20210913131707.45639-1-christian.koenig@amd.com>
 <20210913131707.45639-16-christian.koenig@amd.com>
 <f9ebc539-3965-b57f-7040-78aaba72afbd@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <698f042e-4fc5-2944-8d77-b89352034fcf@gmail.com>
Date: Tue, 14 Sep 2021 12:39:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <f9ebc539-3965-b57f-7040-78aaba72afbd@linux.intel.com>
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

QW0gMTQuMDkuMjEgdW0gMTI6MjYgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDEzLzA5
LzIwMjEgMTQ6MTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFNpbXBsaWZ5aW5nIHRoZSBj
b2RlIGEgYml0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYyB8IDM2ICsrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgCj4+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPj4gaW5kZXggMzdhZWYxMzA4NTczLi5iODEwNDVj
ZWI2MTkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4+IEBAIC0xNTgz
LDM4ICsxNTgzLDE2IEBAIGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3Qoc3RydWN0IGk5MTVfcmVx
dWVzdCAKPj4gKnRvLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGJvb2wgd3JpdGUpCj4+IMKgIHsKPj4gLcKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOwo+
PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVzdl9jdXJzb3IgY3Vyc29yOwo+PiArwqDCoMKgIHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlOwo+PiDCoMKgwqDCoMKgIGludCByZXQgPSAwOwo+PiDCoCAtwqDC
oMKgIGlmICh3cml0ZSkgewo+PiAtwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqKnNo
YXJlZDsKPj4gLcKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBjb3VudCwgaTsKPj4gLQo+PiAt
wqDCoMKgwqDCoMKgwqAgcmV0ID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhvYmotPmJhc2UucmVzdiwg
JmV4Y2wsICZjb3VudCwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAmc2hhcmVkKTsKPj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgIGZvciAoaSA9
IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IGk5
MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UodG8sIHNoYXJlZFtpXSk7Cj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YnJlYWs7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChzaGFy
ZWRbaV0pOwo+PiArwqDCoMKgIGRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKG9iai0+
YmFzZS5yZXN2LCAmY3Vyc29yLCB3cml0ZSwgCj4+IGZlbmNlKSB7Cj4KPiBJIHRoaW5rIGNhbGxl
cnMgaGF2ZSB0aGUgb2JqZWN0IGxvY2tlZCBmb3IgdGhpcyBvbmUuIEF0IGxlYXN0IGlmIHlvdSAK
PiBoYXZlbid0IHRyaWVkIGl0IGl0J3Mgd29ydGggYXNraW5nIENJICh5b3UgaGF2ZSB0aGUgYXNz
ZXJ0IGFscmVhZHkgc28gCj4gaXQgd2lsbCB0ZWxsIHlvdSkuIEJ1dCBJIHRoaW5rIGl0J3MgaW1w
b3J0YW50IHRvIGhhdmUgYW4gYXRvbWljIAo+IHNuYXBzaG90IGhlcmUuCgpUaGFua3MgZm9yIHRo
ZSBpbmZvLiBJbiB0aGlzIGNhc2UgSSdtIGp1c3QgZ29pbmcgdG8gdXNlIHRoZSBsb2NrZWQgCnZh
cmlhbnQgb2YgdGhlIGl0ZXJhdG9yIGhlcmUgZm9yIHRoZSBuZXh0IHJvdW5kLgoKQ291bGQgeW91
IHBvaW50IG1lIHRvIHRoZSBwbGFjZSB3aGVyZSB0aGUgbG9jayBpcyBncmFiZWQvcmVsZWFzZWQg
Zm9yIApyZWZlcmVuY2U/CgpUaGFua3MsCkNocmlzdGlhbi4KCj4KPiBSZWdhcmRzLAo+Cj4gVHZy
dGtvCj4KPj4gK8KgwqDCoMKgwqDCoMKgIHJldCA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVu
Y2UodG8sIGZlbmNlKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChyZXQpIHsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGJyZWFrOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiAtCj4+IC3CoMKgwqDCoMKg
wqDCoCBmb3IgKDsgaSA8IGNvdW50OyBpKyspCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRt
YV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPj4gLcKgwqDCoMKgwqDCoMKgIGtmcmVlKHNoYXJlZCk7
Cj4+IC3CoMKgwqAgfSBlbHNlIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGV4Y2wgPSBkbWFfcmVzdl9n
ZXRfZXhjbF91bmxvY2tlZChvYmotPmJhc2UucmVzdik7Cj4+IC3CoMKgwqAgfQo+PiAtCj4+IC3C
oMKgwqAgaWYgKGV4Y2wpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQgPT0gMCkKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZSh0
bywgZXhjbCk7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoZXhjbCk7Cj4+
IMKgwqDCoMKgwqAgfQo+PiDCoCDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

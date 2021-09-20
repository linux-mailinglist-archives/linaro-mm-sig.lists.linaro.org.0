Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C362411009
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 09:28:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E50166C00
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 07:28:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BC2E261ECD; Mon, 20 Sep 2021 07:28:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 650F661031;
	Mon, 20 Sep 2021 07:28:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3DE4860C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:28:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3409461031; Mon, 20 Sep 2021 07:28:01 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 2AA4960C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:27:59 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id i23so27135979wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 00:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=3s+mLpiRNCJYVEujeswb8RxNLmtFvm6a93yZ083O6NE=;
 b=X2LOvuqyL9eUAk8+RDIklG1gB3KEwUdi9/trIZD/8C/prspFLwsoi/Tt+tga7y4sfJ
 AVatYRbcXSOpAaFzSdjMCAZ2fKGqOO2iiYBRHMA2zodAyYNMZsLEenGo26YAXXgdRlO6
 uLZY/MEI0HfDJVT43WS+RE+Q3kxyobutPvLfNnli1jUqk0I718bAeGc3yu9f6axTawai
 P9SIEymKOuPwmAki54mMsUmE8ZYSq4LFQQhvGLUQ/ueNnZosQsQ4vBD6KVtKE7feQLR3
 S9WbfXcN9BYeJpFX++E81Stfv5x/FlIiMf+M2ZW97Lp9Aizu8mMKLOOdhc+nyJwWsnBi
 f6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=3s+mLpiRNCJYVEujeswb8RxNLmtFvm6a93yZ083O6NE=;
 b=S9SHEbXL4SFW/v2zt0UnrstVh93rpOg0P3R+TWZ8w+SQiej6kMxqH1k3+N4BKel4Dq
 VRcfFW+S0h1oodsgpnD2pwIO63FSkHuic2L6LOurkZ+bPnOSG2U9I2E8ZuTkRi3OyUcQ
 HlnF7aARINKB5nyAaf5wQBidBtMAhTDe3aHdlDbzJ0gNPk+oEqfhTKuZjc0Wl0Jp7os0
 AIbFX6RArqHvvmaD41tKU0GhuT3Mnzxk5H3HkEZkbPndimoNkWjENucAmudzas1yLaCn
 klT+Myuv2EadrJRvI2xYztoaU3xgc6vnVKCbSzyqJiu8amRrmqXuH1cPVgZgvA4/V/MM
 u6lA==
X-Gm-Message-State: AOAM533683a4a7Al9iDdpmplFKrcSITyk4A6KGLpItKlN5zmy4F8thEn
 nbxa5SC+mvcyiDeR330BPVc=
X-Google-Smtp-Source: ABdhPJxl4+s3M6OS1t+2qT6dTE2cnalcjwoYWAzdNyFXuNPS3tro52dAtuU8+fbkMmlBnINC0/ksog==
X-Received: by 2002:a5d:6c69:: with SMTP id r9mr19476945wrz.78.1632122878192; 
 Mon, 20 Sep 2021 00:27:58 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id m4sm18764903wml.28.2021.09.20.00.27.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Sep 2021 00:27:57 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-6-christian.koenig@amd.com>
 <YUSpiHK7Dd1pF/Mq@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <143f7ba9-2629-cb1a-ba66-2d6e50bfc722@gmail.com>
Date: Mon, 20 Sep 2021 09:27:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YUSpiHK7Dd1pF/Mq@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 05/26] dma-buf: use new iterator in
 dma_resv_wait_timeout
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTcuMDkuMjEgdW0gMTY6NDMgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIEZyaSwgU2Vw
IDE3LCAyMDIxIGF0IDAyOjM0OjUyUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFRoaXMgbWFrZXMgdGhlIGZ1bmN0aW9uIG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+
PiByZXRyeSBsb2dpYyBpcyBub3cgaGFuZGxlZCBlbHNld2hlcmUuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4gLS0tCj4+
ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCA2OCArKysrKystLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA1
OCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPj4gaW5kZXggOWI5MGJkOWFjMDE4Li5j
N2RiNTUzYWIxMTUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4+IEBAIC01NjksNzQgKzU2OSwyNiBA
QCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3
YWl0X2FsbCwgYm9vbCBpbnRyLAo+PiAgIAkJCSAgIHVuc2lnbmVkIGxvbmcgdGltZW91dCkKPj4g
ICB7Cj4+ICAgCWxvbmcgcmV0ID0gdGltZW91dCA/IHRpbWVvdXQgOiAxOwo+PiAtCXVuc2lnbmVk
IGludCBzZXEsIHNoYXJlZF9jb3VudDsKPj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJzb3I7
Cj4+ICAgCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+PiAtCWludCBpOwo+PiAgIAo+PiAtcmV0
cnk6Cj4+IC0Jc2hhcmVkX2NvdW50ID0gMDsKPj4gLQlzZXEgPSByZWFkX3NlcWNvdW50X2JlZ2lu
KCZvYmotPnNlcSk7Cj4+ICAgCXJjdV9yZWFkX2xvY2soKTsKPiBJIG1pc3NlZCB0aGlzIGluIG15
IHByZXZpb3VzIGNvbnZlcnNpb24gcmV2aWV3cywgYnV0IHBscyBtb3ZlIHRoZQo+IHJjdV9yZWFk
X2xvY2sgaW50byB0aGUgaXRlcmF0b3IuIFRoYXQgc2hvdWxkIHNpbXBsaWZ5IHRoZSBmbG93IGlu
IGFsbCBvZgo+IHRoZXNlIHF1aXRlIGEgYml0IG1vcmUsIGFuZCBzaW5jZSB0aGUgaXRlcl9uZXh0
X3VubG9ja2VkIGdyYWJzIGEgZnVsbAo+IHJlZmVyZW5jZSBmb3IgdGhlIGl0ZXJhdGlvbiBib2R5
IHdlIHJlYWxseSBkb24ndCBuZWVkIHRoYXQgcHJvdGVjdGVkIGJ5Cj4gcmN1LgoKSSBpbnRlbnRp
b25hbGx5IGRpZG4ndCBkbyB0aGF0IGJlY2F1c2UgaXQgbWFrZXMgaXQgbXVjaCBtb3JlIGNsZWFy
IHRoYXQgCndlIGFyZSB1c2luZyBSQ1UgaGVyZSBhbmQgdGhlcmUgaXMgYWJzb2x1dGVseSBubyBn
dWFyYW50ZWUgdGhhdCB0aGUgCmNvbGxlY3Rpb24gd29uJ3QgY2hhbmdlLgoKQnV0IEknbSBmaW5l
IGlmIHdlIGdvIGRvd24gdGhhdCByb3V0ZSBpbnN0ZWFkIGlmIHlvdSB0aGluayB0aGF0J3MgdGhl
IAp3YXkgdG8gZ28uCgpUaGFua3MsCkNocmlzdGlhbi4KCj4KPiBXZSBjYW4ndCB0b3NzIHJjdSBw
cm90ZWN0aW9uIGZvciBkbWFfcmVzdiBhbnl0aW1lIHNvb24gKGlmIGV2ZXIpLCBidXQgd2UKPiBj
YW4gYXQgbGVhc3QgbWFrZSBpdCBhbiBpbXBsZW1lbnRhdGlvbiBkZXRhaWwuCj4KPj4gLQlpID0g
LTE7Cj4+IC0KPj4gLQlmZW5jZSA9IGRtYV9yZXN2X2V4Y2xfZmVuY2Uob2JqKTsKPj4gLQlpZiAo
ZmVuY2UgJiYgIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5m
bGFncykpIHsKPj4gLQkJaWYgKCFkbWFfZmVuY2VfZ2V0X3JjdShmZW5jZSkpCj4+IC0JCQlnb3Rv
IHVubG9ja19yZXRyeTsKPj4gKwlkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iaiwgd2Fp
dF9hbGwpOwo+PiArCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGZl
bmNlKSB7Cj4+ICsJCXJjdV9yZWFkX3VubG9jaygpOwo+PiAgIAo+PiAtCQlpZiAoZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKGZlbmNlKSkgewo+PiAtCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4+IC0J
CQlmZW5jZSA9IE5VTEw7Cj4+ICsJCXJldCA9IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2Us
IGludHIsIHJldCk7Cj4+ICsJCWlmIChyZXQgPD0gMCkgewo+PiArCQkJZG1hX3Jlc3ZfaXRlcl9l
bmQoJmN1cnNvcik7Cj4+ICsJCQlyZXR1cm4gcmV0Owo+PiAgIAkJfQo+PiAgIAo+PiAtCX0gZWxz
ZSB7Cj4+IC0JCWZlbmNlID0gTlVMTDsKPj4gLQl9Cj4+IC0KPj4gLQlpZiAod2FpdF9hbGwpIHsK
Pj4gLQkJc3RydWN0IGRtYV9yZXN2X2xpc3QgKmZvYmogPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChv
YmopOwo+PiAtCj4+IC0JCWlmIChmb2JqKQo+PiAtCQkJc2hhcmVkX2NvdW50ID0gZm9iai0+c2hh
cmVkX2NvdW50Owo+PiAtCj4+IC0JCWZvciAoaSA9IDA7ICFmZW5jZSAmJiBpIDwgc2hhcmVkX2Nv
dW50OyArK2kpIHsKPj4gLQkJCXN0cnVjdCBkbWFfZmVuY2UgKmxmZW5jZTsKPj4gLQo+PiAtCQkJ
bGZlbmNlID0gcmN1X2RlcmVmZXJlbmNlKGZvYmotPnNoYXJlZFtpXSk7Cj4+IC0JCQlpZiAodGVz
dF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULAo+PiAtCQkJCSAgICAgJmxmZW5jZS0+
ZmxhZ3MpKQo+PiAtCQkJCWNvbnRpbnVlOwo+PiAtCj4+IC0JCQlpZiAoIWRtYV9mZW5jZV9nZXRf
cmN1KGxmZW5jZSkpCj4+IC0JCQkJZ290byB1bmxvY2tfcmV0cnk7Cj4+IC0KPj4gLQkJCWlmIChk
bWFfZmVuY2VfaXNfc2lnbmFsZWQobGZlbmNlKSkgewo+PiAtCQkJCWRtYV9mZW5jZV9wdXQobGZl
bmNlKTsKPj4gLQkJCQljb250aW51ZTsKPj4gLQkJCX0KPj4gLQo+PiAtCQkJZmVuY2UgPSBsZmVu
Y2U7Cj4+IC0JCQlicmVhazsKPj4gLQkJfQo+PiArCQlyY3VfcmVhZF9sb2NrKCk7Cj4+ICAgCX0K
Pj4gLQo+PiArCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+PiAgIAlyY3VfcmVhZF91bmxv
Y2soKTsKPj4gLQlpZiAoZmVuY2UpIHsKPj4gLQkJaWYgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9i
ai0+c2VxLCBzZXEpKSB7Cj4+IC0JCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPj4gLQkJCWdvdG8g
cmV0cnk7Cj4+IC0JCX0KPj4gICAKPj4gLQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChm
ZW5jZSwgaW50ciwgcmV0KTsKPj4gLQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4+IC0JCWlmIChy
ZXQgPiAwICYmIHdhaXRfYWxsICYmIChpICsgMSA8IHNoYXJlZF9jb3VudCkpCj4+IC0JCQlnb3Rv
IHJldHJ5Owo+PiAtCX0KPj4gICAJcmV0dXJuIHJldDsKPj4gLQo+PiAtdW5sb2NrX3JldHJ5Ogo+
PiAtCXJjdV9yZWFkX3VubG9jaygpOwo+PiAtCWdvdG8gcmV0cnk7Cj4gSSB0aGluayB3ZSBzdGls
bCBoYXZlIHRoZSBzYW1lIHNlbWFudGljcywgYW5kIGl0J3Mgc28gbXVjaCB0aWRpZXIuCj4KPiBX
aXRoIHRoZSByY3VfcmVhZF91bmxvY2sgc3R1ZmYgaW50byBpdGVyYXRvcnMgKGFsc28gYXBwbGll
cyB0byBwcmV2aW91cwo+IHR3byBwYXRjaGVzKToKPgo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+Cj4+ICAgfQo+PiAgIEVYUE9SVF9TWU1CT0xf
R1BMKGRtYV9yZXN2X3dhaXRfdGltZW91dCk7Cj4+ICAgCj4+IC0tIAo+PiAyLjI1LjEKPj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D761345EB9E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 11:30:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B11F62421
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Nov 2021 10:30:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2B08C61F0D; Fri, 26 Nov 2021 10:30:29 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46D226195B;
	Fri, 26 Nov 2021 10:30:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7454960E5F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 10:30:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 704786195B; Fri, 26 Nov 2021 10:30:24 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 66C0960E5F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 10:30:22 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so6473603wmc.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Nov 2021 02:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=zTg0WacJr7kzwrsnQJsQDndFsSlk7FEd+90GUlUHgJI=;
 b=o6BgQc+l+C4RBDUwYZTioNATMY6ijtPxOhlL2eg6/yNMCiU6RhD6u2R4bMkx7dGIOJ
 M7Hi7pSKfDOppaNmI3xCaoQg+wN/d7k2Uaqz5rEFxykNt5tkzLvgR/iQszQaRxW+VUYn
 mkb5LJXmscDRFd10ZtW2Xmlygpt86CLq6Xac4qLHwhtiNw646RXheHzNmZGgxBC0tWBi
 wh1Plz8ot0Y4Oaf6YNkCZpz0jLHDvWcLiHpp5IHlOuNazGT6Urr3W8BNKSjAHq7O5l/E
 kPCD9h/UDZrYjsw9lk1EJGGVI681GwGDQbq0voKEzIG4EXVr2+JANPkGFXjYxnaP3F9c
 kLOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zTg0WacJr7kzwrsnQJsQDndFsSlk7FEd+90GUlUHgJI=;
 b=0LzQb44nUaXSIbQ6z9SvWRKM+xB7tdXI6eRtOGRC6hUv7iNNlFDb57iXbidKGU/q2X
 3Pmq7HJOfvYWK2N8CskGfwLfqVx8Bvgp+FdPMn8keaVsdP50rMqadeiqyW9LCuzhk363
 PeH7omeGgS9BccdGjyTZ5O7OpnG0R7CyAb9d6cLA0Khn7cg9TQHf+/XqVONCGDNXVRI+
 Yygpw/RBLdjw0xMeFTZ8Ez8mNEUy+aR5hzljDiIxhX1RdguttquCU2oK1sM3QtwWfJCp
 zs/M9VDI71ZoXGZaBhWDFSLPWSeqhTwGrA1f4BQWLFYea+CE5ENIXmOvSMRDrGfj7eaC
 CB4A==
X-Gm-Message-State: AOAM532tfJ6IUp0GO6a9+IHd2oN9rOEM4nZJPo5cOz/Uosk/Jql3nS5Z
 8m+5yAmY84YL8HF/KGD1umZ8gMfum20=
X-Google-Smtp-Source: ABdhPJzFenGp5brgkbj5MZQnP7FS6lJhdyGMVEwRhXdQZTcZJLb6MPZQPA33OW7GQm6nsgS0NHfbiA==
X-Received: by 2002:a05:600c:364f:: with SMTP id
 y15mr13749998wmq.7.1637922621452; 
 Fri, 26 Nov 2021 02:30:21 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:108:c3ea:37df:ad4c?
 ([2a02:908:1252:fb60:108:c3ea:37df:ad4c])
 by smtp.gmail.com with ESMTPSA id o10sm6549508wri.15.2021.11.26.02.30.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Nov 2021 02:30:20 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211123142111.3885-1-christian.koenig@amd.com>
 <20211123142111.3885-20-christian.koenig@amd.com>
 <YZ+wCxjFSI4EAIvx@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <0a3f93f1-278e-c393-3e79-745a52694f3d@gmail.com>
Date: Fri, 26 Nov 2021 11:30:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YZ+wCxjFSI4EAIvx@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 19/26] drm: support more than one write
 fence in drm_gem_plane_helper_prepare_fb
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjUuMTEuMjEgdW0gMTY6NDcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgTm92
IDIzLCAyMDIxIGF0IDAzOjIxOjA0UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFVzZSBkbWFfcmVzdl9nZXRfc2luZ2xldG9uKCkgaGVyZSB0byBldmVudHVhbGx5IGdldCBtb3Jl
IHRoYW4gb25lIHdyaXRlCj4+IGZlbmNlIGFzIHNpbmdsZSBmZW5jZS4KPiBZZWFoIHRoaXMgaXMg
bmljZSwgYXRvbWljIGNvbW1pdCBoZWxwZXJzIG5vdCBzdXBwb3J0aW5nIG11bHRpcGxlIHdyaXRl
Cj4gZmVuY2VzIHdhcyByZWFsbHkgbXkgbWFpbiB3b3JyeSBpbiB0aGlzIGVudGlyZSBlbmRlYXZv
dXIuIE90aGVyd2lzZSBsb29rcwo+IGFsbCByYXRoZXIgcmVhc29uYWJsZS4KPgo+IEknbGwgdHJ5
IHRvIGZpbmQgc29tZSByZXZpZXcgYmFuZHdpZHRoLCBidXQgd291bGQgYmUgcmVhbGx5IGlmIHlv
dSBjYW4KPiB2b2x1bnRlZXIgb3RoZXJzIHRvbyAoZXNwZWNpYWxseSBtYWtpbmcgc3VyZSB0dG0g
ZHJpdmVycyBzZXQgdGhlIEtFUk5FTAo+IGZlbmNlcyBjb3JyZWN0bHkgaW4gYWxsIGNhc2VzKS4K
Ck1heWJlIEkgc2hvdWxkIHNwbGl0IHRoYXQgdXAgaW50byBzd2l0Y2hpbmcgb3ZlciB0byBhZGRp
bmcgdGhlIGVudW0gYW5kIAp0aGVuIHN3aXRjaGluZyB0byBrZXJuZWwvYm9va2tlZXAocHJldmlv
dXNseSBvdGhlcikgZm9yIHNvbWUgdXNlIGNhc2VzLgoKSXQgd291bGQgYmUgZ29vZCBpZiBJIGNv
dWxkIGdldCBhbiByYiBvbiB0aGUgdHJpdmlhbCBkcml2ZXIgY2xlYW51cHMgCmZpcnN0LiBJIGNh
biBzZW5kIHRob3NlIG91dCBpbmRpdmlkdWFsbHkgaWYgdGhhdCBoZWxwcy4KClRoYW5rcywKQ2hy
aXN0aWFuLgoKPiAtRGFuaWVsCj4KPgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9k
cm1fZ2VtX2F0b21pY19oZWxwZXIuYyB8IDE4ICsrKysrKystLS0tLS0tLS0tLQo+PiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jCj4+IGluZGV4IGMzMTg5YWZlMTBjYi4uOTMz
OGRkYjdlZGZmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNf
aGVscGVyLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5j
Cj4+IEBAIC0xNDMsMjUgKzE0MywyMSBAQAo+PiAgICAqLwo+PiAgIGludCBkcm1fZ2VtX3BsYW5l
X2hlbHBlcl9wcmVwYXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3Bs
YW5lX3N0YXRlICpzdGF0ZSkKPj4gICB7Cj4+IC0Jc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29y
Owo+PiAgIAlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iajsKPj4gICAJc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2U7Cj4+ICsJaW50IHJldDsKPj4gICAKPj4gICAJaWYgKCFzdGF0ZS0+ZmIpCj4+ICAg
CQlyZXR1cm4gMDsKPj4gICAKPj4gICAJb2JqID0gZHJtX2dlbV9mYl9nZXRfb2JqKHN0YXRlLT5m
YiwgMCk7Cj4+IC0JZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBvYmotPnJlc3YsIGZhbHNl
KTsKPj4gLQlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkg
ewo+PiAtCQkvKiBUT0RPOiBDdXJyZW50bHkgdGhlcmUgc2hvdWxkIGJlIG9ubHkgb25lIHdyaXRl
IGZlbmNlLCBzbyB0aGlzCj4+IC0JCSAqIGhlcmUgd29ya3MgZmluZS4gQnV0IGRybV9hdG9taWNf
c2V0X2ZlbmNlX2Zvcl9wbGFuZSgpIHNob3VsZAo+PiAtCQkgKiBiZSBjaGFuZ2VkIHRvIGJlIGFi
bGUgdG8gaGFuZGxlIG1vcmUgZmVuY2VzIGluIGdlbmVyYWwgZm9yCj4+IC0JCSAqIG11bHRpcGxl
IEJPcyBwZXIgZmIgYW55d2F5LiAqLwo+PiAtCQlkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKPj4gLQkJ
YnJlYWs7Cj4+IC0JfQo+PiAtCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOwo+PiArCXJldCA9
IGRtYV9yZXN2X2dldF9zaW5nbGV0b24ob2JqLT5yZXN2LCBmYWxzZSwgJmZlbmNlKTsKPj4gKwlp
ZiAocmV0KQo+PiArCQlyZXR1cm4gcmV0Owo+PiAgIAo+PiArCS8qIFRPRE86IGRybV9hdG9taWNf
c2V0X2ZlbmNlX2Zvcl9wbGFuZSgpIHNob3VsZCBiZSBjaGFuZ2VkIHRvIGJlIGFibGUKPj4gKwkg
KiB0byBoYW5kbGUgbW9yZSBmZW5jZXMgaW4gZ2VuZXJhbCBmb3IgbXVsdGlwbGUgQk9zIHBlciBm
Yi4KPj4gKwkgKi8KPj4gICAJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRlLCBm
ZW5jZSk7Cj4+ICAgCXJldHVybiAwOwo+PiAgIH0KPj4gLS0gCj4+IDIuMjUuMQo+PgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

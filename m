Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D34141101A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 09:31:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFE296263A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 07:31:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BA83763213; Mon, 20 Sep 2021 07:31:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D7D561031;
	Mon, 20 Sep 2021 07:31:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A99C260C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:31:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A784661031; Mon, 20 Sep 2021 07:31:12 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id A1F6E60C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:31:10 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 196-20020a1c04cd000000b002fa489ffe1fso14768880wme.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 00:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=C+nvY/BAbTa7xL9nvPKJe3AuiPmfIWaUColu4UW3xMk=;
 b=OqISqpoYcxBujvtx67SbnL8TeOJWntq93m8yGSJ6KZnynG+H0m+xeFBQSlif5WL4qh
 XF7NuDJqOFkeK+rK5yq6EwJDSxRV3qHHN/h/cfndtwgqXCNhP0+GXqiPiNyvIjVI4jHp
 uKyps+vByGX2yGwVsHmtSG+zgKfYgo94OUt1e2AqugJnZzV76z9SitUrmT1JEiauO+r2
 gc3hHS0/dQ4ZQm0HKVdJNY03YC6rjVAl1M1zxMIsguatxqtO8tNCrIZnEQar7LINrTKb
 dX6MD/OxdGeHkrEgztYQKqsG3Sn0F8XBMG4c2H27Xu4rvpyW78TinhI2DqMxTX7HxiDH
 i8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=C+nvY/BAbTa7xL9nvPKJe3AuiPmfIWaUColu4UW3xMk=;
 b=jXu2fZyuenrCpSyLqg9T8JhVnp2SXKQzYBY7Wr/IsutbrONC+CewQz6jZgvQQkmjlH
 dYrreFCZ3Jk+0vSR7WcLrh/2ntiRlxQGsT1FpAkLJkEBOzTohVcEvHr157OijHXDnEff
 ywJrb6C/wNraQCXCqdDh08HVjUoPF4yOZ4f6T3KekDEkcGFG4/DaEdfC+cB9gk85LxDA
 ty7qfKmWKFNf7F5TjdH5fJX5Lg8vyF4IFZJwSBBezCyU6m3C9WarQDsmpy5WldewBm5Q
 I1xjv7PagKDUpkX/36bMAz2ufa3yTyAap2kfV8Bet229Ligm8/4EPoYUUkM5WllZaZFc
 r8fQ==
X-Gm-Message-State: AOAM530aW1FqXJSHLTJPGWSJLqO2RF3oFSFlglnaLNpVMWfKpo1/sMtE
 qszLP3XT1vBh3KwWhrt+Lf4=
X-Google-Smtp-Source: ABdhPJw/Ntw29LRKB7ZUkAUXnJ/6trbaxzAp6Mj1XsFXISe1P5uJ0g4pHAgvCS/BPgom+xqmNI6JzQ==
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr22858196wmj.33.1632123069769; 
 Mon, 20 Sep 2021 00:31:09 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id h18sm15204382wmq.23.2021.09.20.00.31.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Sep 2021 00:31:09 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-21-christian.koenig@amd.com>
 <YUSr7AN3vv6kpreo@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <0ed5793b-7b24-dede-cb89-deda082dde5b@gmail.com>
Date: Mon, 20 Sep 2021 09:31:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YUSr7AN3vv6kpreo@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 20/26] drm: use new iterator in
 drm_gem_fence_array_add_implicit v2
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

QW0gMTcuMDkuMjEgdW0gMTY6NTMgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIEZyaSwgU2Vw
IDE3LCAyMDIxIGF0IDAyOjM1OjA3UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFNpbXBsaWZ5aW5nIHRoZSBjb2RlIGEgYml0Lgo+Pgo+PiB2MjogYWRkIG1pc3NpbmcgcmN1X3Jl
YWRfbG9jaygpL3VubG9jaygpCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBUaGlzIHdpbGwgYmUgZ29uZSBhcyBzb29uIGFz
IEkgY2FuIGxhbmQgdGhlIGxhc3QgY29udmVyc2lvbiBwYXRjaGVzLiBQbHVzCj4gaXQncyBhbHdh
eXMgY2FsbGVkIHdpdGggZG1hX3Jlc3ZfbG9jayBoZWxkLgoKWWVhaCwgYWxyZWFkeSB0aG91Z2h0
IHNvIGFzIHdlbGwuIEkgd2lsbCBqdXN0IGtlZXAgdGhhdCBhcm91bmQgdG8gZ2V0IApyaWQgb2Yg
ZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQoKSBmb3Igbm93IHVudGlsIHlvdXIgcGF0Y2ggbGFu
ZHMuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gSSB3b3VsZG4ndCBib3RoZXIgdGJoLgo+IC1E
YW5pZWwKPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jIHwgMzQgKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCj4+IGluZGV4IDA5Yzgy
MDA0NTg1OS4uYzJjNDFiNjY4ZjQwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMKPj4gQEAgLTEzNDAsMzEg
KzEzNDAsMjEgQEAgaW50IGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkX2ltcGxpY2l0KHN0cnVjdCB4
YXJyYXkgKmZlbmNlX2FycmF5LAo+PiAgIAkJCQkgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqLAo+PiAgIAkJCQkgICAgIGJvb2wgd3JpdGUpCj4+ICAgewo+PiAtCWludCByZXQ7Cj4+IC0J
c3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlczsKPj4gLQl1bnNpZ25lZCBpbnQgaSwgZmVuY2VfY291
bnQ7Cj4+IC0KPj4gLQlpZiAoIXdyaXRlKSB7Cj4+IC0JCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
ID0KPj4gLQkJCWRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+cmVzdik7Cj4+IC0KPj4g
LQkJcmV0dXJuIGRybV9nZW1fZmVuY2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBmZW5jZSk7Cj4+
IC0JfQo+PiAtCj4+IC0JcmV0ID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhvYmotPnJlc3YsIE5VTEws
Cj4+IC0JCQkJCQkmZmVuY2VfY291bnQsICZmZW5jZXMpOwo+PiAtCWlmIChyZXQgfHwgIWZlbmNl
X2NvdW50KQo+PiAtCQlyZXR1cm4gcmV0Owo+PiAtCj4+IC0JZm9yIChpID0gMDsgaSA8IGZlbmNl
X2NvdW50OyBpKyspIHsKPj4gLQkJcmV0ID0gZHJtX2dlbV9mZW5jZV9hcnJheV9hZGQoZmVuY2Vf
YXJyYXksIGZlbmNlc1tpXSk7Cj4+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+PiAr
CXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+PiArCWludCByZXQgPSAwOwo+PiArCj4+ICsJcmN1
X3JlYWRfbG9jaygpOwo+PiArCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5yZXN2
LCB3cml0ZSk7Cj4+ICsJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwg
ZmVuY2UpIHsKPj4gKwkJcmN1X3JlYWRfdW5sb2NrKCk7Cj4+ICsJCXJldCA9IGRybV9nZW1fZmVu
Y2VfYXJyYXlfYWRkKGZlbmNlX2FycmF5LCBmZW5jZSk7Cj4+ICsJCXJjdV9yZWFkX2xvY2soKTsK
Pj4gICAJCWlmIChyZXQpCj4+ICAgCQkJYnJlYWs7Cj4+ICAgCX0KPj4gLQo+PiAtCWZvciAoOyBp
IDwgZmVuY2VfY291bnQ7IGkrKykKPj4gLQkJZG1hX2ZlbmNlX3B1dChmZW5jZXNbaV0pOwo+PiAt
CWtmcmVlKGZlbmNlcyk7Cj4+ICsJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+ICsJcmN1
X3JlYWRfdW5sb2NrKCk7Cj4+ICAgCXJldHVybiByZXQ7Cj4+ICAgfQo+PiAgIEVYUE9SVF9TWU1C
T0woZHJtX2dlbV9mZW5jZV9hcnJheV9hZGRfaW1wbGljaXQpOwo+PiAtLSAKPj4gMi4yNS4xCj4+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

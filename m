Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B63E2E74
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Aug 2021 18:42:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08665634D9
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Aug 2021 16:42:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D047C6314C; Fri,  6 Aug 2021 16:42:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23E1C62164;
	Fri,  6 Aug 2021 16:42:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 310D361F3E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Aug 2021 16:42:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 23F7862166; Fri,  6 Aug 2021 16:42:11 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by lists.linaro.org (Postfix) with ESMTPS id B17A161F3E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Aug 2021 16:42:08 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id o20so12840518oiw.12
 for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Aug 2021 09:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RXsFQjA5J3VoFkOU35LTnuTdg07iu7XW4ZQXApR/hBI=;
 b=eg22J4GI8h6H45jZIUwb28h5zTK5VqpyO4zHa9rvRn7Al4OWtVeOjt+WAk4mollIsk
 JtEkRV6P4YW1afIoPgp5nSdeujgOYRaRMQEuwHEbXkFqvadPGfHneFro3y9XxdDTsyvv
 AoT0VQK0I7oernqAuYiEz7M1s3PvMcHkmnt6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RXsFQjA5J3VoFkOU35LTnuTdg07iu7XW4ZQXApR/hBI=;
 b=RUOjOK89wIHjgC1aoha0UcWvPE6zbbT5mcVKihrKvKF4WVPFfmifciPFxtAQj02XjC
 PnBTp+U3wbiRj/1GLwLS6vMRU1oft/1OR1TK4iiOuB2Sm0oueK4M1gocVMXGiVuT8kFD
 2SaguUsyLTacqhxoWltswZmB4JDKu9CXCEbMrX25tvzR2v+AOB1VqJ4VOf3IuHknY2MJ
 WupZnbiJpwkZ0kFH2zvzrzPYvNvHt8HikY47UNt0nf9Wt2QnNwJakiznmrbKkTwgxcdB
 IsUh5hTfVV7MuYUwhSpWyR9Y/zP7fq4ifHr9rkpO6oowJYoXhCxji7YUKH9avibsGyfV
 Gp6Q==
X-Gm-Message-State: AOAM530bEooUJwY1j6u1uq+YYa0TFGdDnJNgsBJb/iV6UnPq6vfNBl0g
 45rVJCVngrIvfeGiTAHMbfo/tJu+WFNNLh7NkLQ8Mg==
X-Google-Smtp-Source: ABdhPJyDEnqTo94smUxbl1ZLbq1PeH7GBMZ8QIymHLfF5ThQGfPluBaPB0Lq5LVJOAkACGy8drgVkqSMRcJig44B2NI=
X-Received: by 2002:a54:4015:: with SMTP id x21mr5984271oie.128.1628268127886; 
 Fri, 06 Aug 2021 09:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-3-daniel.vetter@ffwll.ch>
 <CAF6AEGvkmZhcPWP58VnL1OXAeJ5tg7v13xkkiYBwkpBi1YiT4g@mail.gmail.com>
In-Reply-To: <CAF6AEGvkmZhcPWP58VnL1OXAeJ5tg7v13xkkiYBwkpBi1YiT4g@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 6 Aug 2021 18:41:56 +0200
Message-ID: <CAKMK7uG3gRNfYinM51UVAUckV9ZgN3mgRnJd8E9tERani9b1JQ@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v5 02/20] drm/msm: Fix drm/sched point
 of no return rules
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
Cc: Rob Clark <robdclark@chromium.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sean Paul <sean@poorly.run>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCBBdWcgNiwgMjAyMSBhdCAxMjo1OCBBTSBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBBdWcgNSwgMjAyMSBhdCAzOjQ3IEFNIERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IE9yaWdpbmFsbHkg
ZHJtX3NjaGVkX2pvYl9pbml0IHdhcyB0aGUgcG9pbnQgb2Ygbm8gcmV0dXJuLCBhZnRlciB3aGlj
aAo+ID4gZHJpdmVycyBtdXN0IHN1Ym1pdCBhIGpvYi4gSSd2ZSBzcGxpdCB0aGF0IHVwLCB3aGlj
aCBhbGxvd3MgdXMgdG8gZml4Cj4gPiB0aGlzIGlzc3VlIHByZXR0eSBlYXNpbHkuCj4gPgo+ID4g
T25seSB0aGluZyB3ZSBoYXZlIHRvIHRha2UgY2FyZSBvZiBpcyB0byBub3Qgc2tpcCB0byBlcnJv
ciBwYXRocyBhZnRlcgo+ID4gdGhhdC4gT3RoZXIgZHJpdmVycyBkbyB0aGlzIHRoZSBzYW1lIGZv
ciBvdXQtZmVuY2UgYW5kIHNpbWlsYXIgdGhpbmdzLgo+ID4KPiA+IEZpeGVzOiAxZDhhNWNhNDM2
ZWUgKCJkcm0vbXNtOiBDb252ZXJzaW9uIHRvIGRybSBzY2hlZHVsZXIiKQo+ID4gQ2M6IFJvYiBD
bGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4KPiA+IENjOiBSb2IgQ2xhcmsgPHJvYmRjbGFy
a0BnbWFpbC5jb20+Cj4gPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gPiBDYzog
U3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiA+IENjOiAiQ2hyaXN0aWFu
IEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IENjOiBsaW51eC1hcm0tbXNt
QHZnZXIua2VybmVsLm9yZwo+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiA+IENjOiBmcmVlZHJlbm9AbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogbGludXgtbWVk
aWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyB8IDE1
ICsrKysrKystLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDgg
ZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbV9zdWJtaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYwo+ID4g
aW5kZXggNmQ2YzQ0ZjBlMWYzLi5kMGVkNGRkYzUwOWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9nZW1fc3VibWl0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dlbV9zdWJtaXQuYwo+ID4gQEAgLTUyLDkgKzUyLDYgQEAgc3RhdGljIHN0cnVjdCBt
c21fZ2VtX3N1Ym1pdCAqc3VibWl0X2NyZWF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ID4g
ICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKHJldCk7Cj4gPiAgICAgICAgIH0KPiA+Cj4g
PiAtICAgICAgIC8qIEZJWE1FOiB0aGlzIGlzIHdheSB0b28gZWFybHkgKi8KPiA+IC0gICAgICAg
ZHJtX3NjaGVkX2pvYl9hcm0oJmpvYi0+YmFzZSk7Cj4gPiAtCj4gPiAgICAgICAgIHhhX2luaXRf
ZmxhZ3MoJnN1Ym1pdC0+ZGVwcywgWEFfRkxBR1NfQUxMT0MpOwo+ID4KPiA+ICAgICAgICAga3Jl
Zl9pbml0KCZzdWJtaXQtPnJlZik7Cj4gPiBAQCAtODgzLDYgKzg4MCw5IEBAIGludCBtc21faW9j
dGxfZ2VtX3N1Ym1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ID4KPiA+
ICAgICAgICAgc3VibWl0LT51c2VyX2ZlbmNlID0gZG1hX2ZlbmNlX2dldCgmc3VibWl0LT5iYXNl
LnNfZmVuY2UtPmZpbmlzaGVkKTsKPiA+Cj4gPiArICAgICAgIC8qIHBvaW50IG9mIG5vIHJldHVy
biwgd2UgX2hhdmVfIHRvIHN1Ym1pdCBubyBtYXR0ZXIgd2hhdCAqLwo+ID4gKyAgICAgICBkcm1f
c2NoZWRfam9iX2FybSgmc3VibWl0LT5iYXNlKTsKPiA+ICsKPiA+ICAgICAgICAgLyoKPiA+ICAg
ICAgICAgICogQWxsb2NhdGUgYW4gaWQgd2hpY2ggY2FuIGJlIHVzZWQgYnkgV0FJVF9GRU5DRSBp
b2N0bCB0byBtYXAgYmFjawo+ID4gICAgICAgICAgKiB0byB0aGUgdW5kZXJseWluZyBmZW5jZS4K
PiA+IEBAIC04OTIsMTcgKzg5MiwxNiBAQCBpbnQgbXNtX2lvY3RsX2dlbV9zdWJtaXQoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiA+ICAgICAgICAgaWYgKHN1Ym1pdC0+ZmVu
Y2VfaWQgPCAwKSB7Cj4gPiAgICAgICAgICAgICAgICAgcmV0ID0gc3VibWl0LT5mZW5jZV9pZCA9
IDA7Cj4gPiAgICAgICAgICAgICAgICAgc3VibWl0LT5mZW5jZV9pZCA9IDA7Cj4gPiAtICAgICAg
ICAgICAgICAgZ290byBvdXQ7Cj4gPiAgICAgICAgIH0KPiA+Cj4gPiAtICAgICAgIGlmIChhcmdz
LT5mbGFncyAmIE1TTV9TVUJNSVRfRkVOQ0VfRkRfT1VUKSB7Cj4gPiArICAgICAgIGlmIChyZXQg
PT0gMCAmJiBhcmdzLT5mbGFncyAmIE1TTV9TVUJNSVRfRkVOQ0VfRkRfT1VUKSB7Cj4gPiAgICAg
ICAgICAgICAgICAgc3RydWN0IHN5bmNfZmlsZSAqc3luY19maWxlID0gc3luY19maWxlX2NyZWF0
ZShzdWJtaXQtPnVzZXJfZmVuY2UpOwo+ID4gICAgICAgICAgICAgICAgIGlmICghc3luY19maWxl
KSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gPiArICAgICAgICAgICAgICAgfSBlbHNlIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGZkX2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5j
X2ZpbGUtPmZpbGUpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYXJncy0+ZmVuY2VfZmQg
PSBvdXRfZmVuY2VfZmQ7Cj4gPiAgICAgICAgICAgICAgICAgfQo+ID4gLSAgICAgICAgICAgICAg
IGZkX2luc3RhbGwob3V0X2ZlbmNlX2ZkLCBzeW5jX2ZpbGUtPmZpbGUpOwo+ID4gLSAgICAgICAg
ICAgICAgIGFyZ3MtPmZlbmNlX2ZkID0gb3V0X2ZlbmNlX2ZkOwo+Cj4gSSB3b25kZXIgaWYgaW5z
dGVhZCB3ZSBzaG91bGQgKGFwcHJveGltYXRlbHkpIHVuZG8gImRybS9tc20vc3VibWl0Ogo+IFNp
bXBsaWZ5IG91dC1mZW5jZS1mZCBoYW5kbGluZyIgc28gdGhhdCB0aGUgcG9pbnQgdGhhdCBpdCBj
b3VsZCBmYWlsCj4gaXMgbW92ZWQgdXAgYWhlYWQgb2YgdGhlIGRybV9zY2hlZF9qb2JfYXJtKCk/
CgpIbSB5ZWFoLiBVcCB0byB5b3UgaG93IHlvdSB3YW50IHRvIHBhaW50IHRoaXMgc2hlZCwgSSB0
aGluayBlaXRoZXIgaXMgZmluZS4KCj4gQWxzbywgZG9lcyB0aGUgZG1hX2ZlbmNlX2dldCgpIHdv
cmsgYmVmb3JlIGRybV9zY2hlZF9qb2JfYXJtKCk/ICBGcm9tCj4gYSBxdWljayBsb29rLCBpdCBs
b29rcyBsaWtlIGl0IHdvbid0LCBidXQgSSdtIHN0aWxsIHBsYXlpbmcgY2F0Y2h1cAo+IGFuZCBo
YXZlbid0IGhhZCBhIGNoYW5jZSB0byBsb29rIGF0IHlvdXIgZW50aXJlIHNlcmllcy4gIElmIGl0
IGRvZXNuJ3QKPiB3b3JrIGJlZm9yZSBkcm1fc2NoZWRfam9iX2FybSgpLCB0aGVuIHRoZXJlIGlz
IHJlYWxseSBubyB3YXkgdG8KPiBwcmV2ZW50IGEgZXJyb3IgcGF0aCBiZXR3ZWVuIHRoZSBmZW5j
ZS1pbml0IGFuZCBqb2Itc3VibWl0LgoKWWVzLiBJIHRob3VnaHQgSSd2ZSBjaGVja2VkIHRoYXQg
SSBwdXQgdGhlIF9hcm0oKSBpbiB0aGUgcmlnaHQgc3BvdCwKYnV0IEkgZ3Vlc3MgSSBzY3Jld2Vk
IHVwIGFuZCB5b3UgbmVlZCB0aGUgZmVuY2UgYmVmb3JlIHRoZSBwb2ludCB3aGVyZQpJJ3ZlIHB1
dCB0aGUgam9iX2FybSgpPyBBbmQgeWVzIHRoZSBlcnJvciBwYXRoIGNhbm5vdCBiZSBhdm9pZGVk
IGZvcgpvdXQtZmVuY2VzLCB0aGF0J3Mgd2hhdCBJIHRyaWVkIHRvIGV4cGxhaW4gaW4gdGhlIGNv
bW1pdCBtZXNzYWdlLgoKPiBCdXQsIHByaW9yIHRvIHlvdXIgc2VyaWVzLCB3b3VsZG4ndCBhIGZh
aWx1cmUgYWZ0ZXIKPiBkcm1fc2NoZWRfam9iX2luaXQoKSBidXQgYmVmb3JlIHRoZSBqb2IgaXMg
c3VibWl0dGVkIGp1c3QgYnVybiBhCj4gZmVuY2UtaWQsIGFuZCBvdGhlcndpc2UgY2Fycnkgb24g
aXQncyBtZXJyeSB3YXk/CgpNYXliZT8gSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhlIHNjaGVkdWxl
ciBnZXRzIGNvbmZ1c2VkIGFib3V0IHRoZSBnYXAKYW5kIGZyZWFrIG91dCBhYm91IHRoYXQuIEkn
bSBmYWlybHkgbmV3IHRvIHRoYXQgY29kZSBhbmQgbGVhcm5pbmcKKHdoaWNoIGlzIHBhcnQgd2h5
IEknbSB3b3JraW5nIG9uIGl0KS4gU2luY2UgeW91IGxvb2sgdXAgaW4KZmVuY2VzL3N5bmNvYmog
YWZ0ZXIgam9iX2luaXQoKSBpdCBzaG91bGQgYmUgcHJldHR5IGVhc3kgdG8gd2hpcCB1cCBhCnRl
c3RjYXNlIGFuZCBzZWUgd2hhdCBoYXBwZW5zLiBBbHNvIGFzIGxvbmcgYXMgbm90aGluZyBmYWls
cyB5b3Ugd29uJ3QKc2VlIGFuIGlzc3VlLCB0aGF0J3MgZm9yIHN1cmUuCi1EYW5pZWwKCj4gQlIs
Cj4gLVIKPgo+ID4gICAgICAgICB9Cj4gPgo+ID4gICAgICAgICBzdWJtaXRfYXR0YWNoX29iamVj
dF9mZW5jZXMoc3VibWl0KTsKPiA+IC0tCj4gPiAyLjMyLjAKPiA+CgoKCi0tIApEYW5pZWwgVmV0
dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZnds
bC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

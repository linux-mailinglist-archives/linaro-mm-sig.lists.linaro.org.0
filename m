Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7EE283C6C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Oct 2020 18:25:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8AB2561633
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Oct 2020 16:25:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7B0A66167C; Mon,  5 Oct 2020 16:25:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E38E8616E2;
	Mon,  5 Oct 2020 16:24:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 10AF261633
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Oct 2020 16:24:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EAA10616E2; Mon,  5 Oct 2020 16:24:34 +0000 (UTC)
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by lists.linaro.org (Postfix) with ESMTPS id 7924161633
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Oct 2020 16:24:33 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id z46so2685446uac.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Oct 2020 09:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qBumfCmhAXhY6hDQgspF9hUMTgcwdq6ZvwLFthSZGKg=;
 b=VYkJGqOehbIF35IcC9JhI5gQAtAYORB8yPheHgAbU1UuGc24H0xph75RvLX4MkAtti
 GLl5Fn7eY4sa+SPviPw8GbVKeWw5YcuvTeYfSCSdZlmvBosaVz9oQOr+AowvDsOWJL68
 Cicdaw07RkuPhrAG+HMCkmUMpR7Y6WXVz4r/ZcuGd6LuTiIFcmC5TPxz0FPJfcgwes20
 G4StcAQJFjSogbl1D6/C0mW3CPqzy+zGlCPxhX5qwes24PJ+cA+p1CsztmXqfgPUpNL1
 JXXuOhtr2x9+fqJgLC0cFqUN5UBNSa9yJ42D7u0Bbxs/6wP+6t1urNAidt2bLI4Z4K/x
 7jVw==
X-Gm-Message-State: AOAM533SxM95GjuHQfph4PNt8VNOknB+TnMBTvd7WfdB3ZYDpgP9477T
 5pXjhlpPEk7YoWqpV7fOg/UucRTqylGinFO8gRQ=
X-Google-Smtp-Source: ABdhPJznyMapjDMGbUJSAUPrB5hWXc5IE1Vq0Zi5rWJZl03TsE1S3clOeekLVUiAwcemyucFJg5Cj3CY5Fd3yEzo76Y=
X-Received: by 2002:a9f:3f46:: with SMTP id i6mr449424uaj.31.1601915072945;
 Mon, 05 Oct 2020 09:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20201004192152.3298573-1-robdclark@gmail.com>
In-Reply-To: <20201004192152.3298573-1-robdclark@gmail.com>
From: =?UTF-8?Q?Kristian_H=C3=B8gsberg?= <hoegsberg@gmail.com>
Date: Mon, 5 Oct 2020 18:24:21 +0200
Message-ID: <CAOeoa-d4-KyuVjwPCBcau6yp6sxeeHN4K0cQzZ=H+OQVgHsLFw@mail.gmail.com>
To: Rob Clark <robdclark@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU"
 <freedreno@lists.freedesktop.org>, Emil Velikov <emil.velikov@collabora.com>,
 Jonathan Marek <jonathan@marek.ca>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Eric Anholt <eric@anholt.net>, Ben Dooks <ben.dooks@codethink.co.uk>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Freedreno] [PATCH 00/14] drm/msm:
	de-struct_mutex-ification
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

T24gU3VuLCBPY3QgNCwgMjAyMCBhdCA5OjIxIFBNIFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWls
LmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+
Cj4KPiBUaGlzIGRvZXNuJ3QgcmVtb3ZlICphbGwqIHRoZSBzdHJ1Y3RfbXV0ZXgsIGJ1dCBpdCBj
b3ZlcnMgdGhlIHdvcnN0Cj4gb2YgaXQsIGllLiBzaHJpbmtlci9tYWR2aXNlL2ZyZWUvcmV0aXJl
LiAgVGhlIHN1Ym1pdCBwYXRoIHN0aWxsIHVzZXMKPiBzdHJ1Y3RfbXV0ZXgsIGJ1dCBpdCBzdGls
bCBuZWVkcyAqc29tZXRoaW5nKiBzZXJpYWxpemUgYSBwb3J0aW9uIG9mCj4gdGhlIHN1Ym1pdCBw
YXRoLCBhbmQgbG9ja19zdGF0IG1vc3RseSBqdXN0IHNob3dzIHRoZSBsb2NrIGNvbnRlbnRpb24K
PiB0aGVyZSBiZWluZyB3aXRoIG90aGVyIHN1Ym1pdHMuICBBbmQgdGhlcmUgYXJlIGEgZmV3IG90
aGVyIGJpdHMgb2YKPiBzdHJ1Y3RfbXV0ZXggdXNhZ2UgaW4gbGVzcyBjcml0aWNhbCBwYXRocyAo
ZGVidWdmcywgZXRjKS4gIEJ1dCB0aGlzCj4gc2VlbXMgbGlrZSBhIHJlYXNvbmFibGUgc3RlcCBp
biB0aGUgcmlnaHQgZGlyZWN0aW9uLgoKV2hhdCBhIGdyZWF0IHBhdGNoIHNldC4gRGFuaWVsIGhh
cyBzb21lIGdvb2QgcG9pbnRzIGFuZCBub3RoaW5nIHRoYXQKcmVxdWlyZXMgYmlnIGNoYW5nZXMs
IGJ1dCBvbiB0aGUgb3RoZXIgaGFuZCwgSSdtIG5vdCBzdXJlIGl0J3MKc29tZXRoaW5nIHRoYXQg
bmVlZHMgdG8gYmxvY2sgdGhpcyBzZXQgZWl0aGVyLgoKRWl0aGVyIHdheSwgZm9yIHRoZSBzZXJp
ZXMKClJldmlld2VkLWJ5OiBLcmlzdGlhbiBILiBLcmlzdGVuc2VuIDxob2Vnc2JlcmdAZ29vZ2xl
LmNvbT4KCj4gUm9iIENsYXJrICgxNCk6Cj4gICBkcm0vbXNtOiBVc2UgY29ycmVjdCBkcm1fZ2Vt
X29iamVjdF9wdXQoKSBpbiBmYWlsIGNhc2UKPiAgIGRybS9tc206IERyb3AgY2hhdHR5IHRyYWNl
Cj4gICBkcm0vbXNtOiBNb3ZlIHVwZGF0ZV9mZW5jZXMoKQo+ICAgZHJtL21zbTogQWRkIHByaXYt
Pm1tX2xvY2sgdG8gcHJvdGVjdCBhY3RpdmUvaW5hY3RpdmUgbGlzdHMKPiAgIGRybS9tc206IERv
Y3VtZW50IGFuZCByZW5hbWUgcHJlZW1wdF9sb2NrCj4gICBkcm0vbXNtOiBQcm90ZWN0IHJpbmct
PnN1Ym1pdHMgd2l0aCBpdCdzIG93biBsb2NrCj4gICBkcm0vbXNtOiBSZWZjb3VudCBzdWJtaXRz
Cj4gICBkcm0vbXNtOiBSZW1vdmUgb2JqLT5ncHUKPiAgIGRybS9tc206IERyb3Agc3RydWN0X211
dGV4IGZyb20gdGhlIHJldGlyZSBwYXRoCj4gICBkcm0vbXNtOiBEcm9wIHN0cnVjdF9tdXRleCBp
biBmcmVlX29iamVjdCgpIHBhdGgKPiAgIGRybS9tc206IHJlbW92ZSBtc21fZ2VtX2ZyZWVfd29y
awo+ICAgZHJtL21zbTogZHJvcCBzdHJ1Y3RfbXV0ZXggaW4gbWFkdmlzZSBwYXRoCj4gICBkcm0v
bXNtOiBEcm9wIHN0cnVjdF9tdXRleCBpbiBzaHJpbmtlciBwYXRoCj4gICBkcm0vbXNtOiBEb24n
dCBpbXBsaWNpdC1zeW5jIGlmIG9ubHkgYSBzaW5nbGUgcmluZwo+Cj4gIGRyaXZlcnMvZ3B1L2Ry
bS9tc20vYWRyZW5vL2E1eHhfZ3B1LmMgICAgIHwgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL21z
bS9hZHJlbm8vYTV4eF9wcmVlbXB0LmMgfCAxMiArLS0KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9h
ZHJlbm8vYTZ4eF9ncHUuYyAgICAgfCAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9k
ZWJ1Z2ZzLmMgICAgICAgICB8ICA3ICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5j
ICAgICAgICAgICAgIHwgMTUgKy0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYuaCAg
ICAgICAgICAgICB8IDE5ICsrKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAg
ICAgICAgICAgIHwgNzYgKysrKysrLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dlbS5oICAgICAgICAgICAgIHwgNTMgKysrKysrKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vbXNtL21zbV9nZW1fc2hyaW5rZXIuYyAgICB8IDU4ICsrLS0tLS0tLS0tLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyAgICAgIHwgMTcgKystLQo+ICBkcml2ZXJz
L2dwdS9kcm0vbXNtL21zbV9ncHUuYyAgICAgICAgICAgICB8IDk2ICsrKysrKysrKysrKysrLS0t
LS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dwdS5oICAgICAgICAgICAgIHwgIDUg
Ky0KPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZlci5jICAgICAgfCAgMyArLQo+
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9yaW5nYnVmZmVyLmggICAgICB8IDEzICsrLQo+ICAx
NCBmaWxlcyBjaGFuZ2VkLCAxODggaW5zZXJ0aW9ucygrKSwgMTk0IGRlbGV0aW9ucygtKQo+Cj4g
LS0KPiAyLjI2LjIKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gRnJlZWRyZW5vIG1haWxpbmcgbGlzdAo+IEZyZWVkcmVub0BsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ZyZWVkcmVubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=

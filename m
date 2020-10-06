Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6D1284443
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Oct 2020 05:25:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 31F0361633
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Oct 2020 03:24:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 257506167C; Tue,  6 Oct 2020 03:24:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A09B61721;
	Tue,  6 Oct 2020 03:24:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6CECF61633
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Oct 2020 03:24:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 52BA461721; Tue,  6 Oct 2020 03:24:15 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id EC1EC61633
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Oct 2020 03:24:13 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id t9so3109448wrq.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Oct 2020 20:24:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gm5Rf54gYnkxJnrNPTvtfxE73fL5jd+U+PmQSMJsRvc=;
 b=HWm9EwNnbytbmHw7ztu7Gv0yj8FTZaqi0mTpnQScbdc+IcIG6EZuldYETTk5cajAW/
 XeYPBLfjrzoFQT4YMQchpSM+QL9XGenEQrnxrY52jKLabgAAekUHdNVV34haVYkz+S0Y
 w4Uf19wpMrkZo6o3PTMTOvd8TUoOuTGiGL7cSfZOr3csDPW/gJ+C7HeS5655XB72wF4a
 E/C/vfJJMJEL0ZyoXBjBCvei+XE/ArGW8hq9JcQuINThBBZEApHTe3vXvKnyKgrup0lM
 4bxEDXfyZM256Mk1CpKroAS7mZGHdP6mFr9X04G2dho4k0JjfhOAoXktO81ZzOoqptoM
 SLmg==
X-Gm-Message-State: AOAM533MA+L5pHPC/GAVvP+zWg6D2+M+4x7m5RuERIigPAO19CMPQTHV
 1P9617wPUP5u2TmJ13xe4r5e0biBBjU8GUrsAb8=
X-Google-Smtp-Source: ABdhPJxMU6rAehG8uhyB/PTRpKBwU9ZZkYETuLsP9OyIut+i8rZ6MfrGcCOTvVIDW1IHzfNQuBUG9yIDHp1ndNOzhHM=
X-Received: by 2002:a5d:640d:: with SMTP id z13mr2345446wru.28.1601954652929; 
 Mon, 05 Oct 2020 20:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <20201004192152.3298573-1-robdclark@gmail.com>
 <CAOeoa-d4-KyuVjwPCBcau6yp6sxeeHN4K0cQzZ=H+OQVgHsLFw@mail.gmail.com>
 <CAKMK7uHeZptOKWKTanBB_c2ek2emNjs9fFCbTwgafS19rL1sww@mail.gmail.com>
In-Reply-To: <CAKMK7uHeZptOKWKTanBB_c2ek2emNjs9fFCbTwgafS19rL1sww@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 5 Oct 2020 20:25:21 -0700
Message-ID: <CAF6AEGu9riswKODKuftqtxkaM=qz9CmFoVgLn1j=yCJ-TuDXLA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Clark <robdclark@chromium.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Jonathan Marek <jonathan@marek.ca>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Sharat Masetty <smasetty@codeaurora.org>,
 =?UTF-8?Q?Kristian_H=C3=B8gsberg?= <hoegsberg@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>, Sam Ravnborg <sam@ravnborg.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 Emil Velikov <emil.velikov@collabora.com>
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

T24gTW9uLCBPY3QgNSwgMjAyMCBhdCAxMToyMCBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gTW9uLCBPY3QgNSwgMjAyMCBhdCA2OjI0IFBNIEtyaXN0aWFu
IEjDuGdzYmVyZyA8aG9lZ3NiZXJnQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gU3VuLCBP
Y3QgNCwgMjAyMCBhdCA5OjIxIFBNIFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4gPiA+Cj4gPiA+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4K
PiA+ID4KPiA+ID4gVGhpcyBkb2Vzbid0IHJlbW92ZSAqYWxsKiB0aGUgc3RydWN0X211dGV4LCBi
dXQgaXQgY292ZXJzIHRoZSB3b3JzdAo+ID4gPiBvZiBpdCwgaWUuIHNocmlua2VyL21hZHZpc2Uv
ZnJlZS9yZXRpcmUuICBUaGUgc3VibWl0IHBhdGggc3RpbGwgdXNlcwo+ID4gPiBzdHJ1Y3RfbXV0
ZXgsIGJ1dCBpdCBzdGlsbCBuZWVkcyAqc29tZXRoaW5nKiBzZXJpYWxpemUgYSBwb3J0aW9uIG9m
Cj4gPiA+IHRoZSBzdWJtaXQgcGF0aCwgYW5kIGxvY2tfc3RhdCBtb3N0bHkganVzdCBzaG93cyB0
aGUgbG9jayBjb250ZW50aW9uCj4gPiA+IHRoZXJlIGJlaW5nIHdpdGggb3RoZXIgc3VibWl0cy4g
IEFuZCB0aGVyZSBhcmUgYSBmZXcgb3RoZXIgYml0cyBvZgo+ID4gPiBzdHJ1Y3RfbXV0ZXggdXNh
Z2UgaW4gbGVzcyBjcml0aWNhbCBwYXRocyAoZGVidWdmcywgZXRjKS4gIEJ1dCB0aGlzCj4gPiA+
IHNlZW1zIGxpa2UgYSByZWFzb25hYmxlIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbi4KPiA+
Cj4gPiBXaGF0IGEgZ3JlYXQgcGF0Y2ggc2V0LiBEYW5pZWwgaGFzIHNvbWUgZ29vZCBwb2ludHMg
YW5kIG5vdGhpbmcgdGhhdAo+ID4gcmVxdWlyZXMgYmlnIGNoYW5nZXMsIGJ1dCBvbiB0aGUgb3Ro
ZXIgaGFuZCwgSSdtIG5vdCBzdXJlIGl0J3MKPiA+IHNvbWV0aGluZyB0aGF0IG5lZWRzIHRvIGJs
b2NrIHRoaXMgc2V0IGVpdGhlci4KPgo+IFBlcnNvbmFsbHkgSSdkIHRocm93IHRoZSBsb2NrZGVw
IHByaW1pbmcgb24gdG9wIHRvIG1ha2Ugc3VyZSB0aGlzCj4gc3RheXMgY29ycmVjdCAoaXQncyAz
IGxpbmVzKSwgYnV0IHllcyBpbW8gdGhpcyBpcyBhbGwgZ29vZCB0byBnby4gSnVzdAo+IGZpZ3Vy
ZWQgSSdsbCBzcHJpbmtsZSB0aGUgbGF0ZXN0IGluIHRlcm1zIG9mIGdlbSBsb2NraW5nIG92ZXIg
dGhlCj4gc2VyaWVzIHdoaWxlIGl0J3MgaGVyZSA6LSkKClllYWgsIEknbGwgZGVmbiB0aHJvdyB0
aGUgbG9ja2RlcCBwcmltaW5nIGludG8gdjIuLiBhbmQgSSd2ZSBnb3QgdXNpbmcKb2JqLT5yZXN2
IGZvciBsb2NraW5nIG9uIHRoZSB0b2RvIGxpc3QgYnV0IGxvb2tzIGxpa2UgZW5vdWdoIGNodXJu
CnRoYXQgaXQgd2lsbCBwcm9iYWJseSBiZSBpdCdzIG93biBzZXJpZXMgKGJ1dCBzZWVtcyBsaWtl
IHRoZXJlIGlzIHJvb20KdG8gaW50cm9kdWNlIHNvbWUgbG9jay91bmxvY2sgaGVscGVycyB0aGF0
IGRvbid0IHJlYWxseSBjaGFuZ2UKYW55dGhpbmcgYnV0IG1ha2UgYW4gb2JqLT5sb2NrIHRyYW5z
aXRpb24gZWFzaWVyKQoKQlIsCi1SCgo+IC1EYW5pZWwKPgo+ID4gRWl0aGVyIHdheSwgZm9yIHRo
ZSBzZXJpZXMKPiA+Cj4gPiBSZXZpZXdlZC1ieTogS3Jpc3RpYW4gSC4gS3Jpc3RlbnNlbiA8aG9l
Z3NiZXJnQGdvb2dsZS5jb20+Cj4gPgo+ID4gPiBSb2IgQ2xhcmsgKDE0KToKPiA+ID4gICBkcm0v
bXNtOiBVc2UgY29ycmVjdCBkcm1fZ2VtX29iamVjdF9wdXQoKSBpbiBmYWlsIGNhc2UKPiA+ID4g
ICBkcm0vbXNtOiBEcm9wIGNoYXR0eSB0cmFjZQo+ID4gPiAgIGRybS9tc206IE1vdmUgdXBkYXRl
X2ZlbmNlcygpCj4gPiA+ICAgZHJtL21zbTogQWRkIHByaXYtPm1tX2xvY2sgdG8gcHJvdGVjdCBh
Y3RpdmUvaW5hY3RpdmUgbGlzdHMKPiA+ID4gICBkcm0vbXNtOiBEb2N1bWVudCBhbmQgcmVuYW1l
IHByZWVtcHRfbG9jawo+ID4gPiAgIGRybS9tc206IFByb3RlY3QgcmluZy0+c3VibWl0cyB3aXRo
IGl0J3Mgb3duIGxvY2sKPiA+ID4gICBkcm0vbXNtOiBSZWZjb3VudCBzdWJtaXRzCj4gPiA+ICAg
ZHJtL21zbTogUmVtb3ZlIG9iai0+Z3B1Cj4gPiA+ICAgZHJtL21zbTogRHJvcCBzdHJ1Y3RfbXV0
ZXggZnJvbSB0aGUgcmV0aXJlIHBhdGgKPiA+ID4gICBkcm0vbXNtOiBEcm9wIHN0cnVjdF9tdXRl
eCBpbiBmcmVlX29iamVjdCgpIHBhdGgKPiA+ID4gICBkcm0vbXNtOiByZW1vdmUgbXNtX2dlbV9m
cmVlX3dvcmsKPiA+ID4gICBkcm0vbXNtOiBkcm9wIHN0cnVjdF9tdXRleCBpbiBtYWR2aXNlIHBh
dGgKPiA+ID4gICBkcm0vbXNtOiBEcm9wIHN0cnVjdF9tdXRleCBpbiBzaHJpbmtlciBwYXRoCj4g
PiA+ICAgZHJtL21zbTogRG9uJ3QgaW1wbGljaXQtc3luYyBpZiBvbmx5IGEgc2luZ2xlIHJpbmcK
PiA+ID4KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9tc20vYWRyZW5vL2E1eHhfZ3B1LmMgICAgIHwg
IDQgKy0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9tc20vYWRyZW5vL2E1eHhfcHJlZW1wdC5jIHwg
MTIgKy0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2FkcmVuby9hNnh4X2dwdS5jICAgICB8
ICA0ICstCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kZWJ1Z2ZzLmMgICAgICAgICB8
ICA3ICsrCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYuYyAgICAgICAgICAgICB8
IDE1ICstLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oICAgICAgICAgICAg
IHwgMTkgKysrLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAgICAgICAg
ICAgIHwgNzYgKysrKysrLS0tLS0tLS0tLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9nZW0uaCAgICAgICAgICAgICB8IDUzICsrKysrKysrKy0tLS0KPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2dlbV9zaHJpbmtlci5jICAgIHwgNTggKystLS0tLS0tLS0tLS0KPiA+ID4g
IGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyAgICAgIHwgMTcgKystLQo+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1LmMgICAgICAgICAgICAgfCA5NiArKysrKysr
KysrKysrKy0tLS0tLS0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ3B1LmggICAg
ICAgICAgICAgfCAgNSArLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZl
ci5jICAgICAgfCAgMyArLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fcmluZ2J1ZmZl
ci5oICAgICAgfCAxMyArKy0KPiA+ID4gIDE0IGZpbGVzIGNoYW5nZWQsIDE4OCBpbnNlcnRpb25z
KCspLCAxOTQgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IC0tCj4gPiA+IDIuMjYuMgo+ID4gPgo+
ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4g
PiBGcmVlZHJlbm8gbWFpbGluZyBsaXN0Cj4gPiA+IEZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9mcmVlZHJlbm8KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gPiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAo+Cj4KPgo+IC0tCj4gRGFuaWVsIFZldHRlcgo+IFNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

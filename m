Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 782DE3E2ECC
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Aug 2021 19:15:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11203632A1
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Aug 2021 17:15:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A9F82623DB; Fri,  6 Aug 2021 17:15:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAF1562164;
	Fri,  6 Aug 2021 17:15:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1AEDC61F3E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Aug 2021 17:15:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 187FC62164; Fri,  6 Aug 2021 17:15:42 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 0EBD061F3E
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Aug 2021 17:15:40 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id
 l34-20020a05600c1d22b02902573c214807so9483347wms.2
 for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Aug 2021 10:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dCyOt6fuT3vKd9OQ1cGqS4mQb18lfymYBVtFVf7jJ4A=;
 b=R6XSn0FGIQXxHlZfbPMYFAIp3qZvGqnz2uO6DnOgH+NSLPgZn2dPgU3bfi7x97DrIz
 lcCC+kYvlOo1JatvHjnXcNT+4JWqgIXUOIr8ktUaJpizb+C8bzbqy1QQ0wyeqH9qVqcP
 80UkcftiPH6W9Ic1FaFPxCcY6CprePe1b+MMMtZEjPsh8QX3cri8U78Mb1Ki3ViN8zUI
 q9FZ2oj7kg7k4G0V15nCS3yHxhxJ5hlqUokLVum+6W2V08cAc66ovuRWcEnY6Ii0BteU
 BQRo17h+cVFy/oD/iBy8x0mPSkXVB77H4gqlxHrw7aZIZ0y0MMC1fue0nZT9W6x7en2L
 Qp8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dCyOt6fuT3vKd9OQ1cGqS4mQb18lfymYBVtFVf7jJ4A=;
 b=s+Yf6UyS1ep2Ujp/s1wdKYpURpwQlT6UWYRenr8+B9Nwfoezu4cxisy9CDsYrQaPm/
 KZ3pWuUsBBHPief1mm7ilUzKcip7OjJjSKaGqXRr+JRhl3p+yQi3Da2NOXzXVTznFzNJ
 T+Fr7IekbD91u58DxYsMQ4j0VDI/5Gt0IPQ05T4uMQS0b7Jy6BbvAPhDNlvve6E45axr
 wjS0YtNeWR+d5nqMX6l8dmW4iuYkvCylEFaf0qpkYusXVf6EewzgYp9hJdXe/wI2xDtv
 lkExVhVdTZm/8MHlDEWCysLw186nN1Zkw7cGkOrfv3PD7DrC6Whn9wxWUIL47aKdBfyZ
 Y1hQ==
X-Gm-Message-State: AOAM531wKjgFFU9IxdIsc4/M0TRm8jBm56ekSdhZswqtdC+kkvx3Yfz7
 MEeV+WP9rwYF+7nlsoCrE6WdWDPOjOK6Jzn8rmk=
X-Google-Smtp-Source: ABdhPJyBrw5+F57Z9us0v2G5eQXZ3/7VCwgnovKyD3o89ran+2+rJTbzcYRU+451NTlUEvVs/nhtDxk1Orc3hl6E2vw=
X-Received: by 2002:a1c:4b18:: with SMTP id y24mr22080784wma.49.1628270139083; 
 Fri, 06 Aug 2021 10:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-3-daniel.vetter@ffwll.ch>
 <CAF6AEGvkmZhcPWP58VnL1OXAeJ5tg7v13xkkiYBwkpBi1YiT4g@mail.gmail.com>
 <CAKMK7uG3gRNfYinM51UVAUckV9ZgN3mgRnJd8E9tERani9b1JQ@mail.gmail.com>
In-Reply-To: <CAKMK7uG3gRNfYinM51UVAUckV9ZgN3mgRnJd8E9tERani9b1JQ@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 6 Aug 2021 10:19:54 -0700
Message-ID: <CAF6AEGuqxb5jEtpQi-aNvjSfPaq0gasH2TLZ+5O836ov9qw+3w@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
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

T24gRnJpLCBBdWcgNiwgMjAyMSBhdCA5OjQyIEFNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gT24gRnJpLCBBdWcgNiwgMjAyMSBhdCAxMjo1OCBBTSBS
b2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgQXVn
IDUsIDIwMjEgYXQgMzo0NyBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PiB3cm90ZToKPiA+ID4KPiA+ID4gT3JpZ2luYWxseSBkcm1fc2NoZWRfam9iX2luaXQgd2FzIHRo
ZSBwb2ludCBvZiBubyByZXR1cm4sIGFmdGVyIHdoaWNoCj4gPiA+IGRyaXZlcnMgbXVzdCBzdWJt
aXQgYSBqb2IuIEkndmUgc3BsaXQgdGhhdCB1cCwgd2hpY2ggYWxsb3dzIHVzIHRvIGZpeAo+ID4g
PiB0aGlzIGlzc3VlIHByZXR0eSBlYXNpbHkuCj4gPiA+Cj4gPiA+IE9ubHkgdGhpbmcgd2UgaGF2
ZSB0byB0YWtlIGNhcmUgb2YgaXMgdG8gbm90IHNraXAgdG8gZXJyb3IgcGF0aHMgYWZ0ZXIKPiA+
ID4gdGhhdC4gT3RoZXIgZHJpdmVycyBkbyB0aGlzIHRoZSBzYW1lIGZvciBvdXQtZmVuY2UgYW5k
IHNpbWlsYXIgdGhpbmdzLgo+ID4gPgo+ID4gPiBGaXhlczogMWQ4YTVjYTQzNmVlICgiZHJtL21z
bTogQ29udmVyc2lvbiB0byBkcm0gc2NoZWR1bGVyIikKPiA+ID4gQ2M6IFJvYiBDbGFyayA8cm9i
ZGNsYXJrQGNocm9taXVtLm9yZz4KPiA+ID4gQ2M6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWls
LmNvbT4KPiA+ID4gQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgo+ID4gPiBDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiA+ID4gQ2M6ICJDaHJpc3RpYW4g
S8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gPiBDYzogbGludXgtYXJtLW1z
bUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiA+ID4gQ2M6IGZyZWVkcmVub0BsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gQ2M6IGxp
bnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+ID4gPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCj4gPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dl
bV9zdWJtaXQuYyB8IDE1ICsrKysrKystLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20v
bXNtX2dlbV9zdWJtaXQuYwo+ID4gPiBpbmRleCA2ZDZjNDRmMGUxZjMuLmQwZWQ0ZGRjNTA5ZSAx
MDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3N1Ym1pdC5jCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYwo+ID4gPiBAQCAt
NTIsOSArNTIsNiBAQCBzdGF0aWMgc3RydWN0IG1zbV9nZW1fc3VibWl0ICpzdWJtaXRfY3JlYXRl
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gRVJS
X1BUUihyZXQpOwo+ID4gPiAgICAgICAgIH0KPiA+ID4KPiA+ID4gLSAgICAgICAvKiBGSVhNRTog
dGhpcyBpcyB3YXkgdG9vIGVhcmx5ICovCj4gPiA+IC0gICAgICAgZHJtX3NjaGVkX2pvYl9hcm0o
JmpvYi0+YmFzZSk7Cj4gPiA+IC0KPiA+ID4gICAgICAgICB4YV9pbml0X2ZsYWdzKCZzdWJtaXQt
PmRlcHMsIFhBX0ZMQUdTX0FMTE9DKTsKPiA+ID4KPiA+ID4gICAgICAgICBrcmVmX2luaXQoJnN1
Ym1pdC0+cmVmKTsKPiA+ID4gQEAgLTg4Myw2ICs4ODAsOSBAQCBpbnQgbXNtX2lvY3RsX2dlbV9z
dWJtaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiA+ID4KPiA+ID4gICAg
ICAgICBzdWJtaXQtPnVzZXJfZmVuY2UgPSBkbWFfZmVuY2VfZ2V0KCZzdWJtaXQtPmJhc2Uuc19m
ZW5jZS0+ZmluaXNoZWQpOwo+ID4gPgo+ID4gPiArICAgICAgIC8qIHBvaW50IG9mIG5vIHJldHVy
biwgd2UgX2hhdmVfIHRvIHN1Ym1pdCBubyBtYXR0ZXIgd2hhdCAqLwo+ID4gPiArICAgICAgIGRy
bV9zY2hlZF9qb2JfYXJtKCZzdWJtaXQtPmJhc2UpOwo+ID4gPiArCj4gPiA+ICAgICAgICAgLyoK
PiA+ID4gICAgICAgICAgKiBBbGxvY2F0ZSBhbiBpZCB3aGljaCBjYW4gYmUgdXNlZCBieSBXQUlU
X0ZFTkNFIGlvY3RsIHRvIG1hcCBiYWNrCj4gPiA+ICAgICAgICAgICogdG8gdGhlIHVuZGVybHlp
bmcgZmVuY2UuCj4gPiA+IEBAIC04OTIsMTcgKzg5MiwxNiBAQCBpbnQgbXNtX2lvY3RsX2dlbV9z
dWJtaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiA+ID4gICAgICAgICBp
ZiAoc3VibWl0LT5mZW5jZV9pZCA8IDApIHsKPiA+ID4gICAgICAgICAgICAgICAgIHJldCA9IHN1
Ym1pdC0+ZmVuY2VfaWQgPSAwOwo+ID4gPiAgICAgICAgICAgICAgICAgc3VibWl0LT5mZW5jZV9p
ZCA9IDA7Cj4gPiA+IC0gICAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ID4gICAgICAgICB9Cj4g
PiA+Cj4gPiA+IC0gICAgICAgaWYgKGFyZ3MtPmZsYWdzICYgTVNNX1NVQk1JVF9GRU5DRV9GRF9P
VVQpIHsKPiA+ID4gKyAgICAgICBpZiAocmV0ID09IDAgJiYgYXJncy0+ZmxhZ3MgJiBNU01fU1VC
TUlUX0ZFTkNFX0ZEX09VVCkgewo+ID4gPiAgICAgICAgICAgICAgICAgc3RydWN0IHN5bmNfZmls
ZSAqc3luY19maWxlID0gc3luY19maWxlX2NyZWF0ZShzdWJtaXQtPnVzZXJfZmVuY2UpOwo+ID4g
PiAgICAgICAgICAgICAgICAgaWYgKCFzeW5jX2ZpbGUpIHsKPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0ID0gLUVOT01FTTsKPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgZ290
byBvdXQ7Cj4gPiA+ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBmZF9pbnN0YWxsKG91dF9mZW5jZV9mZCwgc3luY19maWxlLT5maWxlKTsKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYXJncy0+ZmVuY2VfZmQgPSBvdXRfZmVuY2VfZmQ7
Cj4gPiA+ICAgICAgICAgICAgICAgICB9Cj4gPiA+IC0gICAgICAgICAgICAgICBmZF9pbnN0YWxs
KG91dF9mZW5jZV9mZCwgc3luY19maWxlLT5maWxlKTsKPiA+ID4gLSAgICAgICAgICAgICAgIGFy
Z3MtPmZlbmNlX2ZkID0gb3V0X2ZlbmNlX2ZkOwo+ID4KPiA+IEkgd29uZGVyIGlmIGluc3RlYWQg
d2Ugc2hvdWxkIChhcHByb3hpbWF0ZWx5KSB1bmRvICJkcm0vbXNtL3N1Ym1pdDoKPiA+IFNpbXBs
aWZ5IG91dC1mZW5jZS1mZCBoYW5kbGluZyIgc28gdGhhdCB0aGUgcG9pbnQgdGhhdCBpdCBjb3Vs
ZCBmYWlsCj4gPiBpcyBtb3ZlZCB1cCBhaGVhZCBvZiB0aGUgZHJtX3NjaGVkX2pvYl9hcm0oKT8K
Pgo+IEhtIHllYWguIFVwIHRvIHlvdSBob3cgeW91IHdhbnQgdG8gcGFpbnQgdGhpcyBzaGVkLCBJ
IHRoaW5rIGVpdGhlciBpcyBmaW5lLgo+Cj4gPiBBbHNvLCBkb2VzIHRoZSBkbWFfZmVuY2VfZ2V0
KCkgd29yayBiZWZvcmUgZHJtX3NjaGVkX2pvYl9hcm0oKT8gIEZyb20KPiA+IGEgcXVpY2sgbG9v
aywgaXQgbG9va3MgbGlrZSBpdCB3b24ndCwgYnV0IEknbSBzdGlsbCBwbGF5aW5nIGNhdGNodXAK
PiA+IGFuZCBoYXZlbid0IGhhZCBhIGNoYW5jZSB0byBsb29rIGF0IHlvdXIgZW50aXJlIHNlcmll
cy4gIElmIGl0IGRvZXNuJ3QKPiA+IHdvcmsgYmVmb3JlIGRybV9zY2hlZF9qb2JfYXJtKCksIHRo
ZW4gdGhlcmUgaXMgcmVhbGx5IG5vIHdheSB0bwo+ID4gcHJldmVudCBhIGVycm9yIHBhdGggYmV0
d2VlbiB0aGUgZmVuY2UtaW5pdCBhbmQgam9iLXN1Ym1pdC4KPgo+IFllcy4gSSB0aG91Z2h0IEkn
dmUgY2hlY2tlZCB0aGF0IEkgcHV0IHRoZSBfYXJtKCkgaW4gdGhlIHJpZ2h0IHNwb3QsCj4gYnV0
IEkgZ3Vlc3MgSSBzY3Jld2VkIHVwIGFuZCB5b3UgbmVlZCB0aGUgZmVuY2UgYmVmb3JlIHRoZSBw
b2ludCB3aGVyZQo+IEkndmUgcHV0IHRoZSBqb2JfYXJtKCk/IEFuZCB5ZXMgdGhlIGVycm9yIHBh
dGggY2Fubm90IGJlIGF2b2lkZWQgZm9yCj4gb3V0LWZlbmNlcywgdGhhdCdzIHdoYXQgSSB0cmll
ZCB0byBleHBsYWluIGluIHRoZSBjb21taXQgbWVzc2FnZS4KPgo+ID4gQnV0LCBwcmlvciB0byB5
b3VyIHNlcmllcywgd291bGRuJ3QgYSBmYWlsdXJlIGFmdGVyCj4gPiBkcm1fc2NoZWRfam9iX2lu
aXQoKSBidXQgYmVmb3JlIHRoZSBqb2IgaXMgc3VibWl0dGVkIGp1c3QgYnVybiBhCj4gPiBmZW5j
ZS1pZCwgYW5kIG90aGVyd2lzZSBjYXJyeSBvbiBpdCdzIG1lcnJ5IHdheT8KPgo+IE1heWJlPyBJ
J20gbm90IHN1cmUgd2hldGhlciB0aGUgc2NoZWR1bGVyIGdldHMgY29uZnVzZWQgYWJvdXQgdGhl
IGdhcAo+IGFuZCBmcmVhayBvdXQgYWJvdSB0aGF0LiBJJ20gZmFpcmx5IG5ldyB0byB0aGF0IGNv
ZGUgYW5kIGxlYXJuaW5nCj4gKHdoaWNoIGlzIHBhcnQgd2h5IEknbSB3b3JraW5nIG9uIGl0KS4g
U2luY2UgeW91IGxvb2sgdXAgaW4KPiBmZW5jZXMvc3luY29iaiBhZnRlciBqb2JfaW5pdCgpIGl0
IHNob3VsZCBiZSBwcmV0dHkgZWFzeSB0byB3aGlwIHVwIGEKPiB0ZXN0Y2FzZSBhbmQgc2VlIHdo
YXQgaGFwcGVucy4gQWxzbyBhcyBsb25nIGFzIG5vdGhpbmcgZmFpbHMgeW91IHdvbid0Cj4gc2Vl
IGFuIGlzc3VlLCB0aGF0J3MgZm9yIHN1cmUuCgpmYWlyLi4gSSdsbCB0cnkgdG8gY29tZSB1cCB3
aXRoIGEgdGVzdCBjYXNlLi4gcHJlLXNjaGVkdWxlci1jb252ZXJzaW9uCml0IHdhc24ndCBhIHBy
b2JsZW0gdG8gZmFpbCBhZnRlciB0aGUgZmVuY2Ugc2Vxbm8gd2FzIGFsbG9jYXRlZCAod2VsbCwK
SSBndWVzcyB5b3UgbWlnaHQgaGF2ZSBwcm9ibGVtcyBpZiB5b3UgaGFkIDJeMzEgZmFpbHVyZXMg
aW4gYSByb3cpCgpCUiwKLVIKCj4gLURhbmllbAo+Cj4gPiBCUiwKPiA+IC1SCj4gPgo+ID4gPiAg
ICAgICAgIH0KPiA+ID4KPiA+ID4gICAgICAgICBzdWJtaXRfYXR0YWNoX29iamVjdF9mZW5jZXMo
c3VibWl0KTsKPiA+ID4gLS0KPiA+ID4gMi4zMi4wCj4gPiA+Cj4KPgo+Cj4gLS0KPiBEYW5pZWwg
VmV0dGVyCj4gU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCj4gaHR0cDovL2Js
b2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK

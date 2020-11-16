Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E23F2B514B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:38:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C9CE060900
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 19:38:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BB745666E1; Mon, 16 Nov 2020 19:38:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E982665FA;
	Mon, 16 Nov 2020 19:37:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 995D960639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:37:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8A3A3665FA; Mon, 16 Nov 2020 19:37:23 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 3903060639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:37:22 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id d12so20020948wrr.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 11:37:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FktysoifawADvA/RDMcAKN2Ahr/6b++WM0C+fv50nl8=;
 b=nqopI6kDW5ysf61GEazaw9bhs0ofNY1g8Gd5pkXELxPlmKwfbH1blpoQjruG2SIfTn
 GbD5VOUPPv1ROkxyuoSOpFR4CEYAnl0ToXbmzJ6hU+bvKdw9DFCmO+H8V9TGKK3Vbe51
 eOGgPlf1rhB8MGuIKJYMSFHE0o9sZReRlAX8V7b7BJGSIeR6tH4N3kdirPGA+QqKa9to
 eoJtRRdwEZouRXxb/CBCb8oPiD6kKJyMxmfnvv/RjdHoeOTVjfOBfBMk77AYF4EkzHNP
 m+OjeZgzCkFkRH6uYMr6vtZ91HDpouB9DTusc2c9EYgl5ETP3Llnwqk3o7l2vujZCOcq
 EReg==
X-Gm-Message-State: AOAM532XzBH9xDKESGyIogIJCL/HPY6SIEugRx8O9CPQ9nNKdpy+/6lR
 kS2sfoyiz85dZ+EZS+pvWXAWZBQ3hQfymjlXiJQ=
X-Google-Smtp-Source: ABdhPJxADI3eMAfY9bqXlkvYYYo7FnWkN55qyaeNshQ7JhmiukswfUQyQsMfa+JTAZTEe6i41VEWpkIYwE4Rc/rokJw=
X-Received: by 2002:adf:e9c9:: with SMTP id l9mr22188666wrn.124.1605555441436; 
 Mon, 16 Nov 2020 11:37:21 -0800 (PST)
MIME-Version: 1.0
References: <20201116173005.1825880-1-lee.jones@linaro.org>
 <20201116173005.1825880-7-lee.jones@linaro.org>
In-Reply-To: <20201116173005.1825880-7-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 14:37:10 -0500
Message-ID: <CADnq5_N5SrK3LxYrscubnYQWWis1xybTNfq0XCmEm=LC4frK9Q@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 06/43]
 drm/radeon/radeon_legacy_encoders: Move 'radeon_add_legacy_encoder'
 prototype to shared header
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzAgUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fbGVnYWN5X2Vu
Y29kZXJzLmM6MTc0NToxOiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmHJh
ZGVvbl9hZGRfbGVnYWN5X2VuY29kZXLigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+ICAxNzQ1
IHwgcmFkZW9uX2FkZF9sZWdhY3lfZW5jb2RlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1aW50
MzJfdCBlbmNvZGVyX2VudW0sIHVpbnQzMl90IHN1cHBvcnRlZF9kZXZpY2UpCj4gIHwgXn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fgo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNo
ZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2Vy
bmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2Zm
LWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRoYW5rcyEK
CkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2VuY29kZXJzLmMg
ICAgICB8ICA0ICstLQo+ICAuLi4vZ3B1L2RybS9yYWRlb24vcmFkZW9uX2xlZ2FjeV9lbmNvZGVy
cy5jICAgfCAgMSArCj4gIC4uLi9ncHUvZHJtL3JhZGVvbi9yYWRlb25fbGVnYWN5X2VuY29kZXJz
LmggICB8IDM0ICsrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fbGVnYWN5X2VuY29kZXJzLmgKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9lbmNvZGVycy5jIGIvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fZW5jb2RlcnMuYwo+IGluZGV4IGNlZDAyMmZhZTE5ZDcuLmI2MGEzNzNk
M2VhZDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fZW5jb2Rl
cnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2VuY29kZXJzLmMKPiBA
QCAtMzEsMTEgKzMxLDkgQEAKPiAgI2luY2x1ZGUgPGRybS9yYWRlb25fZHJtLmg+Cj4KPiAgI2lu
Y2x1ZGUgInJhZGVvbi5oIgo+ICsjaW5jbHVkZSAicmFkZW9uX2xlZ2FjeV9lbmNvZGVycy5oIgo+
ICAjaW5jbHVkZSAiYXRvbS5oIgo+Cj4gLWV4dGVybiB2b2lkCj4gLXJhZGVvbl9sZWdhY3lfYmFj
a2xpZ2h0X2luaXQoc3RydWN0IHJhZGVvbl9lbmNvZGVyICpyYWRlb25fZW5jb2RlciwKPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yICpkcm1fY29ubmVj
dG9yKTsKPiAgZXh0ZXJuIHZvaWQKPiAgcmFkZW9uX2F0b21fYmFja2xpZ2h0X2luaXQoc3RydWN0
IHJhZGVvbl9lbmNvZGVyICpyYWRlb25fZW5jb2RlciwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqZHJtX2Nvbm5lY3Rvcik7Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2xlZ2FjeV9lbmNvZGVycy5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fbGVnYWN5X2VuY29kZXJzLmMKPiBpbmRleCA0NGQwNjBm
NzUzMThlLi5lNjRmZDBjZTY3MDcwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRl
b24vcmFkZW9uX2xlZ2FjeV9lbmNvZGVycy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yYWRlb25fbGVnYWN5X2VuY29kZXJzLmMKPiBAQCAtMzUsNiArMzUsNyBAQAo+Cj4gICNpbmNs
dWRlICJyYWRlb24uaCIKPiAgI2luY2x1ZGUgInJhZGVvbl9hc2ljLmgiCj4gKyNpbmNsdWRlICJy
YWRlb25fbGVnYWN5X2VuY29kZXJzLmgiCj4gICNpbmNsdWRlICJhdG9tLmgiCj4gICNpZmRlZiBD
T05GSUdfUE1BQ19CQUNLTElHSFQKPiAgI2luY2x1ZGUgPGFzbS9iYWNrbGlnaHQuaD4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fbGVnYWN5X2VuY29kZXJzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9sZWdhY3lfZW5jb2RlcnMuaAo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uYTgwYjM4NzU1OWQ0ZAo+IC0t
LSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9sZWdhY3lf
ZW5jb2RlcnMuaAo+IEBAIC0wLDAgKzEsMzQgQEAKPiArLyogcmFkZW9uX2xlZ2FjeV9lbmNvZGVy
cy5oIC0tIFByaXZhdGUgaGVhZGVyIGZvciByYWRlb24gZHJpdmVyIC0qLSBsaW51eC1jIC0qLQo+
ICsgKgo+ICsgKiBDb3B5cmlnaHQgMTk5OSBQcmVjaXNpb24gSW5zaWdodCwgSW5jLiwgQ2VkYXIg
UGFyaywgVGV4YXMuCj4gKyAqIENvcHlyaWdodCAyMDAwIFZBIExpbnV4IFN5c3RlbXMsIEluYy4s
IEZyZW1vbnQsIENhbGlmb3JuaWEuCj4gKyAqIEFsbCByaWdodHMgcmVzZXJ2ZWQuCj4gKyAqCj4g
KyAqIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0byBhbnkg
cGVyc29uIG9idGFpbmluZyBhCj4gKyAqIGNvcHkgb2YgdGhpcyBzb2Z0d2FyZSBhbmQgYXNzb2Np
YXRlZCBkb2N1bWVudGF0aW9uIGZpbGVzICh0aGUgIlNvZnR3YXJlIiksCj4gKyAqIHRvIGRlYWwg
aW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0IGxp
bWl0YXRpb24KPiArICogdGhlIHJpZ2h0cyB0byB1c2UsIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1
Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vuc2UsCj4gKyAqIGFuZC9vciBzZWxsIGNvcGllcyBv
ZiB0aGUgU29mdHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29ucyB0byB3aG9tIHRoZQo+ICsgKiBT
b2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28sIHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZyBj
b25kaXRpb25zOgo+ICsgKgo+ICsgKiBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBhbmQgdGhp
cyBwZXJtaXNzaW9uIG5vdGljZSAoaW5jbHVkaW5nIHRoZSBuZXh0Cj4gKyAqIHBhcmFncmFwaCkg
c2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0aW9ucyBv
ZiB0aGUKPiArICogU29mdHdhcmUuCj4gKyAqCj4gKyAqIFRIRSBTT0ZUV0FSRSBJUyBQUk9WSURF
RCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBFWFBSRVNTIE9SCj4gKyAq
IElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhFIFdBUlJBTlRJRVMgT0Yg
TUVSQ0hBTlRBQklMSVRZLAo+ICsgKiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRSBB
TkQgTk9OSU5GUklOR0VNRU5ULiAgSU4gTk8gRVZFTlQgU0hBTEwKPiArICogUFJFQ0lTSU9OIElO
U0lHSFQgQU5EL09SIElUUyBTVVBQTElFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFH
RVMgT1IKPiArICogT1RIRVIgTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05U
UkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsCj4gKyAqIEFSSVNJTkcgRlJPTSwgT1VUIE9GIE9SIElO
IENPTk5FQ1RJT04gV0lUSCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUgo+ICsgKiBE
RUFMSU5HUyBJTiBUSEUgU09GVFdBUkUuCj4gKyAqCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX1JB
REVPTl9MRUdBQ1lfRU5DT0RFUlNfSF9fCj4gKyNkZWZpbmUgX19SQURFT05fTEVHQUNZX0VOQ09E
RVJTX0hfXwo+ICsKPiArdm9pZCByYWRlb25fbGVnYWN5X2JhY2tsaWdodF9pbml0KHN0cnVjdCBy
YWRlb25fZW5jb2RlciAqcmFkZW9uX2VuY29kZXIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yICpkcm1fY29ubmVjdG9yKTsKPiArCj4gKyNl
bmRpZiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBfX1JBREVPTl9MRUdBQ1lfRU5DT0RFUlNf
SF9fICovCj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=

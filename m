Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C26531D448
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Feb 2021 04:35:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9632266520
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 17 Feb 2021 03:35:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8B69566524; Wed, 17 Feb 2021 03:35:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3A0766518;
	Wed, 17 Feb 2021 03:34:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0EB796600D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Feb 2021 03:34:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E7F7E66518; Wed, 17 Feb 2021 03:34:47 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by lists.linaro.org (Postfix) with ESMTPS id 5B6BC6600D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Feb 2021 03:34:46 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id m22so19314801lfg.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Feb 2021 19:34:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=K6ClV9WQZhTlq31fja027+gqOEx4sDzqdH+51wX1w3c=;
 b=tpxwhRQudI/maMRwJZcp/OZzZd12r2mm3oH3loHXIsV2zmjkkP5Z2khHaFNGiZDDqp
 ZScmIkrmablt543c8/lvc8Q3xyk8BYrBreIsRE8JMoyPykuSHwHghLyQ85JmZmzQDeEL
 2Rfe82t2qZFh4m7DePjRzqHK3pEYfS+3u+HG6RGl1vq1izkkpaB40n5Irqtw0KYT3upn
 ll+hKLiTfkzl+vKnqBSV1FuRj/FXbKyALRHspqoWtm7ZpvD8EbwS9PwmO/sB+HQBPyQe
 yIuQtz8SbGBA/TyZKcPujo7oJxq48MHito3aDCjTT+2bV4nreGzaUadyzJyFw7wT25hE
 lvqw==
X-Gm-Message-State: AOAM533aGXfLuSZVZ6bfA9QXQ4Kxp1mqXEKwuO+b+wqE6PnkHlQyu3zZ
 fe7IK22RMYEEJ9wwOVZEr9DXdyTBjrlKwPIfjcoOpU79
X-Google-Smtp-Source: ABdhPJxysxIy/VrbdaSC0XmUvIn0Un9Pwkqyakx/MSJGvy6j8MgI5c2OADHkkDaLXvGbmN91jMuwVWZUVQm8jiSYH4E=
X-Received: by 2002:a19:9c5:: with SMTP id 188mr12965565lfj.626.1613532885268; 
 Tue, 16 Feb 2021 19:34:45 -0800 (PST)
MIME-Version: 1.0
References: <20210113140604.3615437-1-daniel.vetter@ffwll.ch>
 <CALAqxLWqgLXxry8FhVSK9xC2geiPOA+fTdC-oRENS9iG5AJz=A@mail.gmail.com>
In-Reply-To: <CALAqxLWqgLXxry8FhVSK9xC2geiPOA+fTdC-oRENS9iG5AJz=A@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 16 Feb 2021 19:34:33 -0800
Message-ID: <CALAqxLUzbpNfebqAp7E4A=fNhyJntBOAjjBumFSDco73jp=srQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm-buf: Add debug option
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

T24gVHVlLCBGZWIgMTYsIDIwMjEgYXQgNzozMCBQTSBKb2huIFN0dWx0eiA8am9obi5zdHVsdHpA
bGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIEphbiAxMywgMjAyMSBhdCA2OjA2IEFNIERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IFdlIGhh
dmUgdG9vIG1hbnkgcGVvcGxlIGFidXNpbmcgdGhlIHN0cnVjdCBwYWdlIHRoZXkgY2FuIGdldCBh
dCBidXQKPiA+IHJlYWxseSBzaG91bGRuJ3QgaW4gaW1wb3J0ZXJzLiBBc2lkZSBmcm9tIHRoYXQg
dGhlIGJhY2tpbmcgcGFnZSBtaWdodAo+ID4gc2ltcGx5IG5vdCBleGlzdCAoZm9yIGR5bmFtaWMg
cDJwIG1hcHBpbmdzKSBsb29raW5nIGF0IGl0IGFuZCB1c2luZyBpdAo+ID4gZS5nLiBmb3IgbW1h
cCBjYW4gYWxzbyB3cmVhayB0aGUgcGFnZSBoYW5kbGluZyBvZiB0aGUgZXhwb3J0ZXIKPiA+IGNv
bXBsZXRlbHkuIEltcG9ydGVycyByZWFsbHkgbXVzdCBnbyB0aHJvdWdoIHRoZSBwcm9wZXIgaW50
ZXJmYWNlIGxpa2UKPiA+IGRtYV9idWZfbW1hcCBmb3IgZXZlcnl0aGluZy4KPiA+Cj4gPiBKdXN0
IGFuIFJGQyB0byBzZWUgd2hldGhlciB0aGlzIGlkZWEgaGFzIHNvbWUgc3RpY2tpbmVzcy4gZGVm
YXVsdCB5Cj4gPiBmb3Igbm93IHRvIG1ha2Ugc3VyZSBpbnRlbC1nZngtY2kgcGlja3MgaXQgdXAg
dG9vLgo+ID4KPiA+IEknbSBzZW1pLXRlbXB0ZWQgdG8gZW5mb3JjZSB0aGlzIGZvciBkeW5hbWlj
IGltcG9ydGVycyBzaW5jZSB0aG9zZQo+ID4gcmVhbGx5IGhhdmUgbm8gZXhjdXNlIGF0IGFsbCB0
byBicmVhayB0aGUgcnVsZXMuCj4gPgo+ID4gVW5mb3J0dWFudGVseSB3ZSBjYW4ndCBzdG9yZSB0
aGUgcmlnaHQgcG9pbnRlcnMgc29tZXdoZXJlIHNhZmUgdG8gbWFrZQo+ID4gc3VyZSB3ZSBvb3Bz
IG9uIHNvbWV0aGluZyByZWNvZ25pemFibGUsIHNvIGJlc3QgaXMgdG8ganVzdCB3cmFuZ2xlCj4g
PiB0aGVtIGEgYml0IGJ5IGZsaXBwaW5nIGFsbCB0aGUgYml0cy4gQXQgbGVhc3Qgb24geDg2IGtl
cm5lbCBhZGRyZXNzZXMKPiA+IGhhdmUgYWxsIHRoZWlyIGhpZ2ggYml0cyBzZXRzIGFuZCB0aGUg
c3RydWN0IHBhZ2UgYXJyYXkgaXMgZmFpcmx5IGxvdwo+ID4gaW4gdGhlIGtlcm5lbCBtYXBwaW5n
LCBzbyBmbGlwcGluZyBhbGwgdGhlIGJpdHMgZ2l2ZXMgdXMgYSB2ZXJ5IGhpZ2gKPiA+IHBvaW50
ZXIgaW4gdXNlcnNwYWNlIGFuZCBoZW5jZSBleGNlbGxlbnQgY2hhbmNlcyBmb3IgYW4gaW52YWxp
ZAo+ID4gZGVyZWZlcmVuY2UuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4KPiA+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KPiA+IENjOiBEYXZpZCBTdGV2ZW5zIDxzdGV2ZW5zZEBjaHJvbWl1bS5vcmc+
Cj4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RtYS1idWYvS2NvbmZpZyAg
IHwgIDggKysrKysrKwo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0OSArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDUz
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9LY29uZmlnIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcKPiA+IGluZGV4IDRm
ODIyNGE2YWM5NS4uY2RkYjU0OWU1ZTU5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L0tjb25maWcKPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnCj4gPiBAQCAtNTAsNiAr
NTAsMTQgQEAgY29uZmlnIERNQUJVRl9NT1ZFX05PVElGWQo+ID4gICAgICAgICAgIFRoaXMgaXMg
bWFya2VkIGV4cGVyaW1lbnRhbCBiZWNhdXNlIHdlIGRvbid0IHlldCBoYXZlIGEgY29uc2lzdGVu
dAo+ID4gICAgICAgICAgIGV4ZWN1dGlvbiBjb250ZXh0IGFuZCBtZW1vcnkgbWFuYWdlbWVudCBi
ZXR3ZWVuIGRyaXZlcnMuCj4gPgo+ID4gK2NvbmZpZyBETUFCVUZfREVCVUcKPiA+ICsgICAgICAg
Ym9vbCAiRE1BLUJVRiBkZWJ1ZyBjaGVja3MiCj4gPiArICAgICAgIGRlZmF1bHQgeQo+ID4gKyAg
ICAgICBoZWxwCj4gPiArICAgICAgICAgVGhpcyBvcHRpb24gZW5hYmxlcyBhZGRpdGlvbmFsIGNo
ZWNrcyBmb3IgRE1BLUJVRiBpbXBvcnRlcnMgYW5kCj4gPiArICAgICAgICAgZXhwb3J0ZXJzLiBT
cGVjaWZpY2FsbHkgaXQgdmFsaWRhdGVzIHRoYXQgaW1wb3J0ZXJzIGRvIG5vdCBwZWVrIGF0IHRo
ZQo+ID4gKyAgICAgICAgIHVuZGVybHlpbmcgc3RydWN0IHBhZ2Ugd2hlbiB0aGV5IGltcG9ydCBh
IGJ1ZmZlci4KPiA+ICsKPiA+ICBjb25maWcgRE1BQlVGX1NFTEZURVNUUwo+ID4gICAgICAgICB0
cmlzdGF0ZSAiU2VsZnRlc3RzIGZvciB0aGUgZG1hLWJ1ZiBpbnRlcmZhY2VzIgo+ID4gICAgICAg
ICBkZWZhdWx0IG4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gaW5kZXggMWM5YmQ1MWRiMTEwLi42ZTQ3MjVm
N2RmZGUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiBAQCAtNjY2LDYgKzY2NiwzMCBAQCB2b2lk
IGRtYV9idWZfcHV0KHN0cnVjdCBkbWFfYnVmICpkbWFidWYpCj4gPiAgfQo+ID4gIEVYUE9SVF9T
WU1CT0xfR1BMKGRtYV9idWZfcHV0KTsKPiA+Cj4gPiArc3RhdGljIHN0cnVjdCBzZ190YWJsZSAq
IF9fbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rp
b24gZGlyZWN0aW9uKQo+ID4gK3sKPiA+ICsgICAgICAgc3RydWN0IHNnX3RhYmxlICpzZ190YWJs
ZTsKPiA+ICsKPiA+ICsgICAgICAgc2dfdGFibGUgPSBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5tYXBf
ZG1hX2J1ZihhdHRhY2gsIGRpcmVjdGlvbik7Cj4gPiArCj4gPiArI2lmIENPTkZJR19ETUFCVUZf
REVCVUcKPgo+Cj4gSGV5IERhbmllbCwKPiAgIEkganVzdCBub3RpY2VkIGEgYnVpbGQgd2Fybmlu
ZyBpbiBhIHRyZWUgSSBwdWxsZWQgdGhpcyBwYXRjaCBpbnRvLgo+IFlvdSBwcm9iYWJseSB3YW50
IHRvIHVzZSAjaWZkZWYgaGVyZSwgYXMgaWYgaXRzIG5vdCBkZWZpbmVkIHdlIHNlZToKPiBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jOjgxMzo1OiB3YXJuaW5nOiAiQ09ORklHX0RNQUJVRl9ERUJV
RyIgaXMgbm90Cj4gZGVmaW5lZCwgZXZhbHVhdGVzIHRvIDAgWy1XdW5kZWZdCj4KTmV2ZXJtaW5k
LiBJIHNlZSBpdHMgYWxyZWFkeSBmaXhlZCBpbiBkcm0tbWlzYy1uZXh0LgoKdGhhbmtzCi1qb2hu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

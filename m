Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D59665A1219
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 15:29:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 165193F8CC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Aug 2022 13:29:42 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by lists.linaro.org (Postfix) with ESMTPS id 31B85404F1
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Aug 2022 07:39:39 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id n2so10049987qkk.8
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Aug 2022 00:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Hhcgsu7pbFk3suHOsUAkZjFxR6sHopCCyzmd+tYb3mU=;
        b=S6FbYWQQKXtg4ok4vdYbKa5GaZYWTO2CevZjnWopy+Dm+6SK5gNtTOtbi19WzsAIcl
         OwLz14MaZkxviJt+5urLHCTqjgDrQKZZSS8RaVsga61n22mvj4RUiUXTwCdHek4sz0eU
         VQYqVf5+/T+Q9L4+2rgYGkfpsTww3u39mQpLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Hhcgsu7pbFk3suHOsUAkZjFxR6sHopCCyzmd+tYb3mU=;
        b=kuYDskRHao8sDuG0kfUaVksiZqprG6EjhhND1J2t7eEJGtqY6SMGZuO2rT8K8gjs58
         pLXaeTwR6zvQDRqGwklP4lT6q4wkv81RdLjOPyRPIrARyL/9D73tO2t/vpFDN32ykmK/
         nw8Rr57PxGxdKCATp5m9vwYqqxYwMyhA+oI3Ac6cqPfqrZuJoHOFQG9BgcHHuJ5DwzHd
         glAPv0pX04F1o6OIfc2SrWIC5djeYT93ogPtoUOwhDOjXrILzc4tfVvHCv2xndOpbytG
         UenUjKpfkvRZ9Xp5v99d8fE8pxQvMg08gvXPH+VZ+sftWbpfBuelRgqGj4158XzsOLpO
         HXyg==
X-Gm-Message-State: AJIora8+McsGFfIuicB3u4Jf2nWVUdD39m7uYuvSxVz2TRaJJ4cHYoJj
	iA8hGBsORHAISe4oCSzd33Xj37kf8+rCsw==
X-Google-Smtp-Source: AGRyM1s+Jy9eA9/DVjnYX/+EmXyN+ZDraGu5iPm8ls2Hoy8WJMUJ2Jl1lesYb2Q1sXUdsQnwOTZRFA==
X-Received: by 2002:a05:620a:28c9:b0:6b5:d743:dad2 with SMTP id l9-20020a05620a28c900b006b5d743dad2mr14074880qkp.257.1659425978387;
        Tue, 02 Aug 2022 00:39:38 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id d21-20020ac84e35000000b0031ed3d79556sm8487616qtw.53.2022.08.02.00.39.36
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 00:39:37 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id r3so22451758ybr.6
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Aug 2022 00:39:36 -0700 (PDT)
X-Received: by 2002:a25:268d:0:b0:671:7030:f9d7 with SMTP id
 m135-20020a25268d000000b006717030f9d7mr14820256ybm.513.1659425976578; Tue, 02
 Aug 2022 00:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <B4B3306F-C3B4-4594-BDF9-4BBC59C628C9@soulik.info>
In-Reply-To: <B4B3306F-C3B4-4594-BDF9-4BBC59C628C9@soulik.info>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 2 Aug 2022 16:39:25 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AL=OejdaubnYDRF4M1EKyStZP_FAMPz4CJ=KCa_8QjaA@mail.gmail.com>
Message-ID: <CAAFQd5AL=OejdaubnYDRF4M1EKyStZP_FAMPz4CJ=KCa_8QjaA@mail.gmail.com>
To: ayaka <ayaka@soulik.info>
X-MailFrom: tfiga@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S6O6ASOGFSQEWM5EVWTA4WAF62KNBP5Q
X-Message-ID-Hash: S6O6ASOGFSQEWM5EVWTA4WAF62KNBP5Q
X-Mailman-Approved-At: Thu, 25 Aug 2022 13:29:07 +0000
CC: Hsia-Jun Li <randy.li@synaptics.com>, linux-media@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] [Draft]: media: videobuf2-dma-heap: add a vendor defined memory runtine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S6O6ASOGFSQEWM5EVWTA4WAF62KNBP5Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBdWcgMSwgMjAyMiBhdCA4OjQzIFBNIGF5YWthIDxheWFrYUBzb3VsaWsuaW5mbz4g
d3JvdGU6DQo+DQo+DQo+DQo+IFNlbnQgZnJvbSBteSBpUGFkDQo+DQo+ID4gT24gQXVnIDEsIDIw
MjIsIGF0IDU6NDYgUE0sIFRvbWFzeiBGaWdhIDx0ZmlnYUBjaHJvbWl1bS5vcmc+IHdyb3RlOg0K
PiA+DQo+ID4g77u/Q0FVVElPTjogRW1haWwgb3JpZ2luYXRlZCBleHRlcm5hbGx5LCBkbyBub3Qg
Y2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IHJlY29nbml6ZSB0aGUg
c2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuDQo+ID4NCj4gPg0KPiA+PiBPbiBN
b24sIEF1ZyAxLCAyMDIyIGF0IDM6NDQgUE0gSHNpYS1KdW4gTGkgPFJhbmR5LkxpQHN5bmFwdGlj
cy5jb20+IHdyb3RlOg0KPiA+Pj4gT24gOC8xLzIyIDE0OjE5LCBUb21hc3ogRmlnYSB3cm90ZToN
Cj4gPj4gSGVsbG8gVG9tYXN6DQo+ID4+PiA/SGkgUmFuZHksDQo+ID4+PiBPbiBNb24sIEF1ZyAx
LCAyMDIyIGF0IDU6MjEgQU0gPGF5YWthQHNvdWxpay5pbmZvPiB3cm90ZToNCj4gPj4+PiBGcm9t
OiBSYW5keSBMaSA8YXlha2FAc291bGlrLmluZm8+DQo+ID4+Pj4gVGhpcyBtb2R1bGUgaXMgc3Rp
bGwgYXQgYSBlYXJseSBzdGFnZSwgSSB3cm90ZSB0aGlzIGZvciBzaG93aW5nIHdoYXQNCj4gPj4+
PiBBUElzIHdlIG5lZWQgaGVyZS4NCj4gPj4+PiBMZXQgbWUgZXhwbGFpbiB3aHkgd2UgbmVlZCBz
dWNoIGEgbW9kdWxlIGhlcmUuDQo+ID4+Pj4gSWYgeW91IHdvbid0IGFsbG9jYXRlIGJ1ZmZlcnMg
ZnJvbSBhIFY0TDIgTTJNIGRldmljZSwgdGhpcyBtb2R1bGUNCj4gPj4+PiBtYXkgbm90IGJlIHZl
cnkgdXNlZnVsLiBJIGFtIHN1cmUgdGhlIG1vc3Qgb2YgdXNlcnMgd29uJ3Qga25vdyBhDQo+ID4+
Pj4gZGV2aWNlIHdvdWxkIHJlcXVpcmUgdGhlbSBhbGxvY2F0ZSBidWZmZXJzIGZyb20gYSBETUEt
SGVhcCB0aGVuDQo+ID4+Pj4gaW1wb3J0IHRob3NlIGJ1ZmZlcnMgaW50byBhIFY0TDIncyBxdWV1
ZS4NCj4gPj4+PiBUaGVuIHRoZSBxdWVzdGlvbiBnb2VzIGJhY2sgdG8gd2h5IERNQS1IZWFwLiBG
cm9tIHRoZSBBbmRyb2lkJ3MNCj4gPj4+PiBkZXNjcmlwdGlvbiwgd2Uga25vdyBpdCBpcyBhYm91
dCB0aGUgY29weXJpZ2h0J3MgRFJNLg0KPiA+Pj4+IFdoZW4gd2UgYWxsb2NhdGUgYSBidWZmZXIg
aW4gYSBETUEtSGVhcCwgaXQgbWF5IHJlZ2lzdGVyIHRoYXQgYnVmZmVyDQo+ID4+Pj4gaW4gdGhl
IHRydXN0ZWQgZXhlY3V0aW9uIGVudmlyb25tZW50IHNvIHRoZSBmaXJtd2FyZSB3aGljaCBpcyBy
dW5uaW5nDQo+ID4+Pj4gb3IgY291bGQgb25seSBiZSBhY2NjZXNlZCBmcm9tIHRoZXJlIGNvdWxk
IHVzZSB0aGF0IGJ1ZmZlciBsYXRlci4NCj4gPj4+PiBUaGUgYW5zd2VyIGFib3ZlIGxlYWRzIHRv
IGFub3RoZXIgdGhpbmcgd2hpY2ggaXMgbm90IGRvbmUgaW4gdGhpcw0KPiA+Pj4+IHZlcnNpb24s
IHRoZSBETUEgbWFwcGluZy4gQWx0aG91Z2ggaW4gc29tZSBwbGF0Zm9ybXMsIGEgRE1BLUhlYXAN
Cj4gPj4+PiByZXNwb25zZXMgYSBJT01NVSBkZXZpY2UgYXMgd2VsbC4gRm9yIHRoZSBnZW5lcm5h
bCBwdXJwb3NlLCB3ZSB3b3VsZA0KPiA+Pj4+IGJlIGJldHRlciBhc3N1bWluZyB0aGUgZGV2aWNl
IG1hcHBpbmcgc2hvdWxkIGJlIGRvbmUgZm9yIGVhY2ggZGV2aWNlDQo+ID4+Pj4gaXRzZWxmLiBU
aGUgcHJvYmxlbSBoZXJlIHdlIG9ubHkga25vdyBhbGxvY19kZXZzIGluIHRob3NlIERNQWJ1Zg0K
PiA+Pj4+IG1ldGhvZHMsIHdoaWNoIGFyZSBETUEtaGVhcHMgaW4gbXkgZGVzaWduLCB0aGUgZGV2
aWNlIGZyb20gdGhlIHF1ZXVlDQo+ID4+Pj4gaXMgbm90IGVub3VnaCwgYSBwbGFuZSBtYXkgcmVx
dWVzdHMgYW5vdGhlciBJT01NVSBkZXZpY2Ugb3IgdGFibGUNCj4gPj4+PiBmb3IgbWFwcGluZy4N
Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBSYW5keSBMaSA8YXlha2FAc291bGlrLmluZm8+DQo+ID4+
Pj4gLS0tDQo+ID4+Pj4gZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL0tjb25maWcgICAg
ICAgIHwgICA2ICsNCj4gPj4+PiBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvTWFrZWZp
bGUgICAgICAgfCAgIDEgKw0KPiA+Pj4+IC4uLi9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1k
bWEtaGVhcC5jICAgICB8IDM1MCArKysrKysrKysrKysrKysrKysNCj4gPj4+PiBpbmNsdWRlL21l
ZGlhL3ZpZGVvYnVmMi1kbWEtaGVhcC5oICAgICAgICAgICAgfCAgMzAgKysNCj4gPj4+PiA0IGZp
bGVzIGNoYW5nZWQsIDM4NyBpbnNlcnRpb25zKCspDQo+ID4+Pj4gY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWhlYXAuYw0KPiA+
Pj4+IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL21lZGlhL3ZpZGVvYnVmMi1kbWEtaGVhcC5o
DQo+ID4+PiBGaXJzdCBvZiBhbGwsIHRoYW5rcyBmb3IgdGhlIHNlcmllcy4NCj4gPj4+IFBvc3Np
Ymx5IGEgc3R1cGlkIHF1ZXN0aW9uLCBidXQgd2h5IG5vdCBqdXN0IGFsbG9jYXRlIHRoZSBETUEt
YnVmcw0KPiA+Pj4gZGlyZWN0bHkgZnJvbSB0aGUgRE1BLWJ1ZiBoZWFwIGRldmljZSBpbiB0aGUg
dXNlcnNwYWNlIGFuZCBqdXN0IGltcG9ydA0KPiA+Pj4gdGhlIGJ1ZmZlcnMgdG8gdGhlIFY0TDIg
ZGV2aWNlIHVzaW5nIFY0TDJfTUVNT1JZX0RNQUJVRj8NCj4gPj4gU29tZXRpbWVzIHRoZSBhbGxv
Y2F0aW9uIHBvbGljeSBjb3VsZCBiZSB2ZXJ5IGNvbXBsZXgsIGxldCdzIHN1cHBvc2UgYQ0KPiA+
PiBtdWx0aXBsZSBwbGFuZXMgcGl4ZWwgZm9ybWF0IGVuYWJsaW5nIHdpdGggZnJhbWUgYnVmZmVy
IGNvbXByZXNzaW9uLg0KPiA+PiBJdHMgbHVtYSwgY2hyb21hIGRhdGEgY291bGQgYmUgYWxsb2Nh
dGVkIGZyb20gYSBwb29sIHdoaWNoIGlzIGRlbGVnYXRlZA0KPiA+PiBmb3IgbGFyZ2UgYnVmZmVy
cyB3aGlsZSBpdHMgbWV0YWRhdGEgd291bGQgY29tZSBmcm9tIGEgcG9vbCB3aGljaCBtYW55DQo+
ID4+IHVzZXJzIGNvdWxkIHRha2Ugc29tZSBmZXcgc2xpY2VzIGZyb20gaXQobGlrZXMgc3lzdGVt
IHBvb2wpLg0KPiA+PiBUaGVuIHdoZW4gd2UgaGF2ZSBhIG5ldyB1c2VycyBrbm93aW5nIG5vdGhp
bmcgYWJvdXQgdGhpcyBwbGF0Zm9ybSwgaWYgd2UNCj4gPj4ganVzdCBjb25maWd1cmUgdGhlIGFs
bG9jX2RldnMgaW4gZWFjaCBxdWV1ZXMgd2VsbC4gVGhlIHVzZXIgd29uJ3QgbmVlZA0KPiA+PiB0
byBrbm93IHRob3NlIGNvbXBsZXggcnVsZXMuDQo+ID4+IFRoZSByZWFsIHNpdHVhdGlvbiBjb3Vs
ZCBiZSBtb3JlIGNvbXBsZXgsIFNhbXN1bmcgTUZDJ3MgbGVmdCBhbmQgcmlnaHQNCj4gPj4gYmFu
a3MgY291bGQgYmUgcmVnYXJkZWQgYXMgdHdvIHBvb2xzLCBtYW55IGRldmljZXMgd291bGQgYmVu
ZWZpdCBmcm9tDQo+ID4+IHRoaXMgZWl0aGVyIGZyb20gdGhlIGFsbG9jYXRpb24gdGltZXMgb3Ig
dGhlIHNlY3VyaXR5IGJ1ZmZlcnMgcG9saWN5Lg0KPiA+PiBJbiBvdXIgZGVzaWduLCB3aGVuIHdl
IG5lZWQgdG8gZG8gc29tZSBzZWN1cml0eSBkZWNvZGluZyhEUk0gdmlkZW8pLA0KPiA+PiBjb2Rl
Y3MyIHdvdWxkIGFsbG9jYXRlIGJ1ZmZlcnMgZnJvbSB0aGUgcG9vbCBkZWxlZ2F0ZWQgZm9yIHRo
YXQuIFdoaWxlDQo+ID4+IHRoZSBub24tRFJNIHZpZGVvLCB1c2VycyBjb3VsZCBub3QgY2FyZSBh
Ym91dCB0aGlzLg0KPiA+DQo+ID4gSSdtIGEgbGl0dGxlIGJpdCBzdXJwcmlzZWQgYWJvdXQgdGhp
cywgYmVjYXVzZSBvbiBBbmRyb2lkIGFsbCB0aGUNCj4gPiBncmFwaGljcyBidWZmZXJzIGFyZSBh
bGxvY2F0ZWQgZnJvbSB0aGUgc3lzdGVtIElBbGxvY2F0b3IgYW5kIGltcG9ydGVkDQo+ID4gdG8g
dGhlIHNwZWNpZmljIGRldmljZXMuDQo+IEluIHRoZSBub24tdHVubmVsIG1vZGUsIHllcyBpdCBp
cy4gV2hpbGUgdGhlIHR1bm5lbCBtb2RlIGlzIGNvbXBsZXRlbHkgdmVuZG9yIGRlZmluZWQuIE5l
aXRoZXIgSFdDIG5vciBjb2RlYzIgY2FyZXMgYWJvdXQgd2hlcmUgdGhlIGJ1ZmZlcnMgY29taW5n
IGZyb20sIHlvdSBjb3VsZCBkbyB3aGF0IGV2ZXIgeW91IHdhbnQuDQo+DQo+IEJlc2lkZXMgdGhl
cmUgYXJlIERSTSB2aWRlbyBpbiBHTlUgTGludXggcGxhdGZvcm0sIEkgaGVhcmQgdGhlIHdlYmtp
dCBoYXMgbWFkZSBodWdlIGVmZm9ydCBoZXJlIGFuZCBQbGF5cmVhZHkgaXMgb25lIGNvdWxkIHdv
cmsgaW4gbm9uLUFuZHJvaWQgTGludXguDQo+ID4gV291bGQgaXQgbWFrZSBzZW5zZSB0byBpbnN0
ZWFkIGV4dGVuZCB0aGUgVUFQSSB0byBleHBvc2UgZW5vdWdoDQo+ID4gaW5mb3JtYXRpb24gYWJv
dXQgdGhlIGFsbG9jYXRpb24gcmVxdWlyZW1lbnRzIHRvIHRoZSB1c2Vyc3BhY2UsIHNvIGl0DQo+
ID4gY2FuIGFsbG9jYXRlIGNvcnJlY3RseT8NCj4gWWVzLCBpdCBjb3VsZC4gQnV0IGFzIEkgc2Fp
ZCBpdCB3b3VsZCBuZWVkIHRoZSB1c2VycyB0byBkbyBtb3JlIHdvcmtzLg0KPiA+IE15IHJlYXNv
bmluZyBoZXJlIGlzIHRoYXQgaXQncyBub3QgYSBkcml2ZXIncyBkZWNpc2lvbiB0byBhbGxvY2F0
ZQ0KPiA+IGZyb20gYSBETUEtYnVmIGhlYXAgKGFuZCB3aGljaCBvbmUpIG9yIG5vdC4gSXQncyB0
aGUgdXNlcnNwYWNlIHdoaWNoDQo+ID4ga25vd3MgdGhhdCwgYmFzZWQgb24gdGhlIHNwZWNpZmlj
IHVzZSBjYXNlIHRoYXQgaXQgd2FudHMgdG8gZnVsZmlsbC4NCj4gQWx0aG91Z2ggSSB3b3VsZCBs
aWtlIHRvIGxldCB0aGUgdXNlcnMgZGVjaWRlIHRoYXQsIHVzZXJzIGp1c3QgY2Fu4oCZdCBkbyB0
aGF0IHdoaWNoIHdvdWxkIHZpb2xhdGUgdGhlIHNlY3VyaXR5IHJ1bGVzIGluIHNvbWUgcGxhdGZv
cm1zLg0KPiBGb3IgZXhhbXBsZSwgIHZpZGVvIGNvZGVjIGFuZCBkaXNwbGF5IGRldmljZSBjb3Vs
ZCBvbmx5IGFjY2VzcyBhIHJlZ2lvbiBvZiBtZW1vcnksIGFueSBvdGhlciBkZXZpY2Ugb3IgdHJ1
c3RlZCBhcHBzIGNhbuKAmXQgYWNjZXNzIGl0LiBVc2VycyBoYXZlIHRvIGFsbG9jYXRlIHRoZSBi
dWZmZXIgZnJvbSB0aGUgcG9vbCB0aGUgdmVuZG9yIGRlY2lkZWQuDQo+DQo+IFNvIHdoeSBub3Qg
d2Ugb2ZmZXIgYSBxdWljayB3YXkgdGhhdCB1c2VycyBkb27igJl0IG5lZWQgdG8gdHJ5IGFuZCBl
cnJvci4NCg0KSW4gcHJpbmNpcGxlLCBJJ20gbm90IGFnYWluc3QgaW50ZWdyYXRpbmcgRE1BLWJ1
ZiBoZWFwIHdpdGggdmIyLA0KaG93ZXZlciBJIHNlZSBzb21lIHByb2JsZW1zIEkgbWVudGlvbmVk
IGJlZm9yZToNCg0KMSkgSG93IHdvdWxkIHRoZSBkcml2ZXIga25vdyBpZiBpdCBzaG91bGQgYWxs
b2NhdGUgZnJvbSBhIERNQS1idWYgaGVhcCBvciBub3Q/DQoyKSBIb3cgd291bGQgdGhlIGRyaXZl
ciBrbm93IHdoaWNoIGhlYXAgdG8gYWxsb2NhdGUgZnJvbT8NCjMpIEhvdyB3b3VsZCB0aGUgaGVh
cCBrbm93IGhvdyB0byBhbGxvY2F0ZSBwcm9wZXJseSBmb3IgdGhlIGRldmljZT8NCg0KQmVzdCBy
ZWdhcmRzLA0KVG9tYXN6DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

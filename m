Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5424EA962
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 10:33:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 974363EC0C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 08:33:39 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	by lists.linaro.org (Postfix) with ESMTPS id A4AA33EBCE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 08:33:35 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id p12-20020a05600c430c00b0038cbdf52227so997948wme.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Mar 2022 01:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=an4yi95NWUJ9vdfubXa4o7OLSmBUdmTSmO+lpoU9caY=;
        b=F43INBPcC5vRzzbxc8D+H4OoGiyyOqLzBfWQrR6cpJvhga/EUYqiLUFMULT+SX5wu0
         qtPeh+mY8NpqAyjkyuxlFIyzdIvisj+VC/zt6ZDFafTiYByktf2a/N6kge+ZPecEjJMN
         c/WoMMtwfmiGKbaumyguHGYxtinOxnjo0ac5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=an4yi95NWUJ9vdfubXa4o7OLSmBUdmTSmO+lpoU9caY=;
        b=0FnQZYvFAB0Wi4uPDQifZAUd8CtTMw30CVc3UdEN4q2cOXUJEqWTiWmPAU4+jiP3sq
         iYsiywecjlHOC8KIILCQf0dP3hU6bfgtGfZLs3Fw+6HcR4OqjiRKMOShzhoKullIpXKp
         Ai4PmrdWG+Ds/L7b48EKR6sVbZOeuWkYB0sc2Av6VW12Jbnr0q1Kp1H1ZXc03GYEG8FO
         VWE89R9cNWyBAltvztHHveyyt99ztVS5HxUVbYfRvmkcDdRm6LlesjxWrljQbFO//+sy
         iz9q45MHxIYbaMX1LZTH+8HF7SjoQ4ZGby4yea7X1WSrPUM4WF2sKSA4t60Md+XRzxl6
         FZQA==
X-Gm-Message-State: AOAM533Lk8Clfc4diUqizK1AcEKt1IEQ2FS9UcyncMB3iza+jClKqXnJ
	bb3VYu1TRg1VQsytElcuucyEAw==
X-Google-Smtp-Source: ABdhPJyq12cPHviwdu6GfWLAzr9FpplfeSQWQrp5Vs5dyxxFM7cg+QYaILgh3GJFF9HnV5mfJUNEpw==
X-Received: by 2002:a1c:2544:0:b0:381:18a:a46d with SMTP id l65-20020a1c2544000000b00381018aa46dmr5467015wml.26.1648542814691;
        Tue, 29 Mar 2022 01:33:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id q2-20020adff502000000b00203f17d73dbsm14021596wro.12.2022.03.29.01.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 01:33:34 -0700 (PDT)
Date: Tue, 29 Mar 2022 10:33:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Paul Cercueil <paul@crapouillou.net>
Message-ID: <YkLEXJzs8ukrxG8s@phenom.ffwll.local>
Mail-Followup-To: Paul Cercueil <paul@crapouillou.net>,
	Jonathan Cameron <jic23@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Sumit Semwal <sumit.semwal@linaro.org>,
	linaro-mm-sig@lists.linaro.org,
	Alexandru Ardelean <ardeleanalex@gmail.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
References: <20220207125933.81634-1-paul@crapouillou.net>
 <20220213184616.669b490b@jic23-huawei>
 <N8XC7R.5FP2M8552CGT3@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <N8XC7R.5FP2M8552CGT3@crapouillou.net>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: TPGODPNFQ2VJM3H3CVXYJ6HNIYSZVGKI
X-Message-ID-Hash: TPGODPNFQ2VJM3H3CVXYJ6HNIYSZVGKI
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Cameron <jic23@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Alexandru Ardelean <ardeleanalex@gmail.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 00/12] iio: buffer-dma: write() and new DMABUF based API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TPGODPNFQ2VJM3H3CVXYJ6HNIYSZVGKI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBGZWIgMTUsIDIwMjIgYXQgMDU6NDM6MzVQTSArMDAwMCwgUGF1bCBDZXJjdWVpbCB3
cm90ZToNCj4gSGkgSm9uYXRoYW4sDQo+IA0KPiBMZSBkaW0uLCBmw6l2ci4gMTMgMjAyMiBhdCAx
ODo0NjoxNiArMDAwMCwgSm9uYXRoYW4gQ2FtZXJvbg0KPiA8amljMjNAa2VybmVsLm9yZz4gYSDD
qWNyaXQgOg0KPiA+IE9uIE1vbiwgIDcgRmViIDIwMjIgMTI6NTk6MjEgKzAwMDANCj4gPiBQYXVs
IENlcmN1ZWlsIDxwYXVsQGNyYXBvdWlsbG91Lm5ldD4gd3JvdGU6DQo+ID4gDQo+ID4gPiAgSGkg
Sm9uYXRoYW4sDQo+ID4gPiANCj4gPiA+ICBUaGlzIGlzIHRoZSBWMiBvZiBteSBwYXRjaHNldCB0
aGF0IGludHJvZHVjZXMgYSBuZXcgdXNlcnNwYWNlDQo+ID4gPiBpbnRlcmZhY2UNCj4gPiA+ICBi
YXNlZCBvbiBETUFCVUYgb2JqZWN0cyB0byBjb21wbGVtZW50IHRoZSBmaWxlaW8gQVBJLCBhbmQg
YWRkcw0KPiA+ID4gd3JpdGUoKQ0KPiA+ID4gIHN1cHBvcnQgdG8gdGhlIGV4aXN0aW5nIGZpbGVp
byBBUEkuDQo+ID4gDQo+ID4gSGkgUGF1bCwNCj4gPiANCj4gPiBJdCdzIGJlZW4gYSBsaXR0bGUg
d2hpbGUuIFBlcmhhcHMgeW91IGNvdWxkIHN1bW1hcml6ZSB0aGUgdmFyaW91cyB2aWV3DQo+ID4g
cG9pbnRzIGFyb3VuZCB0aGUgYXBwcm9wcmlhdGVuZXNzIG9mIHVzaW5nIERNQUJVRiBmb3IgdGhp
cz8NCj4gPiBJIGFwcHJlY2lhdGUgaXQgaXMgYSB0cmlja3kgdG9waWMgdG8gZGlzdGlsIGludG8g
YSBicmllZiBzdW1tYXJ5IGJ1dA0KPiA+IEkga25vdyBJIHdvdWxkIGZpbmQgaXQgdXNlZnVsIGV2
ZW4gaWYgbm8gb25lIGVsc2UgZG9lcyENCj4gDQo+IFNvIHdlIHdhbnQgdG8gaGF2ZSBhIGhpZ2gt
c3BlZWQgaW50ZXJmYWNlIHdoZXJlIGJ1ZmZlcnMgb2Ygc2FtcGxlcyBhcmUNCj4gcGFzc2VkIGFy
b3VuZCBiZXR3ZWVuIElJTyBkZXZpY2VzIGFuZCBvdGhlciBkZXZpY2VzIChlLmcuIFVTQiBvciBu
ZXR3b3JrKSwNCj4gb3IgbWFkZSBhdmFpbGFibGUgdG8gdXNlcnNwYWNlIHdpdGhvdXQgY29weWlu
ZyB0aGUgZGF0YS4NCj4gDQo+IERNQUJVRiBpcywgYXQgbGVhc3QgaW4gdGhlb3J5LCBleGFjdGx5
IHdoYXQgd2UgbmVlZC4gUXVvdGluZyB0aGUNCj4gZG9jdW1lbnRhdGlvbg0KPiAoaHR0cHM6Ly93
d3cua2VybmVsLm9yZy9kb2MvaHRtbC92NS4xNS9kcml2ZXItYXBpL2RtYS1idWYuaHRtbCk6DQo+
ICJUaGUgZG1hLWJ1ZiBzdWJzeXN0ZW0gcHJvdmlkZXMgdGhlIGZyYW1ld29yayBmb3Igc2hhcmlu
ZyBidWZmZXJzIGZvcg0KPiBoYXJkd2FyZSAoRE1BKSBhY2Nlc3MgYWNyb3NzIG11bHRpcGxlIGRl
dmljZSBkcml2ZXJzIGFuZCBzdWJzeXN0ZW1zLCBhbmQgZm9yDQo+IHN5bmNocm9uaXppbmcgYXN5
bmNocm9ub3VzIGhhcmR3YXJlIGFjY2Vzcy4gVGhpcyBpcyB1c2VkLCBmb3IgZXhhbXBsZSwgYnkN
Cj4gZHJtIOKAnHByaW1l4oCdIG11bHRpLUdQVSBzdXBwb3J0LCBidXQgaXMgb2YgY291cnNlIG5v
dCBsaW1pdGVkIHRvIEdQVSB1c2UNCj4gY2FzZXMuIg0KPiANCj4gVGhlIHByb2JsZW0gaXMgdGhh
dCByaWdodCBub3cgRE1BQlVGIGlzIG9ubHkgcmVhbGx5IHVzZWQgYnkgRFJNLCBhbmQgdG8NCj4g
cXVvdGUgRGFuaWVsLCAiZG1hLWJ1ZiBsb29rcyBsaWtlIHNvbWV0aGluZyBzdXBlciBnZW5lcmlj
IGFuZCB1c2VmdWwsIHVudGlsDQo+IHlvdSByZWFsaXplIHRoYXQgdGhlcmUncyBhIG1ldHJpYyB0
b24gb2YgZ3B1L2FjY2VsZXJhdG9yIGJhZ2FnZSBwaWxlZCBpbiIuDQo+IA0KPiBTdGlsbCwgaXQg
c2VlbXMgdG8gYmUgdGhlIG9ubHkgdmlhYmxlIG9wdGlvbi4gV2UgY291bGQgYWRkIGEgY3VzdG9t
DQo+IGJ1ZmZlci1wYXNzaW5nIGludGVyZmFjZSwgYnV0IHRoYXQgd291bGQgbWVhbiBpbXBsZW1l
bnRpbmcgdGhlIHNhbWUNCj4gYnVmZmVyLXBhc3NpbmcgaW50ZXJmYWNlIG9uIHRoZSBuZXR3b3Jr
IGFuZCBVU0Igc3RhY2tzLCBhbmQgYmVmb3JlIHdlIGtub3cNCj4gaXQgd2UgcmUtaW52ZW50ZWQg
RE1BQlVGcy4NCg0KZG1hLWJ1ZiBhbHNvIGRvZXNuJ3Qgc3VwcG9ydCBzaGFyaW5nIHdpdGggbmV0
d29yayBhbmQgdXNiIHN0YWNrcywgc28gSSdtIGENCmJpdCBjb25mdXNlZCB3aHkgZXhhY3RseSB0
aGlzIGlzIHVzZWZ1bD8NCg0KU28geWVhaCB1bmxlc3MgdGhlcmUncyBzb21lIHNoYXJpbmcgZ29p
bmcgb24gd2l0aCBncHUgc3R1ZmYgKGZvciBkYXRhDQpwcm9jZXNzaW5nIG1heWJlKSBJJ20gbm90
IHN1cmUgdGhpcyBtYWtlcyBhIGxvdCBvZiBzZW5zZSByZWFsbHkuIE9yIGF0DQpsZWFzdCBzb21l
IHplcm8tY29weSBzaGFyaW5nIGJldHdlZW4gZHJpdmVycywgYnV0IGV2ZW4gdGhhdCB3b3VsZA0K
bWluaW1hbGx5IHJlcXVpcmUgYSBkbWEtYnVmIGltcG9ydCBpb2N0bCBvZiBzb21lIHNvcnRzLiBX
aGljaCBJIGVpdGhlcg0KbWlzc2VkIG9yIGRvZXNuJ3QgZXhpc3QuDQoNCklmIHRoZXJlJ3Mgbm9u
ZSBvZiB0aGF0IHRoZW4ganVzdCBoYW5kLXJvbGwgeW91ciBidWZmZXIgaGFuZGxpbmcgY29kZQ0K
KHhhcnJheSBpcyBjaGVhcCB0byB1c2UgaW4gdGVybXMgb2YgY29kZSBmb3IgdGhpcyksIHlvdSBj
YW4gYWx3YXlzIGFkZA0KZG1hLWJ1ZiBpbXBvcnQvZXhwb3J0IGxhdGVyIG9uIHdoZW4gdGhlIG5l
ZWQgYXJpc2VzLg0KDQpTY3JvbGxpbmcgdGhyb3VnaCBwYXRjaGVzIHlvdSBvbmx5IGhhdmUgZG1h
LWJ1ZiBleHBvcnQsIGJ1dCBubyBpbXBvcnRpbmcsDQpzbyB0aGUgdXNlLWNhc2UgdGhhdCB3b3Jr
cyBpcyB3aXRoIG9uZSBvZiB0aGUgZXhpc3Rpbmcgc3Vic3lzdGVtcyB0aGF0DQpzdXBwb3J0aW5n
IGRtYS1idWYgaW1wb3J0aW5nLg0KDQpJIHRoaW5rIG1pbmltYWxseSB3ZSBuZWVkIHRoZSB1c2Ut
Y2FzZSAoaW4gZm9ybSBvZiBjb2RlKSB0aGF0IG5lZWRzIHRoZQ0KYnVmZmVyIHNoYXJpbmcgaGVy
ZS4NCi1EYW5pZWwNCg0KPiBDaGVlcnMsDQo+IC1QYXVsDQo+IA0KPiANCj4gPiA+IA0KPiA+ID4g
IENoYW5nZXMgc2luY2UgdjE6DQo+ID4gPiANCj4gPiA+ICAtIHRoZSBwYXRjaGVzIHRoYXQgd2Vy
ZSBtZXJnZWQgaW4gdjEgaGF2ZSBiZWVuIChvYnZpb3VzbHkpIGRyb3BwZWQNCj4gPiA+IGZyb20N
Cj4gPiA+ICAgIHRoaXMgcGF0Y2hzZXQ7DQo+ID4gPiAgLSB0aGUgcGF0Y2ggdGhhdCB3YXMgc2V0
dGluZyB0aGUgd3JpdGUtY29tYmluZSBjYWNoZSBzZXR0aW5nIGhhcw0KPiA+ID4gYmVlbg0KPiA+
ID4gICAgZHJvcHBlZCBhcyB3ZWxsLCBhcyBpdCB3YXMgc2ltcGx5IG5vdCB1c2VmdWwuDQo+ID4g
PiAgLSBbMDEvMTJdOg0KPiA+ID4gICAgICAqIE9ubHkgcmVtb3ZlIHRoZSBvdXRnb2luZyBxdWV1
ZSwgYW5kIGtlZXAgdGhlIGluY29taW5nIHF1ZXVlLA0KPiA+ID4gYXMgd2UNCj4gPiA+ICAgICAg
ICB3YW50IHRoZSBidWZmZXIgdG8gc3RhcnQgc3RyZWFtaW5nIGRhdGEgYXMgc29vbiBhcyBpdCBp
cw0KPiA+ID4gZW5hYmxlZC4NCj4gPiA+ICAgICAgKiBSZW1vdmUgSUlPX0JMT0NLX1NUQVRFX0RF
UVVFVUVELCBzaW5jZSBpdCBpcyBub3cgZnVuY3Rpb25hbGx5DQo+ID4gPiB0aGUNCj4gPiA+ICAg
ICAgICBzYW1lIGFzIElJT19CTE9DS19TVEFURV9ET05FLg0KPiA+ID4gIC0gWzAyLzEyXToNCj4g
PiA+ICAgICAgKiBGaXggYmxvY2stPnN0YXRlIG5vdCBiZWluZyByZXNldCBpbg0KPiA+ID4gICAg
ICAgIGlpb19kbWFfYnVmZmVyX3JlcXVlc3RfdXBkYXRlKCkgZm9yIG91dHB1dCBidWZmZXJzLg0K
PiA+ID4gICAgICAqIE9ubHkgdXBkYXRlIGJsb2NrLT5ieXRlc191c2VkIG9uY2UgYW5kIGFkZCBh
IGNvbW1lbnQgYWJvdXQNCj4gPiA+IHdoeSB3ZQ0KPiA+ID4gICAgICAgIHVwZGF0ZSBpdC4NCj4g
PiA+ICAgICAgKiBBZGQgYSBjb21tZW50IGFib3V0IHdoeSB3ZSdyZSBzZXR0aW5nIGEgZGlmZmVy
ZW50IHN0YXRlIGZvcg0KPiA+ID4gb3V0cHV0DQo+ID4gPiAgICAgICAgYnVmZmVycyBpbiBpaW9f
ZG1hX2J1ZmZlcl9yZXF1ZXN0X3VwZGF0ZSgpDQo+ID4gPiAgICAgICogUmVtb3ZlIHVzZWxlc3Mg
Y2FzdCB0byBib29sICghISkgaW4gaWlvX2RtYV9idWZmZXJfaW8oKQ0KPiA+ID4gIC0gWzA1LzEy
XToNCj4gPiA+ICAgICAgT25seSBhbGxvdyB0aGUgbmV3IElPQ1RMcyBvbiB0aGUgYnVmZmVyIEZE
IGNyZWF0ZWQgd2l0aA0KPiA+ID4gICAgICBJSU9fQlVGRkVSX0dFVF9GRF9JT0NUTCgpLg0KPiA+
ID4gIC0gWzEyLzEyXToNCj4gPiA+ICAgICAgKiBFeHBsaWNpdGx5IHN0YXRlIHRoYXQgdGhlIG5l
dyBpbnRlcmZhY2UgaXMgb3B0aW9uYWwgYW5kIGlzDQo+ID4gPiAgICAgICAgbm90IGltcGxlbWVu
dGVkIGJ5IGFsbCBkcml2ZXJzLg0KPiA+ID4gICAgICAqIFRoZSBJT0NUTHMgY2FuIG5vdyBvbmx5
IGJlIGNhbGxlZCBvbiB0aGUgYnVmZmVyIEZEIHJldHVybmVkIGJ5DQo+ID4gPiAgICAgICAgSUlP
X0JVRkZFUl9HRVRfRkRfSU9DVEwuDQo+ID4gPiAgICAgICogTW92ZSB0aGUgcGFnZSB1cCBhIGJp
dCBpbiB0aGUgaW5kZXggc2luY2UgaXQgaXMgY29yZSBzdHVmZg0KPiA+ID4gYW5kIG5vdA0KPiA+
ID4gICAgICAgIGRyaXZlci1zcGVjaWZpYy4NCj4gPiA+IA0KPiA+ID4gIFRoZSBwYXRjaGVzIG5v
dCBsaXN0ZWQgaGVyZSBoYXZlIG5vdCBiZWVuIG1vZGlmaWVkIHNpbmNlIHYxLg0KPiA+ID4gDQo+
ID4gPiAgQ2hlZXJzLA0KPiA+ID4gIC1QYXVsDQo+ID4gPiANCj4gPiA+ICBBbGV4YW5kcnUgQXJk
ZWxlYW4gKDEpOg0KPiA+ID4gICAgaWlvOiBidWZmZXItZG1hOiBzcGxpdCBpaW9fZG1hX2J1ZmZl
cl9maWxlaW9fZnJlZSgpIGZ1bmN0aW9uDQo+ID4gPiANCj4gPiA+ICBQYXVsIENlcmN1ZWlsICgx
MSk6DQo+ID4gPiAgICBpaW86IGJ1ZmZlci1kbWE6IEdldCByaWQgb2Ygb3V0Z29pbmcgcXVldWUN
Cj4gPiA+ICAgIGlpbzogYnVmZmVyLWRtYTogRW5hYmxlIGJ1ZmZlciB3cml0ZSBzdXBwb3J0DQo+
ID4gPiAgICBpaW86IGJ1ZmZlci1kbWFlbmdpbmU6IFN1cHBvcnQgc3BlY2lmeWluZyBidWZmZXIg
ZGlyZWN0aW9uDQo+ID4gPiAgICBpaW86IGJ1ZmZlci1kbWFlbmdpbmU6IEVuYWJsZSB3cml0ZSBz
dXBwb3J0DQo+ID4gPiAgICBpaW86IGNvcmU6IEFkZCBuZXcgRE1BQlVGIGludGVyZmFjZSBpbmZy
YXN0cnVjdHVyZQ0KPiA+ID4gICAgaWlvOiBidWZmZXItZG1hOiBVc2UgRE1BQlVGcyBpbnN0ZWFk
IG9mIGN1c3RvbSBzb2x1dGlvbg0KPiA+ID4gICAgaWlvOiBidWZmZXItZG1hOiBJbXBsZW1lbnQg
bmV3IERNQUJVRiBiYXNlZCB1c2Vyc3BhY2UgQVBJDQo+ID4gPiAgICBpaW86IGJ1ZmZlci1kbWFl
bmdpbmU6IFN1cHBvcnQgbmV3IERNQUJVRiBiYXNlZCB1c2Vyc3BhY2UgQVBJDQo+ID4gPiAgICBp
aW86IGNvcmU6IEFkZCBzdXBwb3J0IGZvciBjeWNsaWMgYnVmZmVycw0KPiA+ID4gICAgaWlvOiBi
dWZmZXItZG1hZW5naW5lOiBBZGQgc3VwcG9ydCBmb3IgY3ljbGljIGJ1ZmZlcnMNCj4gPiA+ICAg
IERvY3VtZW50YXRpb246IGlpbzogRG9jdW1lbnQgaGlnaC1zcGVlZCBETUFCVUYgYmFzZWQgQVBJ
DQo+ID4gPiANCj4gPiA+ICAgRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0ICAg
ICAgICAgIHwgICAyICsNCj4gPiA+ICAgRG9jdW1lbnRhdGlvbi9paW8vZG1hYnVmX2FwaS5yc3Qg
ICAgICAgICAgICAgIHwgIDk0ICsrKw0KPiA+ID4gICBEb2N1bWVudGF0aW9uL2lpby9pbmRleC5y
c3QgICAgICAgICAgICAgICAgICAgfCAgIDIgKw0KPiA+ID4gICBkcml2ZXJzL2lpby9hZGMvYWRp
LWF4aS1hZGMuYyAgICAgICAgICAgICAgICAgfCAgIDMgKy0NCj4gPiA+ICAgZHJpdmVycy9paW8v
YnVmZmVyL2luZHVzdHJpYWxpby1idWZmZXItZG1hLmMgIHwgNjEwDQo+ID4gPiArKysrKysrKysr
KysrKy0tLS0NCj4gPiA+ICAgLi4uL2J1ZmZlci9pbmR1c3RyaWFsaW8tYnVmZmVyLWRtYWVuZ2lu
ZS5jICAgIHwgIDQyICstDQo+ID4gPiAgIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1idWZmZXIu
YyAgICAgICAgICAgICB8ICA2MCArKw0KPiA+ID4gICBpbmNsdWRlL2xpbnV4L2lpby9idWZmZXIt
ZG1hLmggICAgICAgICAgICAgICAgfCAgMzggKy0NCj4gPiA+ICAgaW5jbHVkZS9saW51eC9paW8v
YnVmZmVyLWRtYWVuZ2luZS5oICAgICAgICAgIHwgICA1ICstDQo+ID4gPiAgIGluY2x1ZGUvbGlu
dXgvaWlvL2J1ZmZlcl9pbXBsLmggICAgICAgICAgICAgICB8ICAgOCArDQo+ID4gPiAgIGluY2x1
ZGUvdWFwaS9saW51eC9paW8vYnVmZmVyLmggICAgICAgICAgICAgICB8ICAzMCArDQo+ID4gPiAg
IDExIGZpbGVzIGNoYW5nZWQsIDc0OSBpbnNlcnRpb25zKCspLCAxNDUgZGVsZXRpb25zKC0pDQo+
ID4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2lpby9kbWFidWZfYXBpLnJz
dA0KPiA+ID4gDQo+ID4gDQo+IA0KPiANCg0KLS0gDQpEYW5pZWwgVmV0dGVyDQpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24NCmh0dHA6Ly9ibG9nLmZmd2xsLmNoDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

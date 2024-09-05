Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABA696CFD4
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Sep 2024 08:56:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5874F43B8C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Sep 2024 06:56:26 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by lists.linaro.org (Postfix) with ESMTPS id 00D4942529
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Sep 2024 06:56:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=YreKWBgR;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-709340f1cb1so175722a34.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Sep 2024 23:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725519383; x=1726124183; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=is6oA3m8LIEojdfLA7VjQTerM+IVLQZFBibvLCSwhaA=;
        b=YreKWBgRH5QI6h/6bkt9WWYn1ZEltPna8DQtGK4qjIvxF0mRLltG7XdtwSn7iu3Lg+
         FdBN74GpbwZAJ0pBUX4JkhPiZRWA0+tuK8im4B2ZDElaCLh4TGOAcyHz9PVM7wHDzTmR
         B3ALFWVBiBNgwt2LnxP7YE9Q2EUXOowO2x2eETd+9tE9xX9vHSIEK0LskFR5TnKpbDf/
         2KEbj+CaPu2OyXJ5PxS04Xk5v/LLX1MJiqkxdPW/+wLwyg6+/szCXbrt1je/+rrKh49P
         VlYFWa3UnjplO+p9tYZvwE8PlRqthAQwLteS309OpMNNUBWAwIo8qmRC2/RTPMdDlqqi
         SxIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725519383; x=1726124183;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=is6oA3m8LIEojdfLA7VjQTerM+IVLQZFBibvLCSwhaA=;
        b=mksH7j7zxoWzT4KtHU+SB84+Kh0zzyrNhcQKkNa6iHnaxEMCfjwKb8JcXrCijn+zgy
         YKSKNQNfJl0tQ+NrssSlbLie7LPqmuLoYTYtGDm6/BtKFkPp5dZwbnFhvtntLCeVyeKH
         rLhrs8dPEioc/f3oBtRsFy9A7TJ3Fxf11IJaxwRrr0UmNAoASrlfpHrTdCDsFAMuqBc3
         TypBZLFtrZnUmJskg4LsewtX99shivMT01+ihWCGSnR8USO/sy+hU1bXD5Ba4uB0ry1u
         LmSu5dtPzeEzAbHZPgGFl88D/PV49rnJ+W3TZg4qKnC8vS5Zx7UGC7neidNami5t7IHH
         dcZA==
X-Forwarded-Encrypted: i=1; AJvYcCVySQqcZMROSy92gEesWhoa6Kr9qQJ+RKb7iEFQD6gfbaDYrbqAti7o1ToFp4OIGg2gxpo/OO7tvlyIceBI@lists.linaro.org
X-Gm-Message-State: AOJu0YyeIgB66frfwxYlUwOMDg1x57w2+bz+fpfj1AUF4Le5otZR9XwU
	pWX9ptydZb17fXv9U+gH9UN/S2VRfG2ZJrY6ylN9KhiJUF7LPS6mYPFu0AO7xhod7fnVZc5Vjgn
	DLrKYBoZNtaazKLOIdpJ8upuJNZ+i17dd7KQyZijg
X-Google-Smtp-Source: AGHT+IH5sLg/BL7saD9/TXa220ctb5hvcylawPt/eU1IH9MP/VmfAzkYvlQbzwvsbvXXi2U8bfsvnevyQYB2IQEHh6U=
X-Received: by 2002:a05:6830:25d6:b0:703:63d3:9eef with SMTP id
 46e09a7af769-70f7072e89bmr16742155a34.25.1725519383303; Wed, 04 Sep 2024
 23:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-2-jens.wiklander@linaro.org> <4a498990-2d9e-4555-85f3-d1d22e26b9dd@amd.com>
In-Reply-To: <4a498990-2d9e-4555-85f3-d1d22e26b9dd@amd.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 5 Sep 2024 08:56:11 +0200
Message-ID: <CAHUa44G9yF2GoQD8XrE=agkGCditH1v+NYm16WpdORX4aRixYg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 00D4942529
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.53:from];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,linaro.org:email,mail.gmail.com:mid];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,kernel.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: FHZWIJ3A6FA6RFGOZ3JK2EJ56KWGLJH4
X-Message-ID-Hash: FHZWIJ3A6FA6RFGOZ3JK2EJ56KWGLJH4
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 1/4] dma-buf: heaps: restricted_heap: add no_map attribute
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FHZWIJ3A6FA6RFGOZ3JK2EJ56KWGLJH4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBBdWcgMzAsIDIwMjQgYXQgMTA6NDfigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gQW0gMzAuMDguMjQgdW0gMDk6MDMg
c2NocmllYiBKZW5zIFdpa2xhbmRlcjoNCj4gPiBBZGQgYSBub19tYXAgYXR0cmlidXRlIHRvIHN0
cnVjdCByZXN0cmljdGVkX2hlYXBfYXR0YWNobWVudCBhbmQgc3RydWN0DQo+ID4gcmVzdHJpY3Rl
ZF9oZWFwIHRvIHNraXAgdGhlIGNhbGwgdG8gZG1hX21hcF9zZ3RhYmxlKCkgaWYgc2V0LiBUaGlz
DQo+ID4gYXZvaWRzIHRyeWluZyB0byBtYXAgYSBkbWEtYnVmIHRoYXQgZG9lbnMndCByZWZlciB0
byBtZW1vcnkgYWNjZXNzaWJsZQ0KPiA+IGJ5IHRoZSBrZXJuZWwuDQo+DQo+IFlvdSBzZWVtIHRv
IGhhdmUgYSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUgZG1hX21hcF9zZ3RhYmxlKCkgaXMgY2FsbGVk
IHRvDQo+IG1hcCBhIHRhYmxlIGludG8gSU9NTVUgYW5kIG5vdCBhbnkga2VybmVsIGFkZHJlc3Mg
c3BhY2UuDQo+DQo+IFNvIHBsZWFzZSBleHBsYWluIHdoeSB5b3UgbmVlZCB0aGF0Pw0KDQpZb3Un
cmUgcmlnaHQsIEkgaGFkIG1pc3VuZGVyc3Rvb2QgZG1hX21hcF9zZ3RhYmxlKCkuIFRoZXJlJ3Mg
bm8gbmVlZA0KZm9yIHRoZSBub19tYXAgYXR0cmlidXRlLCBzbyBJJ2xsIHJlbW92ZSBpdC4NCg0K
UGVyaGFwcyB5b3UgaGF2ZSBhIHN1Z2dlc3Rpb24gb24gaG93IHRvIGZpeCBhIHByb2JsZW0gd2hl
biB1c2luZw0KZG1hX21hcF9zZ3RhYmxlKCk/DQoNCldpdGhvdXQgaXQsIEknbGwgaGF2ZSB0byBh
c3NpZ24gYSBwb2ludGVyIHRvIHRlZWRldi0+ZGV2LmRtYV9tYXNrIHdoZW4NCnVzaW5nIHRoZSBy
ZXN0cmljdGVkIGhlYXAgd2l0aCB0aGUgT1AtVEVFIGRyaXZlciBvciB0aGVyZSB3aWxsIGJlIGEN
Cndhcm5pbmcgaW4gX19kbWFfbWFwX3NnX2F0dHJzKCkgZW5kaW5nIHdpdGggYSBmYWlsdXJlIHdo
ZW4gdHJ5aW5nIHRvDQpyZWdpc3RlciB0aGUgZG1hLWJ1ZiBmZC4gT1AtVEVFIGlzIHByb2JlZCB3
aXRoIGEgcGxhdGZvcm0gZGV2aWNlLCBhbmQNCnRha2luZyB0aGUgZG1hX21hc2sgcG9pbnRlciBm
cm9tIHRoYXQgZGV2aWNlIHdvcmtzLiBJcyB0aGF0IGEgZ29vZA0KYXBwcm9hY2ggb3IgaXMgdGhl
cmUgYSBiZXR0ZXIgd2F5IG9mIGFzc2lnbmluZyBkbWFfbWFzaz8NCg0KVGhhbmtzLA0KSmVucw0K
DQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+IC0tLQ0KPiA+
ICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5jIHwgMTcgKysrKysrKysr
KysrKy0tLS0NCj4gPiAgIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0cmljdGVkX2hlYXAuaCB8
ICAyICsrDQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3Ry
aWN0ZWRfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5jDQo+
ID4gaW5kZXggOGJjOGE1ZTNmOTY5Li40YmYyOGUzNzI3Y2EgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5jDQo+ID4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5jDQo+ID4gQEAgLTE2LDYgKzE2LDcgQEANCj4g
PiAgIHN0cnVjdCByZXN0cmljdGVkX2hlYXBfYXR0YWNobWVudCB7DQo+ID4gICAgICAgc3RydWN0
IHNnX3RhYmxlICAgICAgICAgICAgICAgICAqdGFibGU7DQo+ID4gICAgICAgc3RydWN0IGRldmlj
ZSAgICAgICAgICAgICAgICAgICAqZGV2Ow0KPiA+ICsgICAgIGJvb2wgbm9fbWFwOw0KPiA+ICAg
fTsNCj4gPg0KPiA+ICAgc3RhdGljIGludA0KPiA+IEBAIC01NCw2ICs1NSw4IEBAIHJlc3RyaWN0
ZWRfaGVhcF9tZW1vcnlfZnJlZShzdHJ1Y3QgcmVzdHJpY3RlZF9oZWFwICpyaGVhcCwgc3RydWN0
IHJlc3RyaWN0ZWRfYnVmDQo+ID4gICBzdGF0aWMgaW50IHJlc3RyaWN0ZWRfaGVhcF9hdHRhY2go
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
bWVudCkNCj4gPiAgIHsNCj4gPiAgICAgICBzdHJ1Y3QgcmVzdHJpY3RlZF9idWZmZXIgKnJlc3Ry
aWN0ZWRfYnVmID0gZG1hYnVmLT5wcml2Ow0KPiA+ICsgICAgIHN0cnVjdCBkbWFfaGVhcCAqaGVh
cCA9IHJlc3RyaWN0ZWRfYnVmLT5oZWFwOw0KPiA+ICsgICAgIHN0cnVjdCByZXN0cmljdGVkX2hl
YXAgKnJoZWFwID0gZG1hX2hlYXBfZ2V0X2RydmRhdGEoaGVhcCk7DQo+ID4gICAgICAgc3RydWN0
IHJlc3RyaWN0ZWRfaGVhcF9hdHRhY2htZW50ICphOw0KPiA+ICAgICAgIHN0cnVjdCBzZ190YWJs
ZSAqdGFibGU7DQo+ID4NCj4gPiBAQCAtNzAsNiArNzMsNyBAQCBzdGF0aWMgaW50IHJlc3RyaWN0
ZWRfaGVhcF9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0
YWNobQ0KPiA+ICAgICAgIHNnX2RtYV9tYXJrX3Jlc3RyaWN0ZWQodGFibGUtPnNnbCk7DQo+ID4g
ICAgICAgYS0+dGFibGUgPSB0YWJsZTsNCj4gPiAgICAgICBhLT5kZXYgPSBhdHRhY2htZW50LT5k
ZXY7DQo+ID4gKyAgICAgYS0+bm9fbWFwID0gcmhlYXAtPm5vX21hcDsNCj4gPiAgICAgICBhdHRh
Y2htZW50LT5wcml2ID0gYTsNCj4gPg0KPiA+ICAgICAgIHJldHVybiAwOw0KPiA+IEBAIC05Miw5
ICs5NiwxMiBAQCByZXN0cmljdGVkX2hlYXBfbWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0
YWNobWVudCAqYXR0YWNobWVudCwNCj4gPiAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxlID0g
YS0+dGFibGU7DQo+ID4gICAgICAgaW50IHJldDsNCj4gPg0KPiA+IC0gICAgIHJldCA9IGRtYV9t
YXBfc2d0YWJsZShhdHRhY2htZW50LT5kZXYsIHRhYmxlLCBkaXJlY3Rpb24sIERNQV9BVFRSX1NL
SVBfQ1BVX1NZTkMpOw0KPiA+IC0gICAgIGlmIChyZXQpDQo+ID4gLSAgICAgICAgICAgICByZXR1
cm4gRVJSX1BUUihyZXQpOw0KPiA+ICsgICAgIGlmICghYS0+bm9fbWFwKSB7DQo+ID4gKyAgICAg
ICAgICAgICByZXQgPSBkbWFfbWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCB0YWJsZSwgZGly
ZWN0aW9uLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERNQV9BVFRS
X1NLSVBfQ1BVX1NZTkMpOw0KPiA+ICsgICAgICAgICAgICAgaWYgKHJldCkNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsNCj4gPiArICAgICB9DQo+ID4gICAg
ICAgcmV0dXJuIHRhYmxlOw0KPiA+ICAgfQ0KPiA+DQo+ID4gQEAgLTEwNiw3ICsxMTMsOSBAQCBy
ZXN0cmljdGVkX2hlYXBfdW5tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2htZW50LCBzdHJ1Y3Qgc2dfdA0KPiA+DQo+ID4gICAgICAgV0FSTl9PTihhLT50YWJsZSAh
PSB0YWJsZSk7DQo+ID4NCj4gPiAtICAgICBkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2htZW50LT5k
ZXYsIHRhYmxlLCBkaXJlY3Rpb24sIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOw0KPiA+ICsgICAg
IGlmICghYS0+bm9fbWFwKQ0KPiA+ICsgICAgICAgICAgICAgZG1hX3VubWFwX3NndGFibGUoYXR0
YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyZWN0aW9uLA0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7DQo+ID4gICB9DQo+ID4NCj4gPiAg
IHN0YXRpYyBpbnQNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3Ry
aWN0ZWRfaGVhcC5oIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5oDQo+
ID4gaW5kZXggN2RlYzRiOGE0NzFiLi45NGNjMDg0MmY3MGQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5oDQo+ID4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcC5oDQo+ID4gQEAgLTI3LDYgKzI3LDggQEAgc3Ry
dWN0IHJlc3RyaWN0ZWRfaGVhcCB7DQo+ID4gICAgICAgdW5zaWduZWQgbG9uZyAgICAgICAgICAg
Y21hX3BhZGRyOw0KPiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgICAgICAgICAgIGNtYV9zaXplOw0K
PiA+DQo+ID4gKyAgICAgYm9vbCAgICAgICAgICAgICAgICAgICAgbm9fbWFwOw0KPiA+ICsNCj4g
PiAgICAgICB2b2lkICAgICAgICAgICAgICAgICAgICAqcHJpdl9kYXRhOw0KPiA+ICAgfTsNCj4g
Pg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==

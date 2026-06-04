Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IXf3KOrTIWo1PQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 21:37:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3441A642F50
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Jun 2026 21:37:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=MCC8qdMj;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=google.com (policy=reject);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A63F404D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Jun 2026 19:37:13 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by lists.linaro.org (Postfix) with ESMTPS id 85C6240962
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 19:37:02 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5aa62bd04fbso2020e87.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Jun 2026 12:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780601821; cv=none;
        d=google.com; s=arc-20240605;
        b=cbp56wvXb//XIHrEupIXSsrnTmCS9b81UwKGvWZMr3glsLRitaPlJXGRy+OhQkDILn
         zvv9KT4/acj5rjcFHSAybS8PrHq7/bPiajsiGgHPHiqY9/GkUwPGXwS9j8ernShFU7yd
         SV6UBEKDtFVz5CruCtK7cEOobqJOqJF+vNsgQkUXPet2wFxtAvRWYEfkDzfkJWMpadXz
         f3jdbOIw9itVqCt0eIT244v/z1ihuQL5Sawpzlf1wOX23udaUzMGMkGyIJVtujauwyqH
         VTkcJF8SbtiM9Pm5s5AvLfnKoQqzZoOHxr16I+2y68unkwH3/8drqDrIsfusDeIGAtTe
         HPrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KUiC23PK8EOFQC+N7GaZpdkePm+wStyLtAYgas7c/7M=;
        fh=a9sV4OQKS0Is953UZSs3ZJKfWAyZtJm1ch5UE85+SdI=;
        b=fLDXdyf2PXrnIh7CpQVttCCKDwE8LzABtGF1bUMfJHutkieje3+aOsImujLFT2oOAG
         vaKpKUnXVTg8pS/xnfwnhUofZCu6ZgB7TNxwpQDWJvoc/bg9AXtsOGSmzVcCR+N5rCp+
         j3DaXkkOynBDWLjc7HvcRhbZNj5LoLhsd3OCcuXqeWT+U1WOZuz68mx7QIxUViGb8coz
         EcTiwS0y3ZdkHhNAlISjfN4n6Gi7EVuWu1JeglFQ4lKjvBu39D3QXV0aQqRxGuSlFZLb
         8jYpYa6Vu1aMLY3QiE4NxiIHeKTc6YHtul3L6suIHdL/6UtahdLd2Uo8adXG6VFmVqAd
         W8IQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780601821; x=1781206621; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUiC23PK8EOFQC+N7GaZpdkePm+wStyLtAYgas7c/7M=;
        b=MCC8qdMj4pp6sdZa5P5pPFgXX65SwLm34Htgb5qAFVDvc0zoEIrQ3BcmI28VVRY9dI
         9rjQ8BMKozQPUHmqnt+poxJGzHaq52uOSVfXw5xVPWzkbqrVLjUdpcuMuTtYQSnq4Boi
         XrOGE5n/1j79VRzU3tXlJ8+fW6nCcFkPyddkyBUcU013fpU1NsmGGQTUsuBcu+4GSwwB
         FNuQAaUF0bC2j19EWqrdjJiJGJT7i5XiyHvXR9wL+1JY/rNr+Zrn+chLA4k3BIIbWHat
         BV/mcHW0v2ZyjqFqLci98AdvJCEH8vxl5rMnHRiXUKpC/SeVEmniwcOYMII+KCAehJna
         efuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780601821; x=1781206621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KUiC23PK8EOFQC+N7GaZpdkePm+wStyLtAYgas7c/7M=;
        b=O6ksNbj2KbgDa25Qdy3DvlKAyy4dvaarmvTE62ciFSG2L7A6iX9H+NSM2t99hlOs7d
         qMQGChSL7msaY3VSP/GjsjIDaB7kpUgouNUuUo9+Y13jTCo9vnjh40gcsWpUistubdM1
         ZLVYFc137nmSd61Z7rvOgU2DYEr36Xapil1GOqoC2uReew4OoT4v53BnvWLPm6gjqZrZ
         J6a17z9p92Ueq+ZFRBDA1xEfqBAudKZt15sN29O7J/JsUK8N8AZwhgZ25fBDrpw0uIsU
         PoYrmrKZN9jEbWyh5lmriTaynILko6Of26y60wbXMEfzPU3WGsMawC+5D4A9h7jyMjBs
         VvwQ==
X-Forwarded-Encrypted: i=1; AFNElJ9+Nw3GbfNKKBHVvmKJHTlovXiSwf24fRpN+LlDT57q1JJE92TozxWgK+eeSCumumxtEiRjJA5DsLbw5fg+@lists.linaro.org
X-Gm-Message-State: AOJu0Yzwc60agSOwGz8arB9XYxcctkI0dC/G6h4k2mnydrLkYpxdld1d
	8vcrA6XY1BFyG1AtRFIbHiPe0gIW359AVBhc9Lga1A/eO0dQIkTgJoCO3u38i6gLUURATolKokk
	mQGY2ugKxK3dPqSJKb7Txno3Atzf/hw4Fy+klsSQ=
X-Gm-Gg: Acq92OGjxYpqcP1AWDb6yog+5tl5HjiX7oIY1Mw/5I2wY1bIw9UMGNjsNXW0dr30VCL
	OgWICpniRtMkivPP6QCu4B0IX5c9QzNLPVP/dfKLr0l6Wxd+NkEi5jGwxzMi/9H5j6Cv5KUBO46
	j2rIcnT207h+N2kFbiy0EZ6ns+Ax7f5FvrgSp7ar3mSQxezZTazZsdwZdMyeugJ1sM4n5kJi/kv
	DiZXdwa2lG1+IUwk/rrJ+MbMWQt+XNyWLXvvpX5QIbnuZm1245T0jjr6VjsB8TFVfgRfFs9/6zI
	O1Xo5EtwfhG2U0u1g6/HX5rkTYblvJ/fTVR1NOvb49CWkYo=
X-Received: by 2002:a05:6512:2446:b0:5aa:6ede:1a68 with SMTP id
 2adb3069b0e04-5aa877c6752mr44886e87.10.1780601820811; Thu, 04 Jun 2026
 12:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260601200012.3872274-1-xuehaohu@google.com> <20260604094344.GB245424@unreal>
In-Reply-To: <20260604094344.GB245424@unreal>
From: David Hu <xuehaohu@google.com>
Date: Thu, 4 Jun 2026 15:36:48 -0400
X-Gm-Features: AVHnY4I667s8Q-kTs7E7YlSR5Fzg5WrO7fnNQmow9VUJtwR-GDJeAyWDhu8beOk
Message-ID: <CAPd9Lg_JkRdtNa=n+HE9SP+NFCSB+X_97eiPBqiONVLwV0pHwQ@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: 3FW4M7HNN6L25CQXGPN3HLI7HEOYOS2I
X-Message-ID-Hash: 3FW4M7HNN6L25CQXGPN3HLI7HEOYOS2I
X-MailFrom: xuehaohu@google.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3FW4M7HNN6L25CQXGPN3HLI7HEOYOS2I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:leon@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuehaohu@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3441A642F50

T24gVGh1LCBKdW4gNCwgMjAyNiBhdCA1OjQz4oCvQU0gTGVvbiBSb21hbm92c2t5IDxsZW9uQGtl
cm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBNb24sIEp1biAwMSwgMjAyNiBhdCAwODowMDoxMlBN
ICswMDAwLCBEYXZpZCBIdSB3cm90ZToNCj4gPiBAQCAtMzYsNyArMzYsNyBAQCBzdGF0aWMgdW5z
aWduZWQgaW50IGNhbGNfc2dfbmVudHMoc3RydWN0IGRtYV9pb3ZhX3N0YXRlICpzdGF0ZSwNCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBwaHlzX3ZlYyAqcGh5c192
ZWMsIHNpemVfdCBucl9yYW5nZXMsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzaXplX3Qgc2l6ZSkNCj4gPiAgew0KPiA+IC0gICAgIHVuc2lnbmVkIGludCBuZW50cyA9IDA7
DQo+ID4gKyAgICAgc2l6ZV90IG5lbnRzID0gMDsNCj4gPiAgICAgICBzaXplX3QgaTsNCj4gPg0K
PiA+ICAgICAgIGlmICghc3RhdGUgfHwgIWRtYV91c2VfaW92YShzdGF0ZSkpIHsNCj4gPiBAQCAt
NTEsNiArNTEsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGNhbGNfc2dfbmVudHMoc3RydWN0IGRt
YV9pb3ZhX3N0YXRlICpzdGF0ZSwNCj4gPiAgICAgICAgICAgICAgIG5lbnRzID0gRElWX1JPVU5E
X1VQKHNpemUsIFVJTlRfTUFYKTsNCj4gPiAgICAgICB9DQo+ID4NCj4gPiArICAgICBpZiAobmVu
dHMgPiBVSU5UX01BWCkNCj4NCj4gSSB3b3VsZCBzdWdnZXN0IHRvIHVzZSBjaGVja19hZGRfb3Zl
cmZsb3coKSB3aGlsZSBjYWxjdWxhdGluZyBuZW50cw0KPiBpbnN0ZWFkIG9mIHRoaXMgY2hlY2su
DQoNCkhpIExlb24sDQoNClRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4gVXNpbmcgYGNoZWNrX2Fk
ZF9vdmVyZmxvdygpYCBpcyBhIGdyZWF0DQpzdWdnZXN0aW9uIGFuZCBkZWZpbml0ZWx5DQpjbGVh
bmVyIGZvciB0aGUgYWNjdW11bGF0aW9uIGxvb3AuIEknbGwgdXBkYXRlIHRoaXMgZm9yIHY2Lg0K
DQo+ID4gQEAgLTEzMyw2ICsxMzcsMTEgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX3BoeXNf
dmVjX3RvX3NndChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQo+ID4gICAgICAg
fQ0KPiA+DQo+ID4gICAgICAgbmVudHMgPSBjYWxjX3NnX25lbnRzKGRtYS0+c3RhdGUsIHBoeXNf
dmVjLCBucl9yYW5nZXMsIHNpemUpOw0KPiA+ICsgICAgIGlmICghbmVudHMpIHsNCj4gPiArICAg
ICAgICAgICAgIHJldCA9IC1FSU5WQUw7DQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9mcmVl
X3N0YXRlOw0KPiA+ICsgICAgIH0NCj4NCj4gVGVjaG5pY2FsbHksIHRoaXMgaHVuayBpcyBub3Qg
bmVjZXNzYXJ5LCBzaW5jZSBzZ19hbGxvY190YWJsZSgpIHdpbGwNCj4gcmV0dXJuIC1FSU5WQUwg
d2hlbiBuZW50cyA9PSAwLiBBdCBsZWFzdCwgdGhhdCBpcyB0aGUgYmVoYXZpb3IgSSByZWxpZWQg
b24uDQoNCkkgb3JpZ2luYWxseSBhZGRlZCB0aGlzIGV4cGxpY2l0IGNoZWNrIGluIHY1IHRvIGFk
ZHJlc3MgSmFzb24ncw0KZmVlZGJhY2ssIGFuZCB0byBtYWtlIHRoZQ0KZmFpbHVyZSBleHBsaWNp
dCByYXRoZXIgdGhhbiByZWx5aW5nIG9uIGBzZ19hbGxvY190YWJsZSgpYCBmYWlsaW5nDQpzaWxl
bnRseSBvbiBgbmVudHM9MGAuDQoNCkphc29uLCBkbyB5b3UgaGF2ZSBhIHN0cm9uZyBwcmVmZXJl
bmNlIGhlcmU/IEkgYW0gaGFwcHkgdG8gZHJvcCB0aGUNCmh1bmsgYW5kIHJlbHkgb24NCmBzZ19h
bGxvY190YWJsZSgpYCByZXR1cm5pbmcgYC1FSU5WQUxgIGlmIHlvdSBhcmUgYm90aCBjb21mb3J0
YWJsZSB3aXRoIHRoYXQuDQoNClRoYW5rcywNCkRhdmlkDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

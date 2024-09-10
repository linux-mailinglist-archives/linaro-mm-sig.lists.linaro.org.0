Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ED452972944
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Sep 2024 08:07:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C172543CFD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Sep 2024 06:07:01 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	by lists.linaro.org (Postfix) with ESMTPS id 4FF1E40C36
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Sep 2024 06:06:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=iqjp+qE6;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.50 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-277e6002b7dso2706304fac.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Sep 2024 23:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725948418; x=1726553218; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z9MHdiQIKbQZ7sHVzFN+NNCUWOQwDHp5p4yZrC2v9dg=;
        b=iqjp+qE6aGiHc4z2uq6ZeccELkh1Fya1DQ8z4TfKmJNEL5AybNDUTteY1yi7FBPTq7
         9lhH70aFnc5tqhE0LPfoaEe2r2XSywSEjrtxR+Zzxpp34fq2Sh4x9UKUmAGQNXJZViml
         hGRp+mNvUAbaNtyNa/bLdL6aFqFRTk1vZMF7B7ssd039NTAk9AR7nnnNWJG1eEGdAGxY
         YyKcZHL/HI7bf5rR0ZEHGnNf/XHV2r344nP24joLZBWBgYdnYDH6V1at/7MS/X/DIufH
         2esC4IhnLYQkBDGysYepHetI7//LZEM1kmiGYWuULQNbz5IECDaT7K3OUw1nvWdBQC/h
         4eRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725948419; x=1726553219;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z9MHdiQIKbQZ7sHVzFN+NNCUWOQwDHp5p4yZrC2v9dg=;
        b=w6IqMdY/xtwq7wRrWwrhj5pLjXUN+nzuWMEef0VrTODebpDfzwCEeNlymj7gF+0S8n
         u7MwVWJ9N4WySsgv60OfUtHzt1MvIdoYJBP3jZOIIJ+r1w4umX6HgA3sUspErlaOPv2P
         ZHpxNNJr4F+PzajtOpscvW5Nu6wVqzgic5MJzo1aN4s3Gd0YJgT5HNXyPqbh8OL2+Eqr
         72RtYUbuwbsb9CnalpC5IV1G05rP2rHVWBk27onD5hKNciyJGTp3iG0MEaW7akIs0gF1
         +KYe5f0AaCZBaTCEi+YVwjqQxrqCEv8K266ErEPEVWrDKOTj4uzcs0f1ldHWjlj00uBy
         0fdg==
X-Forwarded-Encrypted: i=1; AJvYcCVC648hqdutLIwcYPkdqu/OYEam6TMJXZiwkwisumNPLQo69uxFfnhDASlBimD4IDJgJNXEAz3tY6n0lz7b@lists.linaro.org
X-Gm-Message-State: AOJu0Yz3ziiOfxSc7TIQ11TFkMufcZUPfhb6Zlobgz3cksNC9WJPkC8k
	rnEHAXvFRohD4K32z/La8tsr0/2reASleX2ixp362/ZZrjeA0u9XqTkz7pNOImhHJqrLMQ5Hyqz
	4NkhinxHrXL42+DrzIAuipUvOFTZpzypKBP+bZgkG
X-Google-Smtp-Source: AGHT+IEICe98dkZbn2Ns9nln8TerGdgfmay8kae6nOnNQUjTdvKEr1T8PPGslpKcLz8r5N2w/0aeGsRv9D3S4R0GNlg=
X-Received: by 2002:a05:6870:9122:b0:278:22d3:53 with SMTP id
 586e51a60fabf-27b82e076cdmr13465979fac.12.1725948418296; Mon, 09 Sep 2024
 23:06:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <20240830070351.2855919-5-jens.wiklander@linaro.org> <CABdmKX2KzswmiDY4oWw69_rPWs8d_Cqp7OXouSeMQaYX1SDSmw@mail.gmail.com>
 <CAHUa44FYYFVQWf0DGUXNHoOVQEC0-HRyYa0386dHNjo4y1qSiQ@mail.gmail.com> <CABdmKX0qd0RoTn2TBQTs9zdf=_JP8pW8hFRUR_7n_t-sfxsGdg@mail.gmail.com>
In-Reply-To: <CABdmKX0qd0RoTn2TBQTs9zdf=_JP8pW8hFRUR_7n_t-sfxsGdg@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 10 Sep 2024 08:06:46 +0200
Message-ID: <CAHUa44E-7UMseWSEeneYYnAPyhH___=a1YYR6uaOVTNZytzg7g@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Action: no action
X-Spamd-Bar: --
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4FF1E40C36
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.50:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: CI5LWMILVI3RS25A67K2HSDBJRW4XQ4E
X-Message-ID-Hash: CI5LWMILVI3RS25A67K2HSDBJRW4XQ4E
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/4] dma-buf: heaps: add Linaro restricted dmabuf heap support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CI5LWMILVI3RS25A67K2HSDBJRW4XQ4E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBTZXAgNCwgMjAyNCBhdCAxMTo0MuKAr1BNIFQuSi4gTWVyY2llciA8dGptZXJjaWVy
QGdvb2dsZS5jb20+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIFNlcCA0LCAyMDI0IGF0IDI6NDTigK9B
TSBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4gd3JvdGU6DQo+ID4N
Cj4gPiBPbiBUdWUsIFNlcCAzLCAyMDI0IGF0IDc6NTDigK9QTSBULkouIE1lcmNpZXIgPHRqbWVy
Y2llckBnb29nbGUuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBGcmksIEF1ZyAzMCwgMjAy
NCBhdCAxMjowNOKAr0FNIEplbnMgV2lrbGFuZGVyDQo+ID4gPiA8amVucy53aWtsYW5kZXJAbGlu
YXJvLm9yZz4gd3JvdGU6DQo+ID4gPiA+DQo+ID4gPiA+IEFkZCBhIExpbmFybyByZXN0cmljdGVk
IGhlYXAgdXNpbmcgdGhlIGxpbmFybyxyZXN0cmljdGVkLWhlYXAgYmluZGluZ3MNCj4gPiA+ID4g
aW1wbGVtZW50ZWQgYmFzZWQgb24gdGhlIGdlbmVyaWMgcmVzdHJpY3RlZCBoZWFwLg0KPiA+ID4g
Pg0KPiA+ID4gPiBUaGUgYmluZGluZ3MgZGVmaW5lcyBhIHJhbmdlIG9mIHBoeXNpY2FsIHJlc3Ry
aWN0ZWQgbWVtb3J5LiBUaGUgaGVhcA0KPiA+ID4gPiBtYW5hZ2VzIHRoaXMgYWRkcmVzcyByYW5n
ZSB1c2luZyBnZW5hbGxvYy4gVGhlIGFsbG9jYXRlZCBkbWEtYnVmIGZpbGUNCj4gPiA+ID4gZGVz
Y3JpcHRvciBjYW4gbGF0ZXIgYmUgcmVnaXN0ZXJlZCB3aXRoIHRoZSBURUUgc3Vic3lzdGVtIGZv
ciBsYXRlciB1c2UNCj4gPiA+ID4gdmlhIFRydXN0ZWQgQXBwbGljYXRpb25zIGluIHRoZSBzZWN1
cmUgd29ybGQuDQo+ID4gPiA+DQo+ID4gPiA+IENvLWRldmVsb3BlZC1ieTogT2xpdmllciBNYXNz
ZSA8b2xpdmllci5tYXNzZUBueHAuY29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVy
IE1hc3NlIDxvbGl2aWVyLm1hc3NlQG54cC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpl
bnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+ID4gPiAtLS0NCj4g
PiA+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAx
MCArKw0KPiA+ID4gPiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlICAgICAgICAgICAg
ICAgIHwgICAxICsNCj4gPiA+ID4gIC4uLi9kbWEtYnVmL2hlYXBzL3Jlc3RyaWN0ZWRfaGVhcF9s
aW5hcm8uYyAgICB8IDE2NSArKysrKysrKysrKysrKysrKysNCj4gPiA+ID4gIDMgZmlsZXMgY2hh
bmdlZCwgMTc2IGluc2VydGlvbnMoKykNCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwX2xpbmFyby5jDQo+ID4gPiA+DQo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9oZWFwcy9LY29uZmlnDQo+ID4gPiA+IGluZGV4IDU4OTAzYmM2MmFjOC4uODJlMmM1
ZDA5MjQyIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZp
Zw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvS2NvbmZpZw0KPiA+ID4gPiBA
QCAtMjgsMyArMjgsMTMgQEAgY29uZmlnIERNQUJVRl9IRUFQU19SRVNUUklDVEVEX01USw0KPiA+
ID4gPiAgICAgICAgIGhlbHANCj4gPiA+ID4gICAgICAgICAgIEVuYWJsZSByZXN0cmljdGVkIGRt
YS1idWYgaGVhcHMgZm9yIE1lZGlhVGVrIHBsYXRmb3JtLiBUaGlzIGhlYXAgaXMgYmFja2VkIGJ5
DQo+ID4gPiA+ICAgICAgICAgICBURUUgY2xpZW50IGludGVyZmFjZXMuIElmIGluIGRvdWJ0LCBz
YXkgTi4NCj4gPiA+ID4gKw0KPiA+ID4gPiArY29uZmlnIERNQUJVRl9IRUFQU19SRVNUUklDVEVE
X0xJTkFSTw0KPiA+ID4gPiArICAgICAgIGJvb2wgIkxpbmFybyBETUEtQlVGIFJlc3RyaWN0ZWQg
SGVhcCINCj4gPiA+ID4gKyAgICAgICBkZXBlbmRzIG9uIERNQUJVRl9IRUFQU19SRVNUUklDVEVE
DQo+ID4gPiA+ICsgICAgICAgaGVscA0KPiA+ID4gPiArICAgICAgICAgQ2hvb3NlIHRoaXMgb3B0
aW9uIHRvIGVuYWJsZSB0aGUgTGluYXJvIHJlc3RyaWN0ZWQgZG1hLWJ1ZiBoZWFwLg0KPiA+ID4g
PiArICAgICAgICAgVGhlIHJlc3RyaWN0ZWQgaGVhcCBwb29scyBhcmUgZGVmaW5lZCBhY2NvcmRp
bmcgdG8gdGhlIERULiBIZWFwcw0KPiA+ID4gPiArICAgICAgICAgYXJlIGFsbG9jYXRlZCBpbiB0
aGUgcG9vbHMgdXNpbmcgZ2VuIGFsbG9jYXRlci4NCj4gPiA+ID4gKyAgICAgICAgIElmIGluIGRv
dWJ0LCBzYXkgTi4NCj4gPiA+ID4gKw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL2hlYXBzL01ha2VmaWxlIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL01ha2VmaWxlDQo+ID4g
PiA+IGluZGV4IDAwMjhhYTlkODc1Zi4uNjZiMmY2N2M0N2I1IDEwMDY0NA0KPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvTWFrZWZpbGUNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL01ha2VmaWxlDQo+ID4gPiA+IEBAIC0yLDQgKzIsNSBAQA0KPiA+ID4gPiAg
b2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19DTUEpICAgICAgICAgKz0gY21hX2hlYXAubw0KPiA+
ID4gPiAgb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19SRVNUUklDVEVEKSAgKz0gcmVzdHJpY3Rl
ZF9oZWFwLm8NCj4gPiA+ID4gIG9iai0kKENPTkZJR19ETUFCVUZfSEVBUFNfUkVTVFJJQ1RFRF9N
VEspICAgICAgKz0gcmVzdHJpY3RlZF9oZWFwX210ay5vDQo+ID4gPiA+ICtvYmotJChDT05GSUdf
RE1BQlVGX0hFQVBTX1JFU1RSSUNURURfTElOQVJPKSAgICs9IHJlc3RyaWN0ZWRfaGVhcF9saW5h
cm8ubw0KPiA+ID4gPiAgb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQU19TWVNURU0pICAgICAgKz0g
c3lzdGVtX2hlYXAubw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBz
L3Jlc3RyaWN0ZWRfaGVhcF9saW5hcm8uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9yZXN0cmlj
dGVkX2hlYXBfbGluYXJvLmMNCj4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiA+ID4g
aW5kZXggMDAwMDAwMDAwMDAwLi40YjA4ZWQ1MTQwMjMNCj4gPiA+ID4gLS0tIC9kZXYvbnVsbA0K
PiA+ID4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvcmVzdHJpY3RlZF9oZWFwX2xpbmFy
by5jDQo+ID4gPiA+IEBAIC0wLDAgKzEsMTY1IEBADQo+ID4gPiA+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMA0KPiA+ID4gPiArLyoNCj4gPiA+ID4gKyAqIERNQUJVRiBzZWN1
cmUgaGVhcCBleHBvcnRlcg0KPiA+ID4gPiArICoNCj4gPiA+ID4gKyAqIENvcHlyaWdodCAyMDIx
IE5YUC4NCj4gPiA+ID4gKyAqIENvcHlyaWdodCAyMDI0IExpbmFybyBMaW1pdGVkLg0KPiA+ID4g
PiArICovDQo+ID4gPiA+ICsNCj4gPiA+ID4gKyNkZWZpbmUgcHJfZm10KGZtdCkgICAgICJyaGVh
cF9saW5hcm86ICIgZm10DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9kbWEt
YnVmLmg+DQo+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+ID4gPiA+ICsjaW5jbHVk
ZSA8bGludXgvZ2VuYWxsb2MuaD4NCj4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4N
Cj4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPg0KPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4
L29mX2ZkdC5oPg0KPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L29mX3Jlc2VydmVkX21lbS5oPg0K
PiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3NjYXR0ZXJsaXN0Lmg+DQo+ID4gPiA+ICsjaW5jbHVk
ZSA8bGludXgvc2xhYi5oPg0KPiA+ID4gPiArDQo+ID4gPiA+ICsjaW5jbHVkZSAicmVzdHJpY3Rl
ZF9oZWFwLmgiDQo+ID4gPiA+ICsNCj4gPiA+ID4gKyNkZWZpbmUgTUFYX0hFQVBfQ09VTlQgMg0K
PiA+ID4NCj4gPiA+IEFyZSBtdWx0aXBsZSBzdXBwb3J0ZWQgYmVjYXVzZSBvZiB3aGF0IEN5cmls
bGUgbWVudGlvbmVkIGhlcmUgYWJvdXQgcGVybWlzc2lvbnM/DQo+ID4gPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sL0RCQlBSMDRNQjc1MTRFMDA2NDU1QUVBNDA3MDQxRTRGNzg4NzA5QERC
QlBSMDRNQjc1MTQuZXVycHJkMDQucHJvZC5vdXRsb29rLmNvbS8NCj4gPg0KPiA+IFllcywgSSBr
ZXB0IHRoYXQgYXMgaXMuDQo+DQo+IE9rIHRoYW5rcy4NCj4NCj4gPiA+IFNvIHRoaXMgaXMganVz
dCBzb21lIGFyYml0cmFyeSBsaW1pdD8gSSdkIHByZWZlciB0byBoYXZlIHNvbWUgc29ydCBvZg0K
PiA+ID4gZG9jdW1lbnRhdGlvbiBhYm91dCB0aGlzLg0KPiA+DQo+ID4gSG93IGFib3V0IHJlbW92
aW5nIHRoZSBsaW1pdCBhbmQgdXNpbmcgZHluYW1pYyBhbGxvY2F0aW9uIGluc3RlYWQ/DQo+DQo+
IFRoYXQgd29ya3MgdG9vIQ0KDQpJdCB0dXJucyBvdXQgdGhhdCB3YXMgZWFzaWVyIHNhaWQgdGhh
biBkb25lLiBUaGUgbGltaXQgaXMgaGFyZGNvZGVkDQpiZWNhdXNlIGR5bmFtaWMgbWVtb3J5IGFs
bG9jYXRpb24gaXNuJ3QgYXZhaWxhYmxlIGF0IHRoYXQgc3RhZ2UgZHVyaW5nDQpib290LiBXZSBo
YXZlIGEgc2hvcnQgZGVzY3JpcHRpb24gb2YgdGhpcyBoZWFwIGluIEtjb25maWcuIEknbGwgYWRk
DQpzb21ldGhpbmcgYWJvdXQgdGhlIGxpbWl0IHRoZXJlIGlmIHRoYXQgbWFrZXMgc2Vuc2UuDQoN
ClRoYW5rcywNCkplbnMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

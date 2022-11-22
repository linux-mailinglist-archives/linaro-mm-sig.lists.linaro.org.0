Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A170B6339AA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 11:18:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 194C03EC65
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Nov 2022 10:18:07 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by lists.linaro.org (Postfix) with ESMTPS id A7D123EC62
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 10:17:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=I8sHtJ1V;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.219.171 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id p81so9072025yba.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Nov 2022 02:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eAU3eLi14ypt2c7b62+uOHX4p+XY4P0OQzHd4hzoaDg=;
        b=I8sHtJ1VMGWbKADlghW+RXorMBoSoGjLES4pamIlTJ84wNBgwc8sYMtmY465DWhztX
         8T6TnLw+/ULQud/T+NeuVkPEFI2IbCg9VAga/SULPq5Nq/ZrU1KWxBjhWgSV7d+TikqR
         vploUK08ERDl4Ku/AOx/5xoK2Qou94qqW0nOH63KbmfBRr5L4kAsvt1aWsX12n58DwZZ
         JNVKU17khlLyeudPe3qFAs5NIKyB4B3OV41S7mlmAziAJmVlcvJGVMv5AWfcgNwIM8Qo
         PcS4IxvqboaMcDSFM1z5mbr1Fcdsb4U2c985YnUeuWjIRWww8+Cs2B5likipDQqp4fag
         lDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eAU3eLi14ypt2c7b62+uOHX4p+XY4P0OQzHd4hzoaDg=;
        b=rXmsjX06HI5xf/Lr0i93Jy9Nvg950rcqcprLD89t6MbcClt5aibaCTvsi+opnwCN5c
         UsSS1XRgmokiSEpy5pAiB/xyNbTYsqVM2eyZ960QocIyJewqEq2mcLjo4R+tdPgrCHam
         YsybNIl7SEGyuBgMb16xphF8UJrwjoFgFY6M1q+FJ9cGaQFN7ZL5/K8sb4rA2KwVLjyx
         Hh6syPn6AqtLzd2FP69YzDHsxfH/x0gVvGmgimr4blUQV1q/390cmnUH4P6HD8hl7OXm
         k19D7aKyRVjssnOYolv0dC+8IqGH4doW+Pky/VdSFATRQjkm4IMU0oWxzDtU4BYXxcmE
         IVsg==
X-Gm-Message-State: ANoB5pm0JbeaCHTn8eZ87x8Ye6uSzjkBcqZyW2h4vnVS2VZVug2zogau
	ZOtE39ax0oqUBVJlr6NKsRSKrbSf/e2v8IIOibFcQlmp
X-Google-Smtp-Source: AA0mqf4EfspKpQlvvPQVNU9csb2/qWXEm/ETQb7S4hZogc+BxdwSf49gtnOks6esC5AGsgUhblJGlve+hpHsdaKYmCs=
X-Received: by 2002:a25:cc0a:0:b0:6e6:f85a:da48 with SMTP id
 l10-20020a25cc0a000000b006e6f85ada48mr19451585ybf.369.1669112277056; Tue, 22
 Nov 2022 02:17:57 -0800 (PST)
MIME-Version: 1.0
References: <TYCP286MB2323873BBDF88020781FB986CA3B9@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
 <TYCP286MB2323894F9939C27291FD998CCA0A9@TYCP286MB2323.JPNP286.PROD.OUTLOOK.COM>
 <56393e84-485b-42ba-5fce-d4a0d0017653@amd.com>
In-Reply-To: <56393e84-485b-42ba-5fce-d4a0d0017653@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 22 Nov 2022 15:47:42 +0530
Message-ID: <CAO_48GFU+bWBm5BmzZx1r5z4U+7pME3MVtsCu73FHSNy0KDx0A@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: A7D123EC62
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[outlook.com,collabora.com,redhat.com,arm.com,google.com,ti.com,android.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.993];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.171:from];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EDFPMXG5FVAVDXSV42R7MMDBONN75GLI
X-Message-ID-Hash: EDFPMXG5FVAVDXSV42R7MMDBONN75GLI
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dawei Li <set_pte_at@outlook.com>, benjamin.gaignard@collabora.com, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, afd@ti.com, sspatil@android.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] dma-buf: fix racing conflict of dma_heap_add()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EDFPMXG5FVAVDXSV42R7MMDBONN75GLI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGF3ZWkgTGksDQoNCk9uIE1vbiwgMjEgTm92IDIwMjIgYXQgMjM6NTMsIENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IEhpIERhd2VpLA0K
Pg0KPiBmcm9tIHRoZSB0ZWNobmljYWwgZGVzY3JpcHRpb24sIGNvZGluZyBzdHlsZSBldGMuLiBp
dCBsb29rcyBjbGVhbiB0byBtZSwNCj4gYnV0IEknbSB0aGUgY29tcGxldGVseSB3cm9uZyBwZXJz
b24gdG8gYXNrIGZvciBhIGJhY2tncm91bmQgY2hlY2suDQo+DQo+IEkgaGF2ZSBhIGhpZ2ggbGV2
ZWwgdW5kZXJzdGFuZGluZyBvZiBob3cgZG1hLWhlYXBzIHdvcmssIGJ1dCBub3QgYQ0KPiBzaW5n
bGUgbGluZSBvZiB0aGlzIGNvZGUgaXMgZnJvbSBtZS4NCj4NCj4gRmVlbCBmcmVlIHRvIGFkZCBt
eSBBY2tlZC1ieSwgYnV0IExhdXJhLCBKb2huIGFuZCBvdGhlcnMgZG8geW91IGhhdmUgYW55DQo+
IG9waW5pb24/DQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gQW0gMjEuMTEuMjIg
dW0gMTY6Mjggc2NocmllYiBEYXdlaSBMaToNCj4gPiBPbiBTYXQsIE5vdiAwNSwgMjAyMiBhdCAx
MjowNTozNkFNICswODAwLCBEYXdlaSBMaSB3cm90ZToNCj4gPg0KPiA+IEhpIENocmlzdGlhbiwN
Cj4gPiBNYXkgSSBoYXZlIHlvdXIgb3BpbmlvbiBvbiB0aGlzIGNoYW5nZT8NCj4gPg0KPiA+IFRo
YW5rcywNCj4gPiBEYXdlaQ0KPiA+DQo+ID4+IFJhY2luZyBjb25mbGljdCBjb3VsZCBiZToNCj4g
Pj4gdGFzayBBICAgICAgICAgICAgICAgICB0YXNrIEINCj4gPj4gbGlzdF9mb3JfZWFjaF9lbnRy
eQ0KPiA+PiBzdHJjbXAoaC0+bmFtZSkpDQo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgIGxp
c3RfZm9yX2VhY2hfZW50cnkNCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgc3RyY21wKGgt
Pm5hbWUpDQo+ID4+IGt6YWxsb2MgICAgICAgICAgICAgICAga3phbGxvYw0KPiA+PiAuLi4uLi4g
ICAgICAgICAgICAgICAgIC4uLi4uDQo+ID4+IGRldmljZV9jcmVhdGUgICAgICAgICAgZGV2aWNl
X2NyZWF0ZQ0KPiA+PiBsaXN0X2FkZA0KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICBsaXN0
X2FkZA0KPiA+Pg0KPiA+PiBUaGUgcm9vdCBjYXVzZSBpcyB0aGF0IHRhc2sgQiBoYXMgbm8gaWRl
YSBhYm91dCB0aGUgZmFjdCBzb21lb25lDQo+ID4+IGVsc2UoQSkgaGFzIGluc2VydGVkIGhlYXAg
d2l0aCBzYW1lIG5hbWUgd2hlbiBpdCBjYWxscyBsaXN0X2FkZCwNCj4gPj4gc28gYSBwb3RlbnRp
YWwgY29sbGlzaW9uIG9jY3Vycy4NCj4gPj4NCj4gPj4gRml4ZXM6IGMwMmE4MWZiYTc0ZiAoImRt
YS1idWY6IEFkZCBkbWEtYnVmIGhlYXBzIGZyYW1ld29yayIpDQo+ID4+IFNpZ25lZC1vZmYtYnk6
IERhd2VpIExpIDxzZXRfcHRlX2F0QG91dGxvb2suY29tPg0KDQpMb29rcyBnb29kIHRvIG1lIGFz
IHdlbGwuIEkgd2lsbCBhcHBseSBpdCBvdmVyIG9uIGRybS1taXNjLg0KDQpCZXN0LA0KU3VtaXQu
DQo+ID4+IC0tLQ0KPiA+PiB2MTogaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbG9yZS5rZXJuZWwub3JnJTJGYWxsJTJGVFlD
UDI4Nk1CMjMyMzk1MDE5N0Y2MEZDMzQ3MzEyM0I3Q0EzNDklNDBUWUNQMjg2TUIyMzIzLkpQTlAy
ODYuUFJPRC5PVVRMT09LLkNPTSUyRiZhbXA7ZGF0YT0wNSU3QzAxJTdDY2hyaXN0aWFuLmtvZW5p
ZyU0MGFtZC5jb20lN0MxOTg5ZjMxMjU3ZmM0NThhMjdjNTA4ZGFjYmQ1MDc4ZSU3QzNkZDg5NjFm
ZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2MzgwNDY0MTM3MDc0NDMyMDMlN0NV
bmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklp
TENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3QyU3QyU3QyZhbXA7c2RhdGE9
T1dQVVBySUhHbnp3WHlRRTRXbEl0aFRod1N1U0syeTNFcTJXcTV6QXpibyUzRCZhbXA7cmVzZXJ2
ZWQ9MA0KPiA+PiB2MS0+djI6IE5hcnJvdyBkb3duIGxvY2tpbmcgc2NvcGUsIGNoZWNrIHRoZSBl
eGlzdGVuY2Ugb2YgaGVhcCBiZWZvcmUNCj4gPj4gaW5zZXJ0aW9uLCBhcyBzdWdnZXN0ZWQgYnkg
QW5kcmV3IERhdmlzLg0KPiA+PiB2Mi0+djM6IFJlbW92ZSBkb3VibGUgY2hlY2tpbmcuDQo+ID4+
IHYzLT52NDogTWlub3IgY29kaW5nIHN0eWxlIGFuZCBwYXRjaCBmb3JtYXR0aW5nIGFkanVzdG1l
bnQuDQo+ID4+IC0tLQ0KPiA+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgMjggKysr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLQ0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPj4g
aW5kZXggOGY1ODQ4YWExNDRmLi41OWQxNTg4NzNmNGMgMTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVh
cC5jDQo+ID4+IEBAIC0yMzMsMTggKzIzMyw2IEBAIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBf
YWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ID4+ICAg
ICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gPj4gICAgICB9DQo+ID4+DQo+
ID4+IC0gICAgLyogY2hlY2sgdGhlIG5hbWUgaXMgdW5pcXVlICovDQo+ID4+IC0gICAgbXV0ZXhf
bG9jaygmaGVhcF9saXN0X2xvY2spOw0KPiA+PiAtICAgIGxpc3RfZm9yX2VhY2hfZW50cnkoaCwg
JmhlYXBfbGlzdCwgbGlzdCkgew0KPiA+PiAtICAgICAgICAgICAgaWYgKCFzdHJjbXAoaC0+bmFt
ZSwgZXhwX2luZm8tPm5hbWUpKSB7DQo+ID4+IC0gICAgICAgICAgICAgICAgICAgIG11dGV4X3Vu
bG9jaygmaGVhcF9saXN0X2xvY2spOw0KPiA+PiAtICAgICAgICAgICAgICAgICAgICBwcl9lcnIo
ImRtYV9oZWFwOiBBbHJlYWR5IHJlZ2lzdGVyZWQgaGVhcCBuYW1lZCAlc1xuIiwNCj4gPj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGV4cF9pbmZvLT5uYW1lKTsNCj4gPj4gLSAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4+IC0gICAgICAgICAgICB9
DQo+ID4+IC0gICAgfQ0KPiA+PiAtICAgIG11dGV4X3VubG9jaygmaGVhcF9saXN0X2xvY2spOw0K
PiA+PiAtDQo+ID4+ICAgICAgaGVhcCA9IGt6YWxsb2Moc2l6ZW9mKCpoZWFwKSwgR0ZQX0tFUk5F
TCk7DQo+ID4+ICAgICAgaWYgKCFoZWFwKQ0KPiA+PiAgICAgICAgICAgICAgcmV0dXJuIEVSUl9Q
VFIoLUVOT01FTSk7DQo+ID4+IEBAIC0yODMsMTMgKzI3MSwyNyBAQCBzdHJ1Y3QgZG1hX2hlYXAg
KmRtYV9oZWFwX2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZv
KQ0KPiA+PiAgICAgICAgICAgICAgZXJyX3JldCA9IEVSUl9DQVNUKGRldl9yZXQpOw0KPiA+PiAg
ICAgICAgICAgICAgZ290byBlcnIyOw0KPiA+PiAgICAgIH0NCj4gPj4gLSAgICAvKiBBZGQgaGVh
cCB0byB0aGUgbGlzdCAqLw0KPiA+PiArDQo+ID4+ICAgICAgbXV0ZXhfbG9jaygmaGVhcF9saXN0
X2xvY2spOw0KPiA+PiArICAgIC8qIGNoZWNrIHRoZSBuYW1lIGlzIHVuaXF1ZSAqLw0KPiA+PiAr
ICAgIGxpc3RfZm9yX2VhY2hfZW50cnkoaCwgJmhlYXBfbGlzdCwgbGlzdCkgew0KPiA+PiArICAg
ICAgICAgICAgaWYgKCFzdHJjbXAoaC0+bmFtZSwgZXhwX2luZm8tPm5hbWUpKSB7DQo+ID4+ICsg
ICAgICAgICAgICAgICAgICAgIG11dGV4X3VubG9jaygmaGVhcF9saXN0X2xvY2spOw0KPiA+PiAr
ICAgICAgICAgICAgICAgICAgICBwcl9lcnIoImRtYV9oZWFwOiBBbHJlYWR5IHJlZ2lzdGVyZWQg
aGVhcCBuYW1lZCAlc1xuIiwNCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGV4cF9p
bmZvLT5uYW1lKTsNCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgZXJyX3JldCA9IEVSUl9QVFIo
LUVJTlZBTCk7DQo+ID4+ICsgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyMzsNCj4gPj4gKyAg
ICAgICAgICAgIH0NCj4gPj4gKyAgICB9DQo+ID4+ICsNCj4gPj4gKyAgICAvKiBBZGQgaGVhcCB0
byB0aGUgbGlzdCAqLw0KPiA+PiAgICAgIGxpc3RfYWRkKCZoZWFwLT5saXN0LCAmaGVhcF9saXN0
KTsNCj4gPj4gICAgICBtdXRleF91bmxvY2soJmhlYXBfbGlzdF9sb2NrKTsNCj4gPj4NCj4gPj4g
ICAgICByZXR1cm4gaGVhcDsNCj4gPj4NCj4gPj4gK2VycjM6DQo+ID4+ICsgICAgZGV2aWNlX2Rl
c3Ryb3koZG1hX2hlYXBfY2xhc3MsIGhlYXAtPmhlYXBfZGV2dCk7DQo+ID4+ICAgZXJyMjoNCj4g
Pj4gICAgICBjZGV2X2RlbCgmaGVhcC0+aGVhcF9jZGV2KTsNCj4gPj4gICBlcnIxOg0KPiA+PiAt
LQ0KPiA+PiAyLjI1LjENCj4gPj4NCj4NCg0KDQotLSANClRoYW5rcyBhbmQgcmVnYXJkcywNCg0K
U3VtaXQgU2Vtd2FsIChoZSAvIGhpbSkNClRlY2ggTGVhZCAtIExDRywgVmVydGljYWwgVGVjaG5v
bG9naWVzDQpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=

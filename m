Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1DE7CF76C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:50:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A5173EF8B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:50:54 +0000 (UTC)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by lists.linaro.org (Postfix) with ESMTPS id 9C5A73EABF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Sep 2023 23:37:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=B7vJE8cR;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.166.171 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-34fa117f92bso28165ab.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Sep 2023 16:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695166666; x=1695771466; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3CBBvqgdHlaE7qrp16rL/k+TOy6ZHc5Otw9KkoIR3N0=;
        b=B7vJE8cR3Wp0qxRSvC5PRXmMYgAmggbQNO/6Oir8GMMJaMYyZunqy/cexgBfejeMeW
         qJJzBAF3DuQPBzRzM0UUlay641aYzcPQDCKGyvjLv1CYDD71z4aoZdR6LYpRVRwW7aIc
         cfPQ+4vIuezdPS3h42eivk9g0jemzeFN94dY1aUpl5x6ekqzfkuI3n+TYC+dfFFpEC1X
         tsWI9e+Wfp0EBGtwNZVIIbyQwTapHF+5FTEi5pjey1xp54Uijx52kwQWot1tBhKhIEKI
         3XNEr+uEUZYqlb/LeFZCbrY1RHMDcm0N9RfT+A4HXMKXOjVicECGjBQwx6RpJH8zMaJK
         MSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695166666; x=1695771466;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3CBBvqgdHlaE7qrp16rL/k+TOy6ZHc5Otw9KkoIR3N0=;
        b=aDTAGQ6b+Rh/4KXk9rh7s9mcGsGJGKLc4wJwAWrrdF/hnSGywXRlvmxeD8fgXfvf2H
         ecFsYlJQ2tT8YS1EvqdVaamRGjtAFMa93JAAL5EmV7qLQSeybbS/vSaAHXw2qvi2G4UX
         V7hSWDDp8MdpmuGPwKh646gjnk8ACL4DXUQc3+/kAN1C8/WTV2p+tbprseaZQE8OLTBa
         f2Plw74gIp9euWlDrkR1Q2sDqjQ/8wADtQ1TCYk64KxsQKMQFfQNKl3P2ehabjY27ayj
         56/ah6dDnvVtzDSFWEzRv++u6HQ7kCOHyO2d5qK48xZUh7F8X8Wtj9T66V3vwF9GkbGc
         +2Aw==
X-Gm-Message-State: AOJu0YzWSzyS0gAs+YFb4C19Cuomyona6aO9PrwbvClJD6fEXl692RCS
	FzE6P8KowINlURH8XhUAQvJ13LwUKD2yozoNC9GQ
X-Google-Smtp-Source: AGHT+IEkj4ZxRK6CIppUtSGaqRy1AaoOr04YDLb3I3H35DnusOgqyPctNPG82NvpQQR2jBPAph/dtWVJ+aWn6Xi3hns=
X-Received: by 2002:a92:c56b:0:b0:34f:5587:4353 with SMTP id
 b11-20020a92c56b000000b0034f55874353mr45782ilj.25.1695166665921; Tue, 19 Sep
 2023 16:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com> <CAPj87rOHctwHJM-7HiQpt8Q0b09x0WWw_T4XsL0qT=dS+XzyZQ@mail.gmail.com>
In-Reply-To: <CAPj87rOHctwHJM-7HiQpt8Q0b09x0WWw_T4XsL0qT=dS+XzyZQ@mail.gmail.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Tue, 19 Sep 2023 16:37:30 -0700
Message-ID: <CA+ddPcMw0K-zkjW5LEHA4B81E25_HSVHVnEF67Lp0jGGNNUAxQ@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.171:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com,collabora.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,collabora.corp-partner.google.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9C5A73EABF
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2SKMMTFLC6E36KS6HYCRXL4PRSPG6GJ4
X-Message-ID-Hash: 2SKMMTFLC6E36KS6HYCRXL4PRSPG6GJ4
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:46:51 +0000
CC: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Project_Global_Chrome_Upstream_Group@mediatek.com, Singo Chang <singo.chang@mediatek.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, linux-mediatek@lists.infradead.org, Shawn Sung <shawn.sung@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, Nicolas Dufresne <nicolas.dufresne@collabora.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 00/10] Add mediate-drm secure flow for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2SKMMTFLC6E36KS6HYCRXL4PRSPG6GJ4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMTgsIDIwMjMgYXQgMTE6MzPigK9QTSBEYW5pZWwgU3RvbmUgPGRhbmllbEBm
b29pc2hiYXIub3JnPiB3cm90ZToNCj4NCj4gSGkgSmFzb24sIENLLA0KPg0KPiBPbiBUdWUsIDE5
IFNlcHQgMjAyMyBhdCAwNDowNCwgSmFzb24tSkguTGluIDxqYXNvbi1qaC5saW5AbWVkaWF0ZWsu
Y29tPiB3cm90ZToNCj4gPiBUaGUgcGF0Y2ggc2VyaWVzIHByb3ZpZGVzIGRybSBkcml2ZXIgc3Vw
cG9ydCBmb3IgZW5hYmxpbmcgc2VjdXJlIHZpZGVvDQo+ID4gcGF0aCAoU1ZQKSBwbGF5YmFjayBv
biBNZWRpYWlUZWsgaGFyZHdhcmUgaW4gdGhlIExpbnV4IGtlcm5lbC4NCj4gPg0KPiA+IFsuLi5d
DQo+ID4NCj4gPiBNZW1vcnkgVXNhZ2UgaW4gU1ZQOg0KPiA+IFRoZSBvdmVyYWxsIGZsb3cgb2Yg
U1ZQIHN0YXJ0cyB3aXRoIGVuY3J5cHRlZCB2aWRlbyBjb21pbmcgaW4gZnJvbSBhbg0KPiA+IG91
dHNpZGUgc291cmNlIGludG8gdGhlIFJFRS4gVGhlIFJFRSB3aWxsIHRoZW4gYWxsb2NhdGUgYSAn
c2VjdXJlDQo+ID4gYnVmZmVyJyBhbmQgc2VuZCB0aGUgY29ycmVzcG9uZGluZyAnc2VjdXJlIGhh
bmRsZScgYWxvbmcgd2l0aCB0aGUNCj4gPiBlbmNyeXB0ZWQsIGNvbXByZXNzZWQgdmlkZW8gZGF0
YSB0byB0aGUgVEVFLiBUaGUgVEVFIHdpbGwgdGhlbiBkZWNyeXB0DQo+ID4gdGhlIHZpZGVvIGFu
ZCBzdG9yZSB0aGUgcmVzdWx0IGluIHRoZSAnc2VjdXJlIGJ1ZmZlcicuIFRoZSBSRUUgd2lsbA0K
PiA+IHRoZW4gYWxsb2NhdGUgYSAnc2VjdXJlIHN1cmZhY2UnLiBUaGUgUkVFIHdpbGwgcGFzcyB0
aGUgJ3NlY3VyZQ0KPiA+IGhhbmRsZXMnIGZvciBib3RoIHRoZSAnc2VjdXJlIGJ1ZmZlcicgYW5k
ICdzZWN1cmUgc3VyZmFjZScgaW50byB0aGUNCj4gPiBURUUgZm9yIHZpZGVvIGRlY29kaW5nLiBU
aGUgdmlkZW8gZGVjb2RlciBIVyB3aWxsIHRoZW4gZGVjb2RlIHRoZQ0KPiA+IGNvbnRlbnRzIG9m
IHRoZSAnc2VjdXJlIGJ1ZmZlcicgYW5kIHBsYWNlIHRoZSByZXN1bHQgaW4gdGhlICdzZWN1cmUN
Cj4gPiBzdXJmYWNlJy4gVGhlIFJFRSB3aWxsIHRoZW4gYXR0YWNoIHRoZSAnc2VjdXJlIHN1cmZh
Y2UnIHRvIHRoZSBvdmVybGF5DQo+ID4gcGxhbmUgZm9yIHJlbmRlcmluZyBvZiB0aGUgdmlkZW8u
DQo+ID4NCj4gPiBFdmVyeXRoaW5nIHJlbGF0aW5nIHRvIGVuc3VyaW5nIHNlY3VyaXR5IG9mIHRo
ZSBhY3R1YWwgY29udGVudHMgb2YgdGhlDQo+ID4gJ3NlY3VyZSBidWZmZXInIGFuZCAnc2VjdXJl
IHN1cmZhY2UnIGlzIG91dCBvZiBzY29wZSBmb3IgdGhlIFJFRSBhbmQNCj4gPiBpcyB0aGUgcmVz
cG9uc2liaWxpdHkgb2YgdGhlIFRFRS4NCj4gPg0KPiA+IERSTSBkcml2ZXIgaGFuZGxlcyBhbGxv
Y2F0aW9uIG9mIGdlbSBvYmplY3RzIHRoYXQgYXJlIGJhY2tlZCBieSBhICdzZWN1cmUNCj4gPiBz
dXJmYWNlJyBhbmQgZm9yIGRpc3BsYXlpbmcgYSAnc2VjdXJlIHN1cmZhY2UnIG9uIHRoZSBvdmVy
bGF5IHBsYW5lLg0KPiA+IFRoaXMgaW50cm9kdWNlcyBhIG5ldyBmbGFnIGZvciBvYmplY3QgY3Jl
YXRpb24gY2FsbGVkDQo+ID4gRFJNX01US19HRU1fQ1JFQVRFX0VOQ1JZUFRFRCB3aGljaCBpbmRp
Y2F0ZXMgaXQgc2hvdWxkIGJlIGEgJ3NlY3VyZQ0KPiA+IHN1cmZhY2UnLiBBbGwgY2hhbmdlcyBo
ZXJlIGFyZSBpbiBNZWRpYVRlayBzcGVjaWZpYyBjb2RlLg0KPg0KPiBUbyBiZSBob25lc3QsIGl0
IHNlZW1zIHN0cmFuZ2UgdGhhdCBEUk0gaXMgYmVpbmcgdXNlZCBhcyB0aGUgYWxsb2NhdG9yDQo+
IGZvciBidWZmZXJzIHdoaWNoIHdpbGwgbW9zdGx5IGJlIHVzZWQgYnkgY29kZWMgaGFyZHdhcmUg
d2hpY2ggaXMgbm90DQo+IG1lbnRpb25lZCBoZXJlLiBJIGNhbiB1bmRlcnN0YW5kIHRoYXQgbWlu
aWdibSBhbmQgZ2JtX2dyYWxsb2MgbWFrZQ0KPiB0aGlzIGVhc3kgdG8gaW1wbGVtZW50LCBidXQg
aXQncyBub3QgcmVhbGx5IHJpZ2h0IHRvIGFkZCB0aGlzIGFsbCB0bw0KPiBtdGstZHJtIGp1c3Qg
dG8gc3VwcG9ydCBzb21lIGNvZGVjIGZlYXR1cmVzLg0KVGhlIGJ1ZmZlcnMgYWxsb2NhdGVkIGFy
ZSB1c2VkIGFzIHRoZSBvdXRwdXQgZm9yIHNlY3VyZSB2aWRlbyBkZWNvZGluZw0KYW5kIHRoZW4g
cmVuZGVyaW5nIGFzIHdlbGwuIFNvIHRoZXkgYXJlbid0IGp1c3QgdXNlZCBieSB0aGUgY29kZWMg
SFcsDQp0aGV5J3JlIGFsc28gdXNlZCBmb3IgZGlzcGxheSBvbiB0aGUgb3ZlcmxheSBwbGFuZS4N
Cg0KQW5kIEknbSB0aGUgdXNlciBvZiBhbGwgdGhlIHNlY3VyZSB2aWRlbyBwYXRoIHBhdGNoZXMg
TWVkaWF0ZWsgaGFzDQpiZWVuIHBvc3RpbmcsIHRoaXMgaXMgZm9yIHNlY3VyZSB2aWRlbyBwbGF5
YmFjayBvbiBDaHJvbWVPUyBBUk0NCmRldmljZXMuIChqdXN0IG1lbnRpb25pbmcgc28geW91IGtu
b3cgbXkgY29udGV4dCBpbiB0aGlzIGFsbCkNCj4NCj4gTlhQIHBvc3RlZCBhIHBhdGNoc2V0IGEg
d2hpbGUgYWdvIHRvIGFkZCBzZWN1cmUtbWVtb3J5IHN1cHBvcnQgdG8NCj4gZG1hLWhlYXBzWzBd
LiBUaGlzIHdvdWxkIGJlIG11Y2ggY2xlYW5lciAoZS5nLiBhdm9pZGluZyBzdHJjbXAgb24NCj4g
YWxsb2NhdGluZyBuYW1lLCBhdm9pZGluZyBtdGstZHJtIGJlaW5nIGEgcmVuZGVyIG5vZGUgd2hl
biBpdCBjYW4ndA0KPiByZW5kZXIpIEkgdGhpbmssIGFuZCBhbHNvIGFsbG93IGNvbW1vbiBzZWN1
cmUtcGF0aCBzZW1hbnRpY3MgYmV0d2Vlbg0KPiBkaWZmZXJlbnQgdmVuZG9ycy4NCj4NClllcywg
SSBzYXcgdGhhdCBub3cuIEkgYWdyZWUgdGhhdCBoYXZpbmcgYSBjb21tb24gc2VjdXJlLXBhdGgg
c29sdXRpb24NCmlzIHByZWZlcmFibGUuIEJ1dCB0aGUgdHdvIGlzc3VlcyB5b3UgbWVudGlvbiB3
aXRoIHRoaXMgcGF0Y2hzZXQNCmFyZW4ndCBkaXJlY3RseSByZWxhdGVkIHRvIHRoZSBkbWEtYnVm
IGhlYXAgaW1wbGVtZW50YXRpb24gSSB0aGluay4NCg0KVGhlIHVnbHkgc3RyY21wIGNhbiBiZSBy
ZW1vdmVkIGZyb20gdGhpcyBwYXRjaHNldC4uLmJlY2F1c2UgaXQgZG9lc24ndA0KYWN0dWFsbHkg
bmVlZCB0byBjaGVjayB0aGUgaGVhcCBuYW1lLCBpdCBvbmx5IGV2ZXIgaW52b2tlcw0KbXRrX2Ry
bV9nZW1fY3JlYXRlX2Zyb21faGVhcCBmb3Igc2VjdXJlIG1lbW9yeSBhbGxvY2F0aW9ucy4uLnNv
IHRoYXQNCnNob3VsZCBqdXN0IGJlIHJlbmFtZWQgbXRrX2RybV9nZW1fY3JlYXRlX2Zyb21fc2Vj
dXJlX2hlYXAuIFRoZSBSRU5ERVINCmZsYWcgY2FuIGFsc28gYmUgcmVtb3ZlZC4gSUlVQywgdGhh
dCdzIGFuIGFydGlmYWN0IG9mIGhvdyBDaHJvbWVPUyBpcw0KZG9pbmcgdGhlIGFsbG9jYXRpb25z
IGFuZCB0aGF0IGl0J3MgcGVyZm9ybWluZyBpdCBvbiBhIHJlbmRlciBub2RlLg0KVGhhdCBjYW4g
YmUgcmVtb3ZlZCBmcm9tIHRoaXMgcGF0Y2hzZXQgYW5kIHdlIGNhbiBhZGRyZXNzIHRoYXQgcHJv
YmxlbQ0Kb24gdGhlIENocm9tZU9TIHNpZGUgaW5zdGVhZC4NCg0KR29pbmcgYmFjayB0byB0aGUg
TlhQIGltcGxlbWVudGF0aW9uLi4udGhlIG1haW4gZGlmZmVyZW5jZSBiZXR3ZWVuDQp0aGF0IG9u
ZSBhbmQgd2hhdCBNZWRpYXRlayBpcyBwcm9wb3NpbmcgKGFzaWRlIGZyb20gYWxsIHRoZWlyIHZl
bmRvcg0Kc3BlY2lmaWMgbmFtaW5nIG9mIHRoaW5ncykgaXMgdGhhdCB0aGUgTlhQIHBhdGNoc2V0
IGRvZXMgYWxsIHRoZQ0KYWxsb2NhdGlvbiBpbiB0aGUga2VybmVsIGl0c2VsZiBhbmQgdGhlIGtl
cm5lbCBpcyBoYW5kaW5nIG91dCBwaHlzaWNhbA0KYWRkcmVzc2VzIGZyb20gdGhlIHJlc2VydmVk
IHJhbmdlIHcvIG5vIHZpcnR1YWwgYWRkcmVzcyBtYXBwaW5nLiBJDQp0aGluayB0aGF0IHdvdWxk
IG1lYW4geW91IGhhdmUgdG8gYWx3YXlzIGFsbG9jYXRlIGNvbnRpZ3VvdXMgYmxvY2tzLA0Kd2hp
Y2ggd291bGQgYmUgcHJvbmUgdG8gZnJhZ21lbnRhdGlvbi4gIEluIHRoZSBNZWRpYXRlaw0KaW1w
bGVtZW50YXRpb24sIHRoZXkgYXJlIGRvaW5nIHRoZSBhbGxvY2F0aW9ucyBmcm9tIHRoZSBoZWFw
IGluIHRoZQ0KVEVFLCBzbyB0aGV5IGNhbiBkZWFsIHdpdGggcGh5c2ljYWwgbWVtb3J5IGZyYWdt
ZW50YXRpb24gdGhyb3VnaA0KdmlydHVhbCBhZGRyZXNzZXMgc2luY2UgdGhleSBjYW4gZG8gU0cg
bGlzdHMgdG8gYWxsb2NhdGUgZnJvbQ0KZnJhZ21lbnRlZCBtZW1vcnkgaW4gdGhlIFRFRS4NCg0K
DQoNCg0KPiBIYXZpbmcgY29tbW9uIHNlY3VyZS1wYXRoIHNlbWFudGljcyBiZXR3ZWVuIGRpZmZl
cmVudCB2ZW5kb3JzIHdvdWxkIGJlDQo+IHZlcnkgaGVscGZ1bCwgYmVjYXVzZSB0aGUgZmlyc3Qg
cXVlc3Rpb24gd2hlbiB3ZSBhZGQgbmV3IHVBUEkgaXMNCj4gJ3doZXJlIGlzIHRoZSBvcGVuLXNv
dXJjZSB1c2Vyc3BhY2U/Jy4gSWYgdGhlcmUgaXMgYXQgbGVhc3QgYSBjb21tb24NCj4gaW50ZXJm
YWNlIHRocm91Z2ggZS5nLiBkbWEtaGVhcHMsIHRoZW4gd2UgY291bGQgaGF2ZSBzb21lIHN0YW5k
YXJkDQo+IGNyb3NzLXZlbmRvciB1c2Vyc3BhY2UgY29kZSB3aGljaCB3b3VsZCB3b3JrIHdlbGwg
d2l0aCB0aGUgc3RhbmRhcmQNCj4gaW50ZXJmYWNlLg0KPg0KVGhhbmtzIGZvciB5b3VyIGZlZWRi
YWNrLCBJIGRlZmluaXRlbHkgd2FudCB0byB3b3JrIHRvIGdldCB0aGlzIHRvDQpzb21ldGhpbmcg
bW9yZSB1c2FibGUgYnkgYSB3aWRlciByYW5nZS4NCg0KPiBDaGVlcnMsDQo+IERhbmllbA0KPg0K
PiBbMF06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMjA4MDUxMzUzMzAuOTcwLTIt
b2xpdmllci5tYXNzZUBueHAuY29tLw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A1092E459
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jul 2024 12:20:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B9BE4110E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jul 2024 10:20:33 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id 06FD640D20
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jul 2024 10:20:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=Eb42m0z5;
	spf=pass (lists.linaro.org: domain of tfiga@chromium.org designates 209.85.167.52 as permitted sender) smtp.mailfrom=tfiga@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52e9b9fb3dcso866293e87.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jul 2024 03:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720693228; x=1721298028; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q4pKxsdxjVBHn5/3r7YaaRkxW/WuW1rZwIMp/JW62Xo=;
        b=Eb42m0z5Cu0Z6mcy2C7XsPAcGlNVpxL1y11fyjvt15QVTkdwfw1U4vmytfkkLALQ0b
         MUHp5VtrkZkp6EmlSdNqxfGsOw9YbLBG9A12BxHbdn7DQIGfi/1FssoXErc2HWTZgpN7
         1YaZJxBZerbg/xfr3FAtUYCh0Oq+zqsAVsO+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720693228; x=1721298028;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q4pKxsdxjVBHn5/3r7YaaRkxW/WuW1rZwIMp/JW62Xo=;
        b=KiEf0nDMDeeCLTdVU9V6f03l41Zojvvq/k0DN8y9m28IONR4hj8C8upBaRFpE06xfa
         FGWu7GI2gVxGwBDVGJwbLlq4SIkhymkt9ZZHlHkKWM8VKiQN6X8se6j8nXR+aIm5n/Ty
         TeWY93Fv/VFUne6UJAHQEeoEYkMiadWU8kIfJjei+evt2pQuff95iiKL+GU6HjHgGf0a
         fDLNbJsFVw3snCgvzmpyBbnZX1lwnL6QdVDSQ+rVeor4/3gqbN4lda/JySFt2lgiJV1l
         IS82YWl7Hf1dQuCVRNwKkv9gSu6npKIiHFntjIBgHyFStfx+YQFDRc+6Pv0jP1nt2h53
         VXlA==
X-Forwarded-Encrypted: i=1; AJvYcCXP+QVmwZ39hk3Xn1N1YZeDBVfGf9jfxnZjUj1fBEc++rn85C+lQjQYFZlW937bBn0T/F1+JDgkT4aSLciBGPuSse5IUGzvV8FE47Xx+XQ=
X-Gm-Message-State: AOJu0YxytSqvsOvZsG49yEigLP5H/WFoTMxWcdESEruHZtTExreU+uAC
	VPtFmDv0vC6Izbq8ZwLdlNhBZQfJFujEujH0W7N+IS7Hul9mCLKMVuT9nCbuK4qvwrSUq75GSfA
	rKg==
X-Google-Smtp-Source: AGHT+IHZ8D69HIuJtsH9sP4ANMN6BB/H17bRWybEoFDCZvGH9K3+MwUHDgQFG+C4HCSU/MijZmsWYg==
X-Received: by 2002:a05:6512:3d21:b0:52c:ddc0:7a03 with SMTP id 2adb3069b0e04-52eb99d1feamr5596793e87.55.1720693228355;
        Thu, 11 Jul 2024 03:20:28 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52eb906cec0sm941004e87.243.2024.07.11.03.20.27
        for <linaro-mm-sig@lists.linaro.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jul 2024 03:20:28 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ee90f56e02so7058191fa.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jul 2024 03:20:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXLqKeSBesb4lkLsi+D/g332UBhf8Xm77TohAKjBVWJpX+ap1s+FrDPGMka6Tec+JvS5iXXVd8+ggMXdBGOywndzdBMhQYCepxeh5TNoR8=
X-Received: by 2002:a17:907:608d:b0:a6e:f7ee:b1fa with SMTP id
 a640c23a62f3a-a780b89cbb7mr555703466b.72.1720693206473; Thu, 11 Jul 2024
 03:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20240618073004.3420436-1-tao.jiang_2@nxp.com> <CAAFQd5B_RTHsMwMdD59RAAyFne_0Ok_A4ExdkVOgi=G6-UGfRQ@mail.gmail.com>
 <036bf0d7f657cae444d20ea6d279b47e3bf0164e.camel@ndufresne.ca>
 <CAAFQd5DfbqOkZzPfCNRMGeMgv2NfM6WENWXeLUNsuMgkzeBQKw@mail.gmail.com> <443d109f-c817-4f47-9368-ff8b09a9a49e@xs4all.nl>
In-Reply-To: <443d109f-c817-4f47-9368-ff8b09a9a49e@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 11 Jul 2024 19:19:39 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Am5jBev5P1HmsdeHoJfROZat3bi1W=UsN7wpVqw-XUQQ@mail.gmail.com>
Message-ID: <CAAFQd5Am5jBev5P1HmsdeHoJfROZat3bi1W=UsN7wpVqw-XUQQ@mail.gmail.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
X-Rspamd-Queue-Id: 06FD640D20
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[xs4all.nl];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[ndufresne.ca,samsung.com,nxp.com,kernel.org,pengutronix.de,gmail.com,oss.nxp.com,lists.linux.dev,vger.kernel.org,linaro.org,amd.com,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	MISSING_XM_UA(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.208.182:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.167.52:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MN43K33LOWZYQI2UZDTNLHBJI2MZ374F
X-Message-ID-Hash: MN43K33LOWZYQI2UZDTNLHBJI2MZ374F
X-MailFrom: tfiga@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas@ndufresne.ca>, TaoJiang <tao.jiang_2@nxp.com>, mchehab@kernel.org, shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, xiahong.bao@nxp.com, eagle.zhou@nxp.com, ming.qian@oss.nxp.com, imx@lists.linux.dev, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Ming Qian <ming.qian@nxp.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] media: videobuf2: sync caches for dmabuf memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MN43K33LOWZYQI2UZDTNLHBJI2MZ374F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKdW4gMjAsIDIwMjQgYXQgMzo1MuKAr1BNIEhhbnMgVmVya3VpbCA8aHZlcmt1aWwt
Y2lzY29AeHM0YWxsLm5sPiB3cm90ZToNCj4NCj4gT24gMTkvMDYvMjAyNCAwNjoxOSwgVG9tYXN6
IEZpZ2Egd3JvdGU6DQo+ID4gT24gV2VkLCBKdW4gMTksIDIwMjQgYXQgMToyNOKAr0FNIE5pY29s
YXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPiB3cm90ZToNCj4gPj4NCj4gPj4gTGUg
bWFyZGkgMTgganVpbiAyMDI0IMOgIDE2OjQ3ICswOTAwLCBUb21hc3ogRmlnYSBhIMOpY3JpdCA6
DQo+ID4+PiBIaSBUYW9KaWFuZywNCj4gPj4+DQo+ID4+PiBPbiBUdWUsIEp1biAxOCwgMjAyNCBh
dCA0OjMw4oCvUE0gVGFvSmlhbmcgPHRhby5qaWFuZ18yQG54cC5jb20+IHdyb3RlOg0KPiA+Pj4+
DQo+ID4+Pj4gRnJvbTogTWluZyBRaWFuIDxtaW5nLnFpYW5AbnhwLmNvbT4NCj4gPj4+Pg0KPiA+
Pj4+IFdoZW4gdGhlIG1lbW9yeSB0eXBlIGlzIFZCMl9NRU1PUllfRE1BQlVGLCB0aGUgdjRsMiBk
ZXZpY2UgY2FuJ3Qga25vdw0KPiA+Pj4+IHdoZXRoZXIgdGhlIGRtYSBidWZmZXIgaXMgY29oZXJl
bnQgb3Igc3luY2hyb25pemVkLg0KPiA+Pj4+DQo+ID4+Pj4gVGhlIHZpZGVvYnVmMi1jb3JlIHdp
bGwgc2tpcCBjYWNoZSBzeW5jcyBhcyBpdCB0aGluayB0aGUgRE1BIGV4cG9ydGVyDQo+ID4+Pj4g
c2hvdWxkIHRha2UgY2FyZSBvZiBjYWNoZSBzeW5jcw0KPiA+Pj4+DQo+ID4+Pj4gQnV0IGluIGZh
Y3QgaXQncyBsaWtlbHkgdGhhdCB0aGUgY2xpZW50IGRvZXNuJ3QNCj4gPj4+PiBzeW5jaHJvbml6
ZSB0aGUgZG1hIGJ1ZiBiZWZvcmUgcWJ1ZigpIG9yIGFmdGVyIGRxYnVmKCkuIGFuZCBpdCdzDQo+
ID4+Pj4gZGlmZmljdWx0IHRvIGZpbmQgdGhpcyB0eXBlIG9mIGVycm9yIGRpcmVjdGx5Lg0KPiA+
Pj4+DQo+ID4+Pj4gSSB0aGluayBpdCdzIGhlbHBmdWwgdGhhdCB2aWRlb2J1ZjItY29yZSBjYW4g
Y2FsbA0KPiA+Pj4+IGRtYV9idWZfZW5kX2NwdV9hY2Nlc3MoKSBhbmQgZG1hX2J1Zl9iZWdpbl9j
cHVfYWNjZXNzKCkgdG8gaGFuZGxlIHRoZQ0KPiA+Pj4+IGNhY2hlIHN5bmNzLg0KPiA+Pj4+DQo+
ID4+Pj4gU2lnbmVkLW9mZi1ieTogTWluZyBRaWFuIDxtaW5nLnFpYW5AbnhwLmNvbT4NCj4gPj4+
PiBTaWduZWQtb2ZmLWJ5OiBUYW9KaWFuZyA8dGFvLmppYW5nXzJAbnhwLmNvbT4NCj4gPj4+PiAt
LS0NCj4gPj4+PiAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYyAg
IHwgMjIgKysrKysrKysrKysrKysrKysrKw0KPiA+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5z
ZXJ0aW9ucygrKQ0KPiA+Pj4+DQo+ID4+Pg0KPiA+Pj4gU29ycnksIHRoYXQgcGF0Y2ggaXMgaW5j
b3JyZWN0LiBJIGJlbGlldmUgeW91J3JlIG1pc3VuZGVyc3RhbmRpbmcgdGhlDQo+ID4+PiB3YXkg
RE1BLWJ1ZiBidWZmZXJzIHNob3VsZCBiZSBtYW5hZ2VkIGluIHRoZSB1c2Vyc3BhY2UuIEl0J3Mg
dGhlDQo+ID4+PiB1c2Vyc3BhY2UgcmVzcG9uc2liaWxpdHkgdG8gY2FsbCB0aGUgRE1BX0JVRl9J
T0NUTF9TWU5DIGlvY3RsIFsxXSB0bw0KPiA+Pj4gc2lnbmFsIHN0YXJ0IGFuZCBlbmQgb2YgQ1BV
IGFjY2VzcyB0byB0aGUga2VybmVsIGFuZCBpbXBseSBuZWNlc3NhcnkNCj4gPj4+IGNhY2hlIHN5
bmNocm9uaXphdGlvbi4NCj4gPj4+DQo+ID4+PiBbMV0gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcv
ZHJpdmVyLWFwaS9kbWEtYnVmLmh0bWwjZG1hLWJ1ZmZlci1pb2N0bHMNCj4gPj4+DQo+ID4+PiBT
bywgcmVhbGx5IHNvcnJ5LCBidXQgaXQncyBhIE5BSy4NCj4gPj4NCj4gPj4NCj4gPj4NCj4gPj4g
VGhpcyBwYXRjaCAqY291bGQqIG1ha2Ugc2Vuc2UgaWYgaXQgd2FzIGluc2lkZSBVVkMgRHJpdmVy
IGFzIGFuIGV4YW1wbGUsIGFzIHRoaXMNCj4gPj4gZHJpdmVyIGNhbiBpbXBvcnQgZG1hYnVmLCB0
byBDUFUgbWVtY3B5LCBhbmQgZG9lcyBvbWl0cyB0aGUgcmVxdWlyZWQgc3luYyBjYWxscw0KPiA+
PiAodW5sZXNzIHRoYXQgZ290IGFkZGVkIHJlY2VudGx5LCBJIGNhbiBlYXNpbHkgaGF2ZSBtaXNz
ZWQgaXQpLg0KPiA+DQo+ID4gWWVhaCwgY3VycmVudGx5IFY0TDIgZHJpdmVycyBkb24ndCBjYWxs
IHRoZSBpbi1rZXJuZWwNCj4gPiBkbWFfYnVmX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSB3aGVu
IHRoZXkgbmVlZCB0byBhY2Nlc3MgdGhlIGJ1ZmZlcnMNCj4gPiBmcm9tIHRoZSBDUFUsIHdoaWxl
IG15IHF1aWNrIGdyZXAgWzFdIHJldmVhbHMgdGhhdCB3ZSBoYXZlIDY4IGZpbGVzDQo+ID4gcmV0
cmlldmluZyBwbGFuZSB2YWRkciBieSBjYWxsaW5nIHZiMl9wbGFuZV92YWRkcigpIChub3QgbmVj
ZXNzYXJpbHkgYQ0KPiA+IDEwMCUgZ3VhcmFudGVlIG9mIENQVSBhY2Nlc3MgYmVpbmcgZG9uZSwg
YnV0IHJhdGhlciBsaWtlbHkgc28pLg0KPiA+DQo+ID4gSSBhbHNvIHJlcGVhdGVkIHRoZSBzYW1l
IHRoaW5nIHdpdGggVkIyX0RNQUJVRiBbMl0gYW5kIHRyaWVkIHRvDQo+ID4gYXR0cmlidXRlIGJv
dGggbGlzdHMgdG8gc3BlY2lmaWMgZHJpdmVycyAoYnkgcmV0YWluaW5nIHRoZSBwYXRoIHVudGls
DQo+ID4gdGhlIGZpcnN0IC0gb3IgXyBbM107IHdoaWNoIHNlZW1lZCB0byBiZSByZWxhdGl2ZWx5
IGFjY3VyYXRlKSwgbGVhZGluZw0KPiA+IHRvIHRoZSBmb2xsb3dpbmcgZHJpdmVycyB0aGF0IGNs
YWltIHN1cHBvcnQgZm9yIERNQUJVRiB3aGlsZSBhbHNvDQo+ID4gcmV0cmlldmluZyBwbGFuZSB2
YWRkciAod2l0aG91dCBwcm9wZXIgc3luY2hyb25pemF0aW9uIC0gbm8gZHJpdmVycw0KPiA+IGN1
cnJlbnRseSBjYWxsIGFueSBiZWdpbi9lbmQgQ1BVIGFjY2Vzcyk6DQo+ID4NCj4gPiAgaTJjL3Zp
ZGVvDQo+ID4gIHBjaS9idDh4eC9idHR2DQo+ID4gIHBjaS9jb2JhbHQvY29iYWx0DQo+ID4gIHBj
aS9jeDE4L2N4MTgNCj4gPiAgcGNpL3R3NTg2NC90dzU4NjQNCj4gPiAgcGNpL3R3Njg2eC90dzY4
NngNCj4gPiAgcGxhdGZvcm0vYWxsZWdybw0KPiA+ICBwbGF0Zm9ybS9hbXBoaW9uL3ZwdQ0KPiA+
ICBwbGF0Zm9ybS9jaGlwcw0KPiA+ICBwbGF0Zm9ybS9pbnRlbC9weGENCj4gPiAgcGxhdGZvcm0v
bWFydmVsbC9tY2FtDQo+ID4gIHBsYXRmb3JtL21lZGlhdGVrL2pwZWcvbXRrDQo+ID4gIHBsYXRm
b3JtL21lZGlhdGVrL3Zjb2RlYy9kZWNvZGVyL210aw0KPiA+ICBwbGF0Zm9ybS9tZWRpYXRlay92
Y29kZWMvZW5jb2Rlci9tdGsNCj4gPiAgcGxhdGZvcm0vbnV2b3Rvbi9ucGNtDQo+ID4gIHBsYXRm
b3JtL252aWRpYS90ZWdyYQ0KPiA+ICBwbGF0Zm9ybS9ueHAvaW14DQo+ID4gIHBsYXRmb3JtL3Jl
bmVzYXMvcmNhcg0KPiA+ICBwbGF0Zm9ybS9yZW5lc2FzL3ZzcDEvdnNwMQ0KPiA+ICBwbGF0Zm9y
bS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxDQo+ID4gIHBsYXRmb3JtL3NhbXN1bmcvZXh5bm9zNA0K
PiA+ICBwbGF0Zm9ybS9zYW1zdW5nL3M1cA0KPiA+ICBwbGF0Zm9ybS9zdC9zdGkvZGVsdGEvZGVs
dGENCj4gPiAgcGxhdGZvcm0vc3Qvc3RpL2h2YS9odmENCj4gPiAgcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvDQo+ID4gIHVzYi9hdTA4MjgvYXUwODI4DQo+ID4gIHVzYi9jeDIzMXh4L2N4MjMx
eHgNCj4gPiAgdXNiL2R2Yg0KPiA+ICB1c2IvZW0yOHh4L2VtMjh4eA0KPiA+ICB1c2IvZ3NwY2Ev
Z3NwY2EuYw0KPiA+ICB1c2IvaGFja3JmL2hhY2tyZi5jDQo+ID4gIHVzYi9zdGsxMTYwL3N0azEx
NjANCj4gPiAgdXNiL3V2Yy91dmMNCj4gPg0KPiA+IHdoaWNoIG1lYW5zIHdlIHBvdGVudGlhbGx5
IGhhdmUgfjMwIGRyaXZlcnMgd2hpY2ggbGlrZWx5IGRvbid0IGhhbmRsZQ0KPiA+IGltcG9ydGVk
IERNQUJVRnMgY29ycmVjdGx5ICh0aGVyZSBpcyBzdGlsbCBhIGNoYW5jZSB0aGF0IERNQUJVRiBp
cw0KPiA+IGFkdmVydGlzZWQgZm9yIG9uZSBxdWV1ZSwgd2hpbGUgdmFkZHIgaXMgdXNlZCBmb3Ig
YW5vdGhlcikuDQo+ID4NCj4gPiBJIHRoaW5rIHdlIGhhdmUgdHdvIG9wdGlvbnM6DQo+ID4gMSkg
YWRkIHZiMl97YmVnaW4vZW5kfV9jcHVfYWNjZXNzKCkgaGVscGVycywgY2FyZWZ1bGx5IGF1ZGl0
IGVhY2gNCj4gPiBkcml2ZXIgYW5kIGFkZCBjYWxscyB0byB0aG9zZQ0KPg0KPiBJIGFjdHVhbGx5
IHN0YXJ0ZWQgb24gdGhhdCA5ICghKSB5ZWFycyBhZ286DQo+DQo+IGh0dHBzOi8vZ2l0LmxpbnV4
dHYub3JnL2h2ZXJrdWlsL21lZGlhX3RyZWUuZ2l0L2xvZy8/aD12YjItY3B1LWFjY2Vzcw0KPg0K
PiBJZiBtZW1vcnkgc2VydmVzLCB0aGUgbWFpbiBwcm9ibGVtIHdhcyB0aGF0IHRoZXJlIHdlcmUg
c29tZSBkcml2ZXJzIHdoZXJlDQo+IGl0IHdhc24ndCBjbGVhciB3aGF0IHNob3VsZCBiZSBkb25l
LiBJbiB0aGUgZW5kIEkgbmV2ZXIgY29udGludWVkIHRoaXMNCj4gd29yayBzaW5jZSBub2JvZHkg
Y29tcGxhaW5lZCBhYm91dCBpdC4NCj4NCj4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcyB2YjJfcGxh
bmVfYmVnaW4vZW5kX2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMsDQo+IHJlcGxhY2VzIGFsbCBjYWxs
cyB0byB2YjJfcGxhbmVfdmFkZHIoKSBpbiBkcml2ZXJzIHRvIHRoZSBuZXcgZnVuY3Rpb25zLA0K
PiBhbmQgYXQgdGhlIGVuZCByZW1vdmVzIHZiMl9wbGFuZV92YWRkcigpIGFsdG9nZXRoZXIuDQo+
DQo+ID4gMikgdGFrZSBhIGhlYXZ5IGd1biBhcHByb2FjaCBhbmQganVzdCBjYWxsIHZiMl9iZWdp
bl9jcHVfYWNjZXNzKCkNCj4gPiB3aGVuZXZlciB2YjJfcGxhbmVfdmFkZHIoKSBpcyBjYWxsZWQg
YW5kIHRoZW4gdmIyX2VuZF9jcHVfYWNjZXNzKCkNCj4gPiB3aGVuZXZlciB2YjJfYnVmZmVyX2Rv
bmUoKSBpcyBjYWxsZWQgKGlmIGJlZ2luIHdhcyBjYWxsZWQgYmVmb3JlKS4NCj4gPg0KPiA+IFRo
ZSBsYXR0ZXIgaGFzIHRoZSBkaXNhZHZhbnRhZ2Ugb2YgZHJpdmVycyBub3QgaGF2aW5nIGNvbnRy
b2wgb3ZlciB0aGUNCj4gPiB0aW1pbmcgb2YgdGhlIGNhY2hlIHN5bmMsIHNvIGNvdWxkIGVuZCB1
cCB3aXRoIGxlc3MgdGhhbiBvcHRpbWFsDQo+ID4gcGVyZm9ybWFuY2UuIEFsc28gdGhlcmUgY291
bGQgYmUgc29tZSBtb3JlIGNvbXBsZXggY2FzZXMsIHdoZXJlIHRoZQ0KPiA+IGRyaXZlciBuZWVk
cyB0byBtaXggRE1BIGFuZCBDUFUgYWNjZXNzZXMgdG8gdGhlIGJ1ZmZlciwgc28gdGhlIGZpeGVk
DQo+ID4gc2VxdWVuY2UganVzdCB3b3VsZG4ndCB3b3JrIGZvciB0aGVtLiAoQnV0IHRoZW4gdGhl
eSBqdXN0IHdvdWxkbid0DQo+ID4gd29yayB0b2RheSBlaXRoZXIuKQ0KPiA+DQo+ID4gSGFucywg
TWFyZWssIGRvIHlvdSBoYXZlIGFueSB0aG91Z2h0cz8gKEknZCBwZXJzb25hbGx5IGp1c3QgZ28g
d2l0aCAyDQo+ID4gYW5kIGlmIGFueSBkcml2ZXIgaW4gdGhlIGZ1dHVyZSBuZWVkcyBzb21ldGhp
bmcgZWxzZSwgdGhleSBjb3VsZCBjYWxsDQo+ID4gYmVnaW4vZW5kIENQVSBhY2Nlc3MgbWFudWFs
bHkuKQ0KPg0KPiBJIHByZWZlciAxLiBJZiBub3RoaW5nIGVsc2UsIHRoYXQgbWFrZXMgaXQgZWFz
eSB0byBpZGVudGlmeSBkcml2ZXJzDQo+IHRoYXQgZG8gc3VjaCB0aGluZ3MuDQo+DQo+IEJ1dCBw
ZXJoYXBzIGEgbWl4IGlzIHBvc3NpYmxlOiBpZiBhIFZCMiBmbGFnIGlzIHNldCBieSB0aGUgZHJp
dmVyLCB0aGVuDQo+IGFwcHJvYWNoIDIgaXMgdXNlZC4gVGhhdCBtaWdodCBoZWxwIHdpdGggdGhl
IGRyaXZlcnMgd2hlcmUgaXQgaXNuJ3QgY2xlYXINCj4gd2hhdCB0aGV5IHNob3VsZCBkby4gQWx0
aG91Z2ggcGVyaGFwcyB0aGlzIGNhbiBhbGwgYmUgZG9uZSBpbiB0aGUgZHJpdmVyDQo+IGl0c2Vs
ZjogaW5zdGVhZCBvZiB2YjJfcGxhbmVfdmFkZHIgdGhleSBjYWxsIHZiMl9iZWdpbl9jcHVfYWNj
ZXNzIGZvciB0aGUNCj4gd2hvbGUgYnVmZmVyLCBhbmQgYXQgYnVmZmVyX2RvbmUgdGltZSB0aGV5
IGNhbGwgdmIyX2VuZF9jcHVfYWNjZXNzLiBTaG91bGQNCj4gd29yayBqdXN0IGFzIHdlbGwgZm9y
IHRoZSB2ZXJ5IGZldyBkcml2ZXJzIHRoYXQgbmVlZCB0aGlzLg0KDQpUaGF0J3MgYSBnb29kIHBv
aW50LiBJIGd1ZXNzIHdlIGRvbid0IHJlYWxseSBuZWVkIHRvIGRpZyBzbyBtdWNoIGludG8NCnRo
b3NlIGRyaXZlcnMgaW4gdGhpcyBjYXNlLiBKdXN0IG1lY2hhbmljYWxseSBkbyB0aGUgc2FtZSBm
b3IgYWxsIG9mDQp0aGVtICgrLy0gbWF5YmUgY2hlY2tpbmcgZm9yIHNvbWUgb2J2aW91cyBjb3Ju
ZXIgY2FzZXMgd2hpY2ggZG9uJ3QNCm5lZWQgdGhlIGV4dHJhIGNhbGxzKS4gTGV0IG1lIHNlZSBp
ZiBJIGNhbiBnaXZlIGl0IGEgc3RhYi4NCg0KQmVzdCwNClRvbWFzeg0KDQo+DQo+IFJlZ2FyZHMs
DQo+DQo+ICAgICAgICAgSGFucw0KPg0KPiA+DQo+ID4gWzFdIGdpdCBncmVwIHZiMl9wbGFuZV92
YWRkciB8IGN1dCAtZCI6IiAtZiAxIHwgc29ydCB8IHVuaXENCj4gPiBbMl0gZ2l0IGdyZXAgVkIy
X0RNQUJVRiB8IGN1dCAtZCI6IiAtZiAxIHwgc29ydCB8IHVuaXENCj4gPiBbM10gYnkgcnVubmlu
ZyBbMV0gYW5kIFsyXSB0aHJvdWdoIHwgY3V0IC1kIi0iIC1mIDEgfCBjdXQgLWQiXyIgLWYgMSB8
IHVuaXENCj4gPg0KPiA+IEJlc3QsDQo+ID4gVG9tYXN6DQo+ID4NCj4gPj4NCj4gPj4gQnV0IGdl
bmVyYWxseSBzcGVha2luZywgYnJhY2tldGluZyBhbGwgZHJpdmVyIHdpdGggQ1BVIGFjY2VzcyBz
eW5jaHJvbml6YXRpb24NCj4gPj4gZG9lcyBub3QgbWFrZSBzZW5zZSBpbmRlZWQsIHNvIEkgc2Vj
b25kIHRoZSByZWplY3Rpb24uDQo+ID4+DQo+ID4+IE5pY29sYXMNCj4gPj4NCj4gPj4+DQo+ID4+
PiBCZXN0IHJlZ2FyZHMsDQo+ID4+PiBUb21hc3oNCj4gPj4+DQo+ID4+Pj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jIGIvZHJpdmVy
cy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMNCj4gPj4+PiBpbmRleCAz
NThmMWZlNDI5NzUuLjQ3MzRmZjljZjNjZSAxMDA2NDQNCj4gPj4+PiAtLS0gYS9kcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYw0KPiA+Pj4+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jDQo+ID4+Pj4gQEAgLTM0
MCw2ICszNDAsMTcgQEAgc3RhdGljIHZvaWQgX192YjJfYnVmX21lbV9wcmVwYXJlKHN0cnVjdCB2
YjJfYnVmZmVyICp2YikNCj4gPj4+PiAgICAgICAgIHZiLT5zeW5jZWQgPSAxOw0KPiA+Pj4+ICAg
ICAgICAgZm9yIChwbGFuZSA9IDA7IHBsYW5lIDwgdmItPm51bV9wbGFuZXM7ICsrcGxhbmUpDQo+
ID4+Pj4gICAgICAgICAgICAgICAgIGNhbGxfdm9pZF9tZW1vcCh2YiwgcHJlcGFyZSwgdmItPnBs
YW5lc1twbGFuZV0ubWVtX3ByaXYpOw0KPiA+Pj4+ICsNCj4gPj4+PiArICAgICAgIGlmICh2Yi0+
bWVtb3J5ICE9IFZCMl9NRU1PUllfRE1BQlVGKQ0KPiA+Pj4+ICsgICAgICAgICAgICAgICByZXR1
cm47DQo+ID4+Pj4gKyAgICAgICBmb3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3BsYW5l
czsgKytwbGFuZSkgew0KPiA+Pj4+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZGJ1
ZiA9IHZiLT5wbGFuZXNbcGxhbmVdLmRidWY7DQo+ID4+Pj4gKw0KPiA+Pj4+ICsgICAgICAgICAg
ICAgICBpZiAoIWRidWYpDQo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7
DQo+ID4+Pj4gKw0KPiA+Pj4+ICsgICAgICAgICAgICAgICBkbWFfYnVmX2VuZF9jcHVfYWNjZXNz
KGRidWYsIHZiLT52YjJfcXVldWUtPmRtYV9kaXIpOw0KPiA+Pj4+ICsgICAgICAgfQ0KPiA+Pj4+
ICB9DQo+ID4+Pj4NCj4gPj4+PiAgLyoNCj4gPj4+PiBAQCAtMzU2LDYgKzM2NywxNyBAQCBzdGF0
aWMgdm9pZCBfX3ZiMl9idWZfbWVtX2ZpbmlzaChzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpDQo+ID4+
Pj4gICAgICAgICB2Yi0+c3luY2VkID0gMDsNCj4gPj4+PiAgICAgICAgIGZvciAocGxhbmUgPSAw
OyBwbGFuZSA8IHZiLT5udW1fcGxhbmVzOyArK3BsYW5lKQ0KPiA+Pj4+ICAgICAgICAgICAgICAg
ICBjYWxsX3ZvaWRfbWVtb3AodmIsIGZpbmlzaCwgdmItPnBsYW5lc1twbGFuZV0ubWVtX3ByaXYp
Ow0KPiA+Pj4+ICsNCj4gPj4+PiArICAgICAgIGlmICh2Yi0+bWVtb3J5ICE9IFZCMl9NRU1PUllf
RE1BQlVGKQ0KPiA+Pj4+ICsgICAgICAgICAgICAgICByZXR1cm47DQo+ID4+Pj4gKyAgICAgICBm
b3IgKHBsYW5lID0gMDsgcGxhbmUgPCB2Yi0+bnVtX3BsYW5lczsgKytwbGFuZSkgew0KPiA+Pj4+
ICsgICAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZGJ1ZiA9IHZiLT5wbGFuZXNbcGxhbmVd
LmRidWY7DQo+ID4+Pj4gKw0KPiA+Pj4+ICsgICAgICAgICAgICAgICBpZiAoIWRidWYpDQo+ID4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ID4+Pj4gKw0KPiA+Pj4+ICsg
ICAgICAgICAgICAgICBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoZGJ1ZiwgdmItPnZiMl9xdWV1
ZS0+ZG1hX2Rpcik7DQo+ID4+Pj4gKyAgICAgICB9DQo+ID4+Pj4gIH0NCj4gPj4+Pg0KPiA+Pj4+
ICAvKg0KPiA+Pj4+IC0tDQo+ID4+Pj4gMi40My4wLXJjMQ0KPiA+Pj4+DQo+ID4+DQo+ID4NCj4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=

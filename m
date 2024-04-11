Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7508A1A72
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Apr 2024 18:53:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1394F3EA59
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Apr 2024 16:53:06 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by lists.linaro.org (Postfix) with ESMTPS id 312553EA59
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Apr 2024 16:53:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="uIm97+N/";
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.173 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dd14d8e7026so12582276.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Apr 2024 09:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712854384; x=1713459184; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xk9ow4mQo0ztyiO7KrDlitvaa4igMglZOi5Xwvcpnhc=;
        b=uIm97+N/U533r+Aw1669jyiWSsqGWkQFoWkASSqs7yRlFS+/1+A0d0+GklqMs8uNc9
         a12XB2QP3h3t+xr5E46tGCyz8/Mv98tsA0T7Ess9btRWC5c9cA0Mqwu0adS7nmA2ysag
         1LX2LZASEksU7BEdpht8vhVfPhzQAqAvIO33xCrUYHROw3N6OFlW+rX8FHmGHuh/KO3O
         FkDODjN6Mwz7VVztOlP3/EBwSKyOlnGk/VFYA9GAsjFweMZFL+ACYHFSf46Mo82N1122
         vh/XRyKUP6DsLlj1FxuYd5nLLuS78wXeVONZ/pdXPM1rudvItqGlwoEz2fmdbTEeih1a
         0uUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712854384; x=1713459184;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xk9ow4mQo0ztyiO7KrDlitvaa4igMglZOi5Xwvcpnhc=;
        b=qFhJlmsq+xkFVrJ5CQy+wYYrOLJSVkJg4WSQwypZygkbNMz3g7/fVaFMmJAIp+bKXY
         xY43ZyDWk3WSicxEWQbDwZu5WrifbKk9uiqfCRGsdaQOkDMw30nNxiROgqgK9Zq32EKh
         BS8M4qe/U/Mqs4irOF0NStvSd01h2rHMHMsouqAOj5RoYITyiR4BbNaTsmqcLGU2gWOH
         dq9kStSvF3rPdZtXFJtAwFB08figZSAH8kOqiRZrlIG6l0HRz6ULLOQJfWh7F5+C+BAH
         YEcGZBD2cif7HJ37Ls++3MCviem8GzlXj8pZc3UV9GuyTAd3EDOsf2xfYYr3M2Wbjk1W
         pauA==
X-Forwarded-Encrypted: i=1; AJvYcCV5dgR16vkSeMc/qZiLbMCYhauwdFtoztrw07aUmJwxS8cXCxH7Knfq2oY9T5VqPqzwcekIbRAuHSYWzOIm0UT0G9LYCFP1uUOT7DXCer8=
X-Gm-Message-State: AOJu0YyGTdU9ma0uMqteEf2VO1c3Hpvxz9FxQEEJaujEfMU5pnamYi6+
	7Y8krJhxF0h4OblWZXi7HCERF5NsVR+YTmne5GNsz58PBc5zFzyN/xhyaclspKWe0cc289r2H2t
	88rofMGXD9lcRcgfF6vdrhVE7/VfstoB4E2zE
X-Google-Smtp-Source: AGHT+IHrAmk4FEak1U24FFhz5I0pjJ4Y1W1GoH1d+YXdH2uAvcc4gxTiyypFZ0hyOkDoXT/aukk4rEfY2anMtoK+l4s=
X-Received: by 2002:a25:86d1:0:b0:dc6:b088:e742 with SMTP id
 y17-20020a2586d1000000b00dc6b088e742mr112053ybm.8.1712854383276; Thu, 11 Apr
 2024 09:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com> <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com> <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com> <da21fe55-2ffb-4c8e-9863-2f27aa18cf5c@vivo.com>
In-Reply-To: <da21fe55-2ffb-4c8e-9863-2f27aa18cf5c@vivo.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 11 Apr 2024 09:52:51 -0700
Message-ID: <CABdmKX0AJjdVBPR=3c7oRyDRQx86GCGheVwkheXi7fOkJaRY8A@mail.gmail.com>
To: Rong Qianfeng <11065417@vivo.com>
X-Rspamd-Queue-Id: 312553EA59
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.173:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2MEEUTGZ4SLP5VZKPNKCQHV5LRVH3OWC
X-Message-ID-Hash: 2MEEUTGZ4SLP5VZKPNKCQHV5LRVH3OWC
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, pekka.paalanen@collabora.com, jason@jlekstrand.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2MEEUTGZ4SLP5VZKPNKCQHV5LRVH3OWC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMToyMeKAr0FNIFJvbmcgUWlhbmZlbmcgPDExMDY1NDE3
QHZpdm8uY29tPiB3cm90ZToNCj4NCj4NCj4g5ZyoIDIwMjQvNC8xMCAwOjM3LCBULkouIE1lcmNp
ZXIg5YaZ6YGTOg0KPiA+IFtZb3UgZG9uJ3Qgb2Z0ZW4gZ2V0IGVtYWlsIGZyb20gdGptZXJjaWVy
QGdvb2dsZS5jb20uIExlYXJuIHdoeSB0aGlzIGlzIGltcG9ydGFudCBhdCBodHRwczovL2FrYS5t
cy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQ0KPiA+DQo+ID4gT24gVHVlLCBBcHIg
OSwgMjAyNCBhdCAxMjozNOKAr0FNIFJvbmcgUWlhbmZlbmcgPDExMDY1NDE3QHZpdm8uY29tPiB3
cm90ZToNCj4gPj4NCj4gPj4g5ZyoIDIwMjQvNC84IDE1OjU4LCBDaHJpc3RpYW4gS8O2bmlnIOWG
memBkzoNCj4gPj4+IEFtIDA3LjA0LjI0IHVtIDA5OjUwIHNjaHJpZWIgUm9uZyBRaWFuZmVuZzoN
Cj4gPj4+PiBbU05JUF0NCj4gPj4+Pj4gQW0gMTMuMTEuMjEgdW0gMDc6MjIgc2NocmllYiBKaWFu
cXVuIFh1Og0KPiA+Pj4+Pj4gQWRkIERNQV9CVUZfSU9DVExfU1lOQ19QQVJUSUFMIHN1cHBvcnQg
Zm9yIHVzZXIgdG8gc3luYyBkbWEtYnVmIHdpdGgNCj4gPj4+Pj4+IG9mZnNldCBhbmQgbGVuLg0K
PiA+Pj4+PiBZb3UgaGF2ZSBub3QgZ2l2ZW4gYW4gdXNlIGNhc2UgZm9yIHRoaXMgc28gaXQgaXMg
YSBiaXQgaGFyZCB0bw0KPiA+Pj4+PiByZXZpZXcuIEFuZCBmcm9tIHRoZSBleGlzdGluZyB1c2Ug
Y2FzZXMgSSBkb24ndCBzZWUgd2h5IHRoaXMgc2hvdWxkDQo+ID4+Pj4+IGJlIG5lY2Vzc2FyeS4N
Cj4gPj4+Pj4NCj4gPj4+Pj4gRXZlbiB3b3JzZSBmcm9tIHRoZSBleGlzdGluZyBiYWNrZW5kIGlt
cGxlbWVudGF0aW9uIEkgZG9uJ3QgZXZlbiBzZWUNCj4gPj4+Pj4gaG93IGRyaXZlcnMgc2hvdWxk
IGJlIGFibGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4NCj4gPj4+Pj4NCj4gPj4+Pj4gUGxl
YXNlIGV4cGxhaW4gZnVydGhlciwNCj4gPj4+Pj4gQ2hyaXN0aWFuLg0KPiA+Pj4+IEhlcmUgaXMg
YSBwcmFjdGljYWwgY2FzZToNCj4gPj4+PiBUaGUgdXNlciBzcGFjZSBjYW4gYWxsb2NhdGUgYSBs
YXJnZSBjaHVuayBvZiBkbWEtYnVmIGZvcg0KPiA+Pj4+IHNlbGYtbWFuYWdlbWVudCwgdXNlZCBh
cyBhIHNoYXJlZCBtZW1vcnkgcG9vbC4NCj4gPj4+PiBTbWFsbCBkbWEtYnVmIGNhbiBiZSBhbGxv
Y2F0ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9vbCBhbmQNCj4gPj4+PiByZWxlYXNlZCBi
YWNrIHRvIGl0IGFmdGVyIHVzZSwgdGh1cyBpbXByb3ZpbmcgdGhlIHNwZWVkIG9mIGRtYS1idWYN
Cj4gPj4+PiBhbGxvY2F0aW9uIGFuZCByZWxlYXNlLg0KPiA+Pj4+IEFkZGl0aW9uYWxseSwgY3Vz
dG9tIGZ1bmN0aW9uYWxpdGllcyBzdWNoIGFzIG1lbW9yeSBzdGF0aXN0aWNzIGFuZA0KPiA+Pj4+
IGJvdW5kYXJ5IGNoZWNraW5nIGNhbiBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgdXNlciBzcGFjZS4N
Cj4gPj4+PiBPZiBjb3Vyc2UsIHRoZSBhYm92ZS1tZW50aW9uZWQgZnVuY3Rpb25hbGl0aWVzIHJl
cXVpcmUgdGhlDQo+ID4+Pj4gaW1wbGVtZW50YXRpb24gb2YgYSBwYXJ0aWFsIGNhY2hlIHN5bmMg
aW50ZXJmYWNlLg0KPiA+Pj4gV2VsbCB0aGF0IGlzIG9idmlvdXMsIGJ1dCB3aGVyZSBpcyB0aGUg
Y29kZSBkb2luZyB0aGF0Pw0KPiA+Pj4NCj4gPj4+IFlvdSBjYW4ndCBzZW5kIG91dCBjb2RlIHdp
dGhvdXQgYW4gYWN0dWFsIHVzZXIgb2YgaXQuIFRoYXQgd2lsbA0KPiA+Pj4gb2J2aW91c2x5IGJl
IHJlamVjdGVkLg0KPiA+Pj4NCj4gPj4+IFJlZ2FyZHMsDQo+ID4+PiBDaHJpc3RpYW4uDQo+ID4+
IEluIGZhY3QsIHdlIGhhdmUgYWxyZWFkeSB1c2VkIHRoZSB1c2VyLWxldmVsIGRtYS1idWYgbWVt
b3J5IHBvb2wgaW4gdGhlDQo+ID4+IGNhbWVyYSBzaG9vdGluZyBzY2VuYXJpbyBvbiB0aGUgcGhv
bmUuDQo+ID4+DQo+ID4+ICAgRnJvbSB0aGUgdGVzdCByZXN1bHRzLCBUaGUgZXhlY3V0aW9uIHRp
bWUgb2YgdGhlIHBob3RvIHNob290aW5nDQo+ID4+IGFsZ29yaXRobSBoYXMgYmVlbiByZWR1Y2Vk
IGZyb20gMy44cyB0byAzcy4NCj4gPj4NCj4gPiBGb3IgcGhvbmVzLCB0aGUgKG91dCBvZiB0cmVl
KSBBbmRyb2lkIHZlcnNpb24gb2YgdGhlIHN5c3RlbSBoZWFwIGhhcyBhDQo+ID4gcGFnZSBwb29s
IGNvbm5lY3RlZCB0byBhIHNocmlua2VyLiBUaGF0IGFsbG93cyB5b3UgdG8gc2tpcCBwYWdlDQo+
ID4gYWxsb2NhdGlvbiB3aXRob3V0IGZ1bGx5IHBpbm5pbmcgdGhlIG1lbW9yeSBsaWtlIHlvdSBn
ZXQgd2hlbg0KPiA+IGFsbG9jYXRpbmcgYSBkbWEtYnVmIHRoYXQncyB3YXkgbGFyZ2VyIHRoYW4g
bmVjZXNzYXJ5LiBJZiBpdCdzIGZvciBhDQo+ID4gY2FtZXJhIG1heWJlIHlvdSBuZWVkIHBoeXNp
Y2FsbHkgY29udGlndW91cyBtZW1vcnksIGJ1dCBpdCdzIGFsc28NCj4gPiBwb3NzaWJsZSB0byBz
ZXQgdGhhdCB1cC4NCj4gPg0KPiA+IGh0dHBzOi8vYW5kcm9pZC5nb29nbGVzb3VyY2UuY29tL2tl
cm5lbC9jb21tb24vKy9yZWZzL2hlYWRzL2FuZHJvaWQxNC02LjEvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL3N5c3RlbV9oZWFwLmMjMzc3DQo+ID4NCj4gVGhhbmsgeW91IGZvciB0aGUgcmVtaW5kZXIu
DQo+DQo+IFRoZSBwYWdlIHBvb2wgb2YgdGhlIHN5c3RlbSBoZWFwIGNhbiBtZWV0IHRoZSBuZWVk
cyBvZiBtb3N0IHNjZW5hcmlvcywNCj4gYnV0IHRoZSBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8g
aXMgcXVpdGUgc3BlY2lhbC4NCj4NCj4gV2h5IHRoZSBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8g
bmVlZHMgdG8gaGF2ZSBhIGRtYS1idWYgbWVtb3J5IHBvb2wgaW4NCj4gdGhlIHVzZXItbGV2ZWzv
vJ8NCj4NCj4gKDEpIFRoZSBtZW1vcnkgZGVtYW5kIGlzIGV4dHJlbWVseSBoaWdoIGFuZCB0aW1l
IHJlcXVpcmVtZW50cyBhcmUNCj4gc3RyaW5nZW50Lg0KDQpQcmVhbGxvY2F0aW5nIGZvciB0aGlz
IG1ha2VzIHNlbnNlIHRvIG1lLCB3aGV0aGVyIGl0IGlzIGluZGl2aWR1YWwNCmJ1ZmZlcnMgb3Ig
b25lIGxhcmdlIG9uZS4NCg0KPiAoMikgVGhlIG1lbW9yeSBpbiB0aGUgcGFnZSBwb29sKHN5c3Rl
bSBoZWFwKSBpcyBlYXNpbHkgcmVjbGFpbWVkIG9yIHVzZWQNCj4gYnkgb3RoZXIgYXBwcy4NCg0K
WWVhaCwgYnkgZGVzaWduIEkgZ3Vlc3MuIEkgaGF2ZSBzZWVuIGFuIGltcGxlbWVudGF0aW9uIHdo
ZXJlIHRoZSBwYWdlDQpwb29sIGlzIHByb2FjdGl2ZWx5IHJlZmlsbGVkIGFmdGVyIGl0IGhhcyBi
ZWVuIGVtcHR5IGZvciBzb21lIHRpbWUNCndoaWNoIHdvdWxkIGhlbHAgaW4gc2NlbmFyaW9zIHdo
ZXJlIHRoZSBwb29sIGlzIG9mdGVuIHJlY2xhaW1lZCBhbmQNCmxvdy9lbXB0eS4gWW91IGNvdWxk
IGFkZCB0aGF0IGluIGEgdmVuZG9yIGhlYXAuDQoNCj4gKDMpIEhpZ2ggY29uY3VycmVudCBhbGxv
Y2F0aW9uIGFuZCByZWxlYXNlICh3aXRoIGRlZmVycmVkLWZyZWUpIGxlYWQgdG8NCj4gaGlnaCBt
ZW1vcnkgdXNhZ2UgcGVha3MuDQoNCkhvcGVmdWxseSB0aGlzIGlzIG5vdCBldmVyeSBmcmFtZT8g
SSBzYXcgZW5vdWdoIGNvbXBsYWludHMgYWJvdXQgdGhlDQpkZWZlcnJlZCBmcmVlIG9mIHBvb2wg
cGFnZXMgdGhhdCBpdCBoYXNuJ3QgYmVlbiBjYXJyaWVkIGZvcndhcmQgc2luY2UNCkFuZHJvaWQg
MTMsIHNvIHRoaXMgc2hvdWxkIGJlIGxlc3Mgb2YgYSBwcm9ibGVtIG9uIHJlY2VudCBrZXJuZWxz
Lg0KDQo+IEFkZGl0aW9uYWxseSwgYWZ0ZXIgdGhlIGNhbWVyYSBleGl0cywgdGhlIHNoYXJlZCBt
ZW1vcnkgcG9vbCBjYW4gYmUNCj4gcmVsZWFzZWQsIHdpdGggbWluaW1hbCBpbXBhY3QuDQoNCldo
eSBkbyB5b3UgY2FyZSBhYm91dCB0aGUgZGlmZmVyZW5jZSBoZXJlPyBJbiBvbmUgY2FzZSBpdCdz
IHdoZW4gdGhlDQpidWZmZXIgcmVmY291bnQgZ29lcyB0byAwIGFuZCBtZW1vcnkgaXMgZnJlZWQg
aW1tZWRpYXRlbHksIGFuZCBpbiB0aGUNCm90aGVyIGl0J3MgdGhlIG5leHQgdGltZSByZWNsYWlt
IHJ1bnMgdGhlIHNocmlua2VyLg0KDQoNCkkgZG9uJ3Qgd2FudCB0byBhZGQgVUFQSSBmb3IgRE1B
X0JVRl9JT0NUTF9TWU5DX1BBUlRJQUwgdG8gQW5kcm9pZA0Kd2l0aG91dCBpdCBiZWluZyBpbiB0
aGUgdXBzdHJlYW0ga2VybmVsLiBJIGRvbid0IHRoaW5rIHdlIGNhbiBnZXQgdGhhdA0Kd2l0aG91
dCBhbiBpbi1rZXJuZWwgdXNlciBvZiBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3NfcGFydGlhbCBm
aXJzdCwNCmV2ZW4gdGhvdWdoIHlvdXIgdXNlIGNhc2Ugd291bGRuJ3QgcmVseSBvbiB0aGF0IGlu
LWtlcm5lbCB1c2FnZS4gOlwgU28NCmlmIHlvdSB3YW50IHRvIGFkZCB0aGlzIHRvIHBob25lcyBm
b3IgeW91ciBjYW1lcmEgYXBwLCB0aGVuIEkgdGhpbmsNCnlvdXIgYmVzdCBvcHRpb24gaXMgdG8g
YWRkIGEgdmVuZG9yIGRyaXZlciB3aGljaCBpbXBsZW1lbnRzIHRoaXMgSU9DVEwNCmFuZCBjYWxs
cyB0aGUgZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzX3BhcnRpYWwgZnVuY3Rpb25zIHdoaWNoIGFy
ZQ0KYWxyZWFkeSBleHBvcnRlZC4NCg0KQmVzdCwNClQuSi4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

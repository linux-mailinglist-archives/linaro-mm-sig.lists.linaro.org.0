Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E19589E097
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 18:37:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 515403F466
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Apr 2024 16:37:22 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by lists.linaro.org (Postfix) with ESMTPS id E77713F466
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Apr 2024 16:37:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=HZL5N6jf;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.174 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso6087801276.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Apr 2024 09:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712680639; x=1713285439; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VWrgc6fSc3w4dKU6IsZCUM+SMdZmjryY3zaMUJ1lg5M=;
        b=HZL5N6jfA2iSFV/fBMfWYS5IiaDx07CuyE0Lc/CcyMg5nWBrvddCcYqeeIJzVo1d8C
         svrxoUA2mQof13jRYEDQo2D0AO05sTtAG0wO7ZI2GCz6cODVfRv8oKZgY1BNzJKTypct
         USGS1pDVS9nihXvxyAZNPfsALANm656DPOG5NpTI6+2M0pJEagllqMFxzxCxU3PvnFWc
         pCVvjFNMWIxowAi4cFrbpnJ9JdTRJKuYLFETXSrLVeQ1vzJdyzcwRVg4FU/Qja+1FdeV
         M5uLzU93nS25yQq58R29BOTjf/M4hHWV2Lj2w5SD6TgQyDko3/F4qTDdvYzTs4sVKqzb
         yMVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712680639; x=1713285439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VWrgc6fSc3w4dKU6IsZCUM+SMdZmjryY3zaMUJ1lg5M=;
        b=Ty4rC/3Oq/wBV0rw9LnHSrGPGG+k4Vf36qZcYquIXzXzx5xxx8Hbsnmg80zFyT0MMP
         JMeaJqC9t09zWONsho4R6PEu1Pl0WgL1U1pfK7bA7tlQUwYYE+GceNUnYE+VBnRQyM9g
         nBBmJdM13sQLKumdzBYdCx8uLvszztiUc397f3JJAJp0M7zSP2jn6lxD2ZYQTubj65cG
         ymZDZSheEOpubEjqLFYta0P/vmK+vzIDQdZE7MR7KNQTpGN8Xoytrms29oQ0dZPrpTul
         XQVG4vehEecDZR1TCS8Dwgam0jVEEOKUVBwuzIofRaxanQTa47rJp34pPptGoeDtn5+A
         ZTWA==
X-Forwarded-Encrypted: i=1; AJvYcCWp/oR/S/hG/RzaZSoYgf2nzPX+/ffaoywGXNuVIi/fX0C2D0naNIsRvBR4I0xrXUQf9Rz1pA1E57Mrfv7YeKW1yUWfVqO0lKOqOB8WZt8=
X-Gm-Message-State: AOJu0YwrZz6nt0l2mgj9hWiwJXCqm7x/p9AZnjGgdiNEKe4cWoJmX10g
	1cXrNYQQ8eh19rE5zVAjg+KSqpw2llLeIxzSNWfK17Bt01wksQZODhVlD5DnI8IbE1z6yespXhM
	DJQAcGapvxdyBhDBt2hH/cQqMonB3VNcYuhA7
X-Google-Smtp-Source: AGHT+IGJRrnZd6GpHhz2e2NeVhdfIMLHOtWWI1dHIs7kshaTz2NJhrtoPZ84nV+L11Kpx9q3bco9EMqTwIkVE14CEDU=
X-Received: by 2002:a5b:cc8:0:b0:de0:de50:d6d4 with SMTP id
 e8-20020a5b0cc8000000b00de0de50d6d4mr296806ybr.8.1712680639127; Tue, 09 Apr
 2024 09:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com> <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com> <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
In-Reply-To: <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 9 Apr 2024 09:37:07 -0700
Message-ID: <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
To: Rong Qianfeng <11065417@vivo.com>
X-Rspamd-Queue-Id: E77713F466
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.174:from];
	URIBL_BLOCKED(0.00)[mail-yb1-f174.google.com:helo,mail-yb1-f174.google.com:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: C7LZ46GSKJM4XV3HVFDPCI7CMPDSJHZ2
X-Message-ID-Hash: C7LZ46GSKJM4XV3HVFDPCI7CMPDSJHZ2
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org, pekka.paalanen@collabora.com, jason@jlekstrand.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C7LZ46GSKJM4XV3HVFDPCI7CMPDSJHZ2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgOSwgMjAyNCBhdCAxMjozNOKAr0FNIFJvbmcgUWlhbmZlbmcgPDExMDY1NDE3
QHZpdm8uY29tPiB3cm90ZToNCj4NCj4NCj4g5ZyoIDIwMjQvNC84IDE1OjU4LCBDaHJpc3RpYW4g
S8O2bmlnIOWGmemBkzoNCj4gPiBBbSAwNy4wNC4yNCB1bSAwOTo1MCBzY2hyaWViIFJvbmcgUWlh
bmZlbmc6DQo+ID4+IFtTTklQXQ0KPiA+Pj4gQW0gMTMuMTEuMjEgdW0gMDc6MjIgc2NocmllYiBK
aWFucXVuIFh1Og0KPiA+Pj4+IEFkZCBETUFfQlVGX0lPQ1RMX1NZTkNfUEFSVElBTCBzdXBwb3J0
IGZvciB1c2VyIHRvIHN5bmMgZG1hLWJ1ZiB3aXRoDQo+ID4+Pj4gb2Zmc2V0IGFuZCBsZW4uDQo+
ID4+Pg0KPiA+Pj4gWW91IGhhdmUgbm90IGdpdmVuIGFuIHVzZSBjYXNlIGZvciB0aGlzIHNvIGl0
IGlzIGEgYml0IGhhcmQgdG8NCj4gPj4+IHJldmlldy4gQW5kIGZyb20gdGhlIGV4aXN0aW5nIHVz
ZSBjYXNlcyBJIGRvbid0IHNlZSB3aHkgdGhpcyBzaG91bGQNCj4gPj4+IGJlIG5lY2Vzc2FyeS4N
Cj4gPj4+DQo+ID4+PiBFdmVuIHdvcnNlIGZyb20gdGhlIGV4aXN0aW5nIGJhY2tlbmQgaW1wbGVt
ZW50YXRpb24gSSBkb24ndCBldmVuIHNlZQ0KPiA+Pj4gaG93IGRyaXZlcnMgc2hvdWxkIGJlIGFi
bGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4NCj4gPj4+DQo+ID4+PiBQbGVhc2UgZXhwbGFp
biBmdXJ0aGVyLA0KPiA+Pj4gQ2hyaXN0aWFuLg0KPiA+PiBIZXJlIGlzIGEgcHJhY3RpY2FsIGNh
c2U6DQo+ID4+IFRoZSB1c2VyIHNwYWNlIGNhbiBhbGxvY2F0ZSBhIGxhcmdlIGNodW5rIG9mIGRt
YS1idWYgZm9yDQo+ID4+IHNlbGYtbWFuYWdlbWVudCwgdXNlZCBhcyBhIHNoYXJlZCBtZW1vcnkg
cG9vbC4NCj4gPj4gU21hbGwgZG1hLWJ1ZiBjYW4gYmUgYWxsb2NhdGVkIGZyb20gdGhpcyBzaGFy
ZWQgbWVtb3J5IHBvb2wgYW5kDQo+ID4+IHJlbGVhc2VkIGJhY2sgdG8gaXQgYWZ0ZXIgdXNlLCB0
aHVzIGltcHJvdmluZyB0aGUgc3BlZWQgb2YgZG1hLWJ1Zg0KPiA+PiBhbGxvY2F0aW9uIGFuZCBy
ZWxlYXNlLg0KPiA+PiBBZGRpdGlvbmFsbHksIGN1c3RvbSBmdW5jdGlvbmFsaXRpZXMgc3VjaCBh
cyBtZW1vcnkgc3RhdGlzdGljcyBhbmQNCj4gPj4gYm91bmRhcnkgY2hlY2tpbmcgY2FuIGJlIGlt
cGxlbWVudGVkIGluIHRoZSB1c2VyIHNwYWNlLg0KPiA+PiBPZiBjb3Vyc2UsIHRoZSBhYm92ZS1t
ZW50aW9uZWQgZnVuY3Rpb25hbGl0aWVzIHJlcXVpcmUgdGhlDQo+ID4+IGltcGxlbWVudGF0aW9u
IG9mIGEgcGFydGlhbCBjYWNoZSBzeW5jIGludGVyZmFjZS4NCj4gPg0KPiA+IFdlbGwgdGhhdCBp
cyBvYnZpb3VzLCBidXQgd2hlcmUgaXMgdGhlIGNvZGUgZG9pbmcgdGhhdD8NCj4gPg0KPiA+IFlv
dSBjYW4ndCBzZW5kIG91dCBjb2RlIHdpdGhvdXQgYW4gYWN0dWFsIHVzZXIgb2YgaXQuIFRoYXQg
d2lsbA0KPiA+IG9idmlvdXNseSBiZSByZWplY3RlZC4NCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4g
Q2hyaXN0aWFuLg0KPg0KPiBJbiBmYWN0LCB3ZSBoYXZlIGFscmVhZHkgdXNlZCB0aGUgdXNlci1s
ZXZlbCBkbWEtYnVmIG1lbW9yeSBwb29sIGluIHRoZQ0KPiBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFy
aW8gb24gdGhlIHBob25lLg0KPg0KPiAgRnJvbSB0aGUgdGVzdCByZXN1bHRzLCBUaGUgZXhlY3V0
aW9uIHRpbWUgb2YgdGhlIHBob3RvIHNob290aW5nDQo+IGFsZ29yaXRobSBoYXMgYmVlbiByZWR1
Y2VkIGZyb20gMy44cyB0byAzcy4NCj4NCkZvciBwaG9uZXMsIHRoZSAob3V0IG9mIHRyZWUpIEFu
ZHJvaWQgdmVyc2lvbiBvZiB0aGUgc3lzdGVtIGhlYXAgaGFzIGENCnBhZ2UgcG9vbCBjb25uZWN0
ZWQgdG8gYSBzaHJpbmtlci4gVGhhdCBhbGxvd3MgeW91IHRvIHNraXAgcGFnZQ0KYWxsb2NhdGlv
biB3aXRob3V0IGZ1bGx5IHBpbm5pbmcgdGhlIG1lbW9yeSBsaWtlIHlvdSBnZXQgd2hlbg0KYWxs
b2NhdGluZyBhIGRtYS1idWYgdGhhdCdzIHdheSBsYXJnZXIgdGhhbiBuZWNlc3NhcnkuIElmIGl0
J3MgZm9yIGENCmNhbWVyYSBtYXliZSB5b3UgbmVlZCBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgbWVt
b3J5LCBidXQgaXQncyBhbHNvDQpwb3NzaWJsZSB0byBzZXQgdGhhdCB1cC4NCg0KaHR0cHM6Ly9h
bmRyb2lkLmdvb2dsZXNvdXJjZS5jb20va2VybmVsL2NvbW1vbi8rL3JlZnMvaGVhZHMvYW5kcm9p
ZDE0LTYuMS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyMzNzcNCg0KDQo+IFRv
IGJlIGhvbmVzdCwgSSBkaWRuJ3QgdW5kZXJzdGFuZCB5b3VyIGNvbmNlcm4gIi4uLmhvdyBkcml2
ZXJzIHNob3VsZCBiZQ0KPiBhYmxlIHRvIGZ1bGZpbGwgdGhpcyBzZW1hbnRpY3MuIiBDYW4geW91
IHBsZWFzZSBoZWxwIGV4cGxhaW4gaXQgaW4gbW9yZQ0KPiBkZXRhaWw/DQo+DQo+IFRoYW5rcywN
Cj4NCj4gUm9uZyBRaWFuZmVuZy4NCj4NCj4gPg0KPiA+Pg0KPiA+PiBUaGFua3MNCj4gPj4gUm9u
ZyBRaWFuZmVuZy4NCj4gPg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

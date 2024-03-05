Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5347B872524
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 18:07:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DD9443F9B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 17:07:37 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by lists.linaro.org (Postfix) with ESMTPS id 56EBD3F37E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Mar 2024 17:07:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=mEDLB4Z3;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.169 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so5344768276.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Mar 2024 09:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709658450; x=1710263250; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xf8U/YCUFimTwrJwKD9PvTi4VYclikCpHMhYCrDyA6M=;
        b=mEDLB4Z3GVHFNb5Vinsh5ItLHQ3cEfvF1L8prrgLVubl3H9dALpNJVtMXKmnRP6xda
         nZNN5hNuA14QRmftsjNRF9PLYLAhmRbKcPrYTJxRcUEHay0/lLdjAOE47lSlZ+VDQGiA
         wRPEnznlt+zeMyWJfbvmr/JqzyhQ7l0XAppxeUgFcn0N7SaSIbnnofIunBDmW0dMmMJU
         slsjBNYwxAXsf++DzI0l2NjoMx3YbHaeD2fRa+DFkopDilRq0AxPLJ1aN1EQQg2cyOQn
         h9ZpuB+DIBEvUZ9JuBjYta9QZLteRLQR0WqfTerjMjQUfM7OymT1uS3hMXZZkAb5srBo
         MWkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709658450; x=1710263250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xf8U/YCUFimTwrJwKD9PvTi4VYclikCpHMhYCrDyA6M=;
        b=F8Nh1W0K8eGjvEI+K6PEnN0ae9OX5epIe3NBbubwrYzRilR/hSWBYqfvE8+GaTSL8Q
         c//dw1pP+WwvRUWPgrJErJTgRQ3jetWwcqLSuGjw0VoW+h0yTGshcBxYnXDSIPuGf3W0
         XOpeNjS/rltIiCtnkKA1UwdIj8aFT5ZSSxwZf+mKt0YQCQguHUIYP7NCTwGcsBeIugap
         MZMGn4AnNlvG33wz6vC7gJG6FKjMk3eWrv6eYhDd5igd/vT76xYmjJLZX3UHUsk6mw7k
         g8sjVEGR7ySVlEJqb/UzKwgGwJewf75lqVHJiiTWEqMdFBI7IsRzSzpo9ZXGMtdz+ZYj
         x+Rw==
X-Forwarded-Encrypted: i=1; AJvYcCVbw4hcox/i3DfG/5/xmGalqqc9+6xq/sXKxV98JtE4yivJgwepddPt67gifRhAWfeKO8n51IqFYqRqq5+YMruk+0nrlIgEQKEHm0VzoQ4=
X-Gm-Message-State: AOJu0YzgQJzvPTqjcrZ7l5Y5x5Srx0iC0h/tulBCmTCb5tiCJGN+ZDGI
	9i3gOB+nKWi65qE7QpKy7HrQ4I3jc4yZLrD0hK1zyuYdp6Du97dfniH3ItbasU57A0cXlWs55x2
	1tWi2M/Oyf2P25zlLDKnxWb3tM+wnfFaDiRTh
X-Google-Smtp-Source: AGHT+IFcqAf9bC17H0h/tfqRs3xLoCqraMHelviOyaD+ddhbqiDr1geTm3/Xp4CxcT44v3PUNnOU4ePnKKfLZOimpLI=
X-Received: by 2002:a05:6902:2012:b0:dc6:18d0:95b0 with SMTP id
 dh18-20020a056902201200b00dc618d095b0mr11090518ybb.8.1709658449653; Tue, 05
 Mar 2024 09:07:29 -0800 (PST)
MIME-Version: 1.0
References: <20240305-class_cleanup-drm-v1-0-94f82740525a@marliere.net> <20240305-class_cleanup-drm-v1-4-94f82740525a@marliere.net>
In-Reply-To: <20240305-class_cleanup-drm-v1-4-94f82740525a@marliere.net>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 5 Mar 2024 09:07:17 -0800
Message-ID: <CABdmKX0VGyBdTo8gzEocyz2HFcqEtu_31PYVjWzioBdCbnXW6w@mail.gmail.com>
To: "Ricardo B. Marliere" <ricardo@marliere.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 56EBD3F37E
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.169:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,redhat.com,gmx.de,linaro.org,collabora.com,arm.com,google.com,amd.com,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: 6RYQGIHJ3YDSHKXYSBOOISIM65ORXIU7
X-Message-ID-Hash: 6RYQGIHJ3YDSHKXYSBOOISIM65ORXIU7
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Hans de Goede <hdegoede@redhat.com>, Helge Deller <deller@gmx.de>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND drm-misc 4/4] dma-buf: heaps: make dma_heap_class constant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6RYQGIHJ3YDSHKXYSBOOISIM65ORXIU7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgNSwgMjAyNCBhdCAzOjM04oCvQU0gUmljYXJkbyBCLiBNYXJsaWVyZSA8cmlj
YXJkb0BtYXJsaWVyZS5uZXQ+IHdyb3RlOg0KPg0KPiBTaW5jZSBjb21taXQgNDNhNzIwNmIwOTYz
ICgiZHJpdmVyIGNvcmU6IGNsYXNzOiBtYWtlIGNsYXNzX3JlZ2lzdGVyKCkgdGFrZQ0KPiBhIGNv
bnN0ICoiKSwgdGhlIGRyaXZlciBjb3JlIGFsbG93cyBmb3Igc3RydWN0IGNsYXNzIHRvIGJlIGlu
IHJlYWQtb25seQ0KPiBtZW1vcnksIHNvIG1vdmUgdGhlIGRtYV9oZWFwX2NsYXNzIHN0cnVjdHVy
ZSB0byBiZSBkZWNsYXJlZCBhdCBidWlsZCB0aW1lDQo+IHBsYWNpbmcgaXQgaW50byByZWFkLW9u
bHkgbWVtb3J5LCBpbnN0ZWFkIG9mIGhhdmluZyB0byBiZSBkeW5hbWljYWxseQ0KPiBhbGxvY2F0
ZWQgYXQgYm9vdCB0aW1lLg0KPg0KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZz4NCj4gU3VnZ2VzdGVkLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdy
ZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIEIuIE1h
cmxpZXJlIDxyaWNhcmRvQG1hcmxpZXJlLm5ldD4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYv
ZG1hLWhlYXAuYyB8IDI2ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5j
DQo+IGluZGV4IDg0YWU3MDhmYWZlNy4uYmNjYTZhMmJiY2U4IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAu
Yw0KPiBAQCAtNDMsMTAgKzQzLDE4IEBAIHN0cnVjdCBkbWFfaGVhcCB7DQo+ICAgICAgICAgc3Ry
dWN0IGNkZXYgaGVhcF9jZGV2Ow0KPiAgfTsNCj4NCj4gK3N0YXRpYyBjaGFyICpkbWFfaGVhcF9k
ZXZub2RlKGNvbnN0IHN0cnVjdCBkZXZpY2UgKmRldiwgdW1vZGVfdCAqbW9kZSkNCj4gK3sNCj4g
KyAgICAgICByZXR1cm4ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJkbWFfaGVhcC8lcyIsIGRldl9u
YW1lKGRldikpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgTElTVF9IRUFEKGhlYXBfbGlzdCk7DQo+
ICBzdGF0aWMgREVGSU5FX01VVEVYKGhlYXBfbGlzdF9sb2NrKTsNCj4gIHN0YXRpYyBkZXZfdCBk
bWFfaGVhcF9kZXZ0Ow0KPiAtc3RhdGljIHN0cnVjdCBjbGFzcyAqZG1hX2hlYXBfY2xhc3M7DQo+
ICtzdGF0aWMgc3RydWN0IGNsYXNzIGRtYV9oZWFwX2NsYXNzID0gew0KPiArICAgICAgIC5uYW1l
ID0gREVWTkFNRSwNCj4gKyAgICAgICAuZGV2bm9kZSA9IGRtYV9oZWFwX2Rldm5vZGUsDQo+ICt9
Ow0KPiAgc3RhdGljIERFRklORV9YQVJSQVlfQUxMT0MoZG1hX2hlYXBfbWlub3JzKTsNCj4NCj4g
IHN0YXRpYyBpbnQgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwg
c2l6ZV90IGxlbiwNCj4gQEAgLTI2MSw3ICsyNjksNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9o
ZWFwX2FkZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiAg
ICAgICAgICAgICAgICAgZ290byBlcnIxOw0KPiAgICAgICAgIH0NCj4NCj4gLSAgICAgICBkZXZf
cmV0ID0gZGV2aWNlX2NyZWF0ZShkbWFfaGVhcF9jbGFzcywNCj4gKyAgICAgICBkZXZfcmV0ID0g
ZGV2aWNlX2NyZWF0ZSgmZG1hX2hlYXBfY2xhc3MsDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgTlVMTCwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoZWFwLT5o
ZWFwX2RldnQsDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCwNCj4gQEAg
LTI5MSw3ICsyOTksNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2FkZChjb25zdCBzdHJ1
Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiAgICAgICAgIHJldHVybiBoZWFw
Ow0KPg0KPiAgZXJyMzoNCj4gLSAgICAgICBkZXZpY2VfZGVzdHJveShkbWFfaGVhcF9jbGFzcywg
aGVhcC0+aGVhcF9kZXZ0KTsNCj4gKyAgICAgICBkZXZpY2VfZGVzdHJveSgmZG1hX2hlYXBfY2xh
c3MsIGhlYXAtPmhlYXBfZGV2dCk7DQo+ICBlcnIyOg0KPiAgICAgICAgIGNkZXZfZGVsKCZoZWFw
LT5oZWFwX2NkZXYpOw0KPiAgZXJyMToNCj4gQEAgLTMwMSwxMSArMzA5LDYgQEAgc3RydWN0IGRt
YV9oZWFwICpkbWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpl
eHBfaW5mbykNCj4gICAgICAgICByZXR1cm4gZXJyX3JldDsNCj4gIH0NCj4NCj4gLXN0YXRpYyBj
aGFyICpkbWFfaGVhcF9kZXZub2RlKGNvbnN0IHN0cnVjdCBkZXZpY2UgKmRldiwgdW1vZGVfdCAq
bW9kZSkNCj4gLXsNCj4gLSAgICAgICByZXR1cm4ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJkbWFf
aGVhcC8lcyIsIGRldl9uYW1lKGRldikpOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW50IGRtYV9o
ZWFwX2luaXQodm9pZCkNCj4gIHsNCj4gICAgICAgICBpbnQgcmV0Ow0KPiBAQCAtMzE0LDEyICsz
MTcsMTEgQEAgc3RhdGljIGludCBkbWFfaGVhcF9pbml0KHZvaWQpDQo+ICAgICAgICAgaWYgKHJl
dCkNCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+DQo+IC0gICAgICAgZG1hX2hlYXBf
Y2xhc3MgPSBjbGFzc19jcmVhdGUoREVWTkFNRSk7DQo+IC0gICAgICAgaWYgKElTX0VSUihkbWFf
aGVhcF9jbGFzcykpIHsNCj4gKyAgICAgICByZXQgPSBjbGFzc19yZWdpc3RlcigmZG1hX2hlYXBf
Y2xhc3MpOw0KPiArICAgICAgIGlmIChyZXQpIHsNCj4gICAgICAgICAgICAgICAgIHVucmVnaXN0
ZXJfY2hyZGV2X3JlZ2lvbihkbWFfaGVhcF9kZXZ0LCBOVU1fSEVBUF9NSU5PUlMpOw0KPiAtICAg
ICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoZG1hX2hlYXBfY2xhc3MpOw0KPiArICAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsNCj4gICAgICAgICB9DQo+IC0gICAgICAgZG1hX2hlYXBfY2xhc3Mt
PmRldm5vZGUgPSBkbWFfaGVhcF9kZXZub2RlOw0KPg0KPiAgICAgICAgIHJldHVybiAwOw0KPiAg
fQ0KPg0KPiAtLQ0KPiAyLjQzLjANCg0KUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJj
aWVyQGdvb2dsZS5jb20+DQoNCklzIHRoaXMgcmVhbGx5IGEgcmVzZW5kPyBJIGRvbid0IHNlZSBh
bnl0aGluZyBvbiBsb3JlIGFuZCBJIGNhbid0DQpyZWNhbGwgc2VlaW5nIHRoaXMgcGF0Y2ggaW4g
bXkgaW5ib3ggYmVmb3JlLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

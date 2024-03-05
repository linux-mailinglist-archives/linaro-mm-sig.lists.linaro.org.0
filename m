Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C61D8726A4
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 19:37:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6114E3F37E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Mar 2024 18:37:13 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by lists.linaro.org (Postfix) with ESMTPS id D6D9B3F37E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Mar 2024 18:37:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=r4DPqZsg;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.178 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6087396e405so629937b3.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Mar 2024 10:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709663826; x=1710268626; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xoNrumIdDmxRFKTd8oqeNhVL7nHIUTBgQcYMEPSY5hU=;
        b=r4DPqZsg0BhCDk/BPQjMXMVBQZto2VOAEto/3LO5/VXQza0vskRuCl0k55SsaBYYw+
         rraEKeQcwEILbagGtP1xMhArOe85dA8Lwzzz68g27Oy/KyuMZ95ZtMReUqwagLmrN1KK
         NCax0Od/m53qdHA4vUcoPn2vxo+AgBVzILKrziQCOYMKVcewYcxsTyZVXkxuZ55Yl/C/
         JFvor0vf8MU5Oolc4PUlttTEqQKbnhgPXjqvvWORvfKGBjvR4ITbiZ7mVSJrcnfSoVxt
         q8ZxVoUrwlR12OtT+0+WyG72imoJsjnknOIgPWcl+KfWbQPm3H1iTrTgmr89hzL3Gl0W
         6UZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709663826; x=1710268626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xoNrumIdDmxRFKTd8oqeNhVL7nHIUTBgQcYMEPSY5hU=;
        b=KerXhljEUkMS+hfnGqx2rZpdG6BjwSziY+rIsfzfHGoNTaZrKJiReF4Y4pT5w2U2dl
         JUzFE3v4wRSfZvSu8c1SH5Y+de5uVzsMU2e7ohc9efoAix4Ph7eCdaIM/MiZ7O/YUyk9
         /HfYamQbDJHqK9CWNrpfnSjjeTiYKB7OyqxKCUokNLjL7RuDMc2A4sCdzHfZ1E8ujNRy
         duDqteO7Ii9e8Nsa73a+2u0fci2L9JOO8qcvKXpzXr9lLyvu2ElEFnspjAY4OtLm4nQQ
         OZXMTnrm2F8h7alaxz8jcbft+9FaJ+M366VpSHj8j6Zled22/3th0Hd3XLy1VbH17TGe
         vj2A==
X-Forwarded-Encrypted: i=1; AJvYcCWDg+OLA/7phNMDLal1fb3pR6MFLDl8BuG7+fmKqf5U1FIFsJmFGQ68W9A1DLPbwgH/x9GGqNniSCRnhaXye6lRddUIKiZTmOvXK1CLh2M=
X-Gm-Message-State: AOJu0YxlFj6d204t2XIFURhpMnZj0uRDvRJhbrdvNE1Ghhy/lwhWPy21
	6DEiRxv6aMLCBRW49cf0aif//6I+1HucH544hW/UcCcpmWF6nYO0+U0Est5smORmYvYOn3tuBel
	F7A2Uv2T7wOsiov+KVKRhBk4CbdKvhh49VNGv
X-Google-Smtp-Source: AGHT+IEoZFcKgWl/szXzeyOtASBiJA8GR+9pZvgd3lMN7BXMAj+p5AQ3HQCYYWPBUm119ytYheFglLY62BfeRkzUV08=
X-Received: by 2002:a25:870f:0:b0:dcf:9aeb:73af with SMTP id
 a15-20020a25870f000000b00dcf9aeb73afmr2705895ybl.2.1709663826235; Tue, 05 Mar
 2024 10:37:06 -0800 (PST)
MIME-Version: 1.0
References: <20240305-class_cleanup-drm-v1-0-94f82740525a@marliere.net>
 <20240305-class_cleanup-drm-v1-4-94f82740525a@marliere.net>
 <CABdmKX0VGyBdTo8gzEocyz2HFcqEtu_31PYVjWzioBdCbnXW6w@mail.gmail.com> <gdkioaqffaoiocsybn22qwfpkgz6cujy5oklrdicgdcbatlsan@v7qjtak5jacn>
In-Reply-To: <gdkioaqffaoiocsybn22qwfpkgz6cujy5oklrdicgdcbatlsan@v7qjtak5jacn>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 5 Mar 2024 10:36:54 -0800
Message-ID: <CABdmKX0PKer3PF49ypH-8XBMT8rsm3xi3ia1iJB7DVHfFS5fxQ@mail.gmail.com>
To: "Ricardo B. Marliere" <ricardo@marliere.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D6D9B3F37E
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.178:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,redhat.com,gmx.de,linaro.org,collabora.com,arm.com,google.com,amd.com,linuxfoundation.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: DN5YOM7OTQAXF5KNC2KLWPCMR7G4N3FQ
X-Message-ID-Hash: DN5YOM7OTQAXF5KNC2KLWPCMR7G4N3FQ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Hans de Goede <hdegoede@redhat.com>, Helge Deller <deller@gmx.de>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RESEND drm-misc 4/4] dma-buf: heaps: make dma_heap_class constant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DN5YOM7OTQAXF5KNC2KLWPCMR7G4N3FQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXIgNSwgMjAyNCBhdCAxMDowMuKAr0FNIFJpY2FyZG8gQi4gTWFybGllcmUNCjxy
aWNhcmRvQG1hcmxpZXJlLm5ldD4gd3JvdGU6DQo+DQo+IE9uICA1IE1hciAwOTowNywgVC5KLiBN
ZXJjaWVyIHdyb3RlOg0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJj
aWVyQGdvb2dsZS5jb20+DQo+ID4NCj4gPiBJcyB0aGlzIHJlYWxseSBhIHJlc2VuZD8gSSBkb24n
dCBzZWUgYW55dGhpbmcgb24gbG9yZSBhbmQgSSBjYW4ndA0KPiA+IHJlY2FsbCBzZWVpbmcgdGhp
cyBwYXRjaCBpbiBteSBpbmJveCBiZWZvcmUuDQo+DQo+IEhpIFQuSi4gdGhhbmtzIGZvciByZXZp
ZXdpbmchDQo+DQo+IEknbSBzb3JyeSBhYm91dCB0aGF0LCBJIHNlbnQgdGhlIHNlcmllcyBvbmx5
IHRvIEdyZWcgYmVmb3JlIGJ1dCBJDQo+IHRob3VnaHQgaXQgaGFkIENjJ2VkIHRoZSBsaXN0cyBh
cyB3ZWxsLiBUaGVuIEkgcmVhbGl6ZWQgaXQgd2FzIHNlbnQNCj4gcHVibGljbHkgb25seSBvbmNl
LiBEb3VibGUgbWlzdGFrZSA6KA0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0gICAgICAgUmljYXJk
by4NCg0KQ2hlZXJzLCBnbGFkIEkgZG9uJ3QgaGF2ZSB0byB0cnkgdG8gcmV3b3JrIG15IGVtYWls
IGZpbHRlcnMuIDopDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK

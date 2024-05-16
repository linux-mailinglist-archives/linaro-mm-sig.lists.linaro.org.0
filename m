Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8C88C74E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 12:56:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F16144817
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 10:56:43 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by lists.linaro.org (Postfix) with ESMTPS id D136E3F672
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 10:56:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=JwAXwi64;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.167.46) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-51f782c666eso127516e87.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 03:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1715856990; x=1716461790; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CYCaZIYD32X8OWqTmuj/FbQa01MUdFxdF5XvoFGLFW0=;
        b=JwAXwi64bd1DrcgsRK9fOB6N3QyJRvWOj4Fxas8a1RaO0O92KU6OJ1DogdHWCowKwh
         999dkXCn1haZl04JFLM5K1MQgEHVfRMMHonFwn5XVI8UQz9I1dXfQH1rj/AYYuNYIYQ3
         AiN4xKoulFXn0VB/Mc5N0W3kaqH21uWdSkZz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715856990; x=1716461790;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CYCaZIYD32X8OWqTmuj/FbQa01MUdFxdF5XvoFGLFW0=;
        b=oSn0bCHcrIE7AIbTI+OEBUFFiljv0ypal8tywcbwyowoFvPQraV+yVFTumRK7lv3Ig
         YYbnalZWh+gRruDj1AEg5OGXeGo9nlBvUggZXHXIL1iAa2kkKrcjwYzbv8ZzJiCkJLPz
         iZjVJOgkl+5YH9JCXPKsXdKn8XWP7xRz2kzqZAWVWlDTFbjXcdf7IDdAEwRXDNFtHsNd
         LG3RKSpyiOh5p38Mu22IocXdjpf8B+hXzTf8PsYj3/GWnsqJcvSQdFK2c3LQ2H2uxEgw
         N+WNWRWJgI7vvriumKUDM0Uv1eBNNHlM4fpMO+/5j2mfP2nK9tUYjpcgPIgGw+hjDiU0
         SXKw==
X-Forwarded-Encrypted: i=1; AJvYcCXp+jtffhQABtrmSvIzQq8l8FxY6ErrmP5KcygO7WSp1I41YnpWwHCj8xPN/NL+Mik/fE8YCO+Q4XNucYIRtzRjj9g6tDjXqsW2T00WVJ4=
X-Gm-Message-State: AOJu0YyBgchGhe6pFtoB2idNqqxpJy0EKueQvbkq70dXl5Ce79awtkvc
	InwsKtBfVJIsi2q0LXpVPws487zEiDdU0Mt1ToLKc2+AcXGyoD0GJ3tCgVgdlO0=
X-Google-Smtp-Source: AGHT+IEjj4yl40IXE4RuRX4OV/v0GH5bFkfz02Pq4c/NaDR61cTtFuwAhcTUObONlIdIlDgvDa0lTA==
X-Received: by 2002:a2e:9b8b:0:b0:2e2:1647:8308 with SMTP id 38308e7fff4ca-2e51fd4b33emr121987831fa.2.1715856990407;
        Thu, 16 May 2024 03:56:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-351c6f295e2sm6725490f8f.39.2024.05.16.03.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 03:56:29 -0700 (PDT)
Date: Thu, 16 May 2024 12:56:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: John Stultz <jstultz@google.com>
Message-ID: <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
Mail-Followup-To: John Stultz <jstultz@google.com>,
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Mattijs Korpershoek <mkorpershoek@baylibre.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
References: <20240515-dma-buf-ecc-heap-v1-0-54cbbd049511@kernel.org>
 <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANDhNCoOKwtpstFE2VDcUvzdXUWkZ-Zx+fz6xrdPWTyciVXMXQ@mail.gmail.com>
X-Operating-System: Linux phenom 6.6.15-amd64 
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D136E3F672
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.46:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DMARC_NA(0.00)[ffwll.ch];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2OBOAXSMPX6KYAZZBS2JET7Q6VVOFDKC
X-Message-ID-Hash: 2OBOAXSMPX6KYAZZBS2JET7Q6VVOFDKC
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2OBOAXSMPX6KYAZZBS2JET7Q6VVOFDKC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMTUsIDIwMjQgYXQgMTE6NDI6NThBTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6DQo+IE9uIFdlZCwgTWF5IDE1LCAyMDI0IGF0IDY6NTfigK9BTSBNYXhpbWUgUmlwYXJkIDxt
cmlwYXJkQGtlcm5lbC5vcmc+IHdyb3RlOg0KPiA+IFRoaXMgc2VyaWVzIGlzIHRoZSBmb2xsb3ct
dXAgb2YgdGhlIGRpc2N1c3Npb24gdGhhdCBKb2huIGFuZCBJIGhhZCBhIGZldw0KPiA+IG1vbnRo
cyBhZ28gaGVyZToNCj4gPg0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQU5EaE5D
cXVKbjZiSDNLeEtmNjVCV2lUWUxWcVNkOTg5Mi14dEZESEhxcXlycm9DTVFAbWFpbC5nbWFpbC5j
b20vDQo+ID4NCj4gPiBUaGUgaW5pdGlhbCBwcm9ibGVtIHdlIHdlcmUgZGlzY3Vzc2luZyB3YXMg
dGhhdCBJJ20gY3VycmVudGx5IHdvcmtpbmcgb24NCj4gPiBhIHBsYXRmb3JtIHdoaWNoIGhhcyBh
IG1lbW9yeSBsYXlvdXQgd2l0aCBFQ0MgZW5hYmxlZC4gSG93ZXZlciwgZW5hYmxpbmcNCj4gPiB0
aGUgRUNDIGhhcyBhIG51bWJlciBvZiBkcmF3YmFja3Mgb24gdGhhdCBwbGF0Zm9ybTogbG93ZXIg
cGVyZm9ybWFuY2UsDQo+ID4gaW5jcmVhc2VkIG1lbW9yeSB1c2FnZSwgZXRjLiBTbyBmb3IgdGhp
bmdzIGxpa2UgZnJhbWVidWZmZXJzLCB0aGUNCj4gPiB0cmFkZS1vZmYgaXNuJ3QgZ3JlYXQgYW5k
IHRodXMgdGhlcmUncyBhIG1lbW9yeSByZWdpb24gd2l0aCBFQ0MgZGlzYWJsZWQNCj4gPiB0byBh
bGxvY2F0ZSBmcm9tIGZvciBzdWNoIHVzZSBjYXNlcy4NCj4gPg0KPiA+IEFmdGVyIGEgc3VnZ2Vz
dGlvbiBmcm9tIEpvaG4sIEkgY2hvc2UgdG8gc3RhcnQgdXNpbmcgaGVhcCBhbGxvY2F0aW9ucw0K
PiA+IGZsYWdzIHRvIGFsbG93IGZvciB1c2Vyc3BhY2UgdG8gYXNrIGZvciBhIHBhcnRpY3VsYXIg
RUNDIHNldHVwLiBUaGlzIGlzDQo+ID4gdGhlbiBiYWNrZWQgYnkgYSBuZXcgaGVhcCB0eXBlIHRo
YXQgcnVucyBmcm9tIHJlc2VydmVkIG1lbW9yeSBjaHVua3MNCj4gPiBmbGFnZ2VkIGFzIHN1Y2gs
IGFuZCB0aGUgZXhpc3RpbmcgRFQgcHJvcGVydGllcyB0byBzcGVjaWZ5IHRoZSBFQ0MNCj4gPiBw
cm9wZXJ0aWVzLg0KPiA+DQo+ID4gV2UgY291bGQgYWxzbyBlYXNpbHkgZXh0ZW5kIHRoaXMgbWVj
aGFuaXNtIHRvIHN1cHBvcnQgbW9yZSBmbGFncywgb3INCj4gPiB0aHJvdWdoIGEgbmV3IGlvY3Rs
IHRvIGRpc2NvdmVyIHdoaWNoIGZsYWdzIGEgZ2l2ZW4gaGVhcCBzdXBwb3J0cy4NCj4gDQo+IEhl
eSEgVGhhbmtzIGZvciBzZW5kaW5nIHRoaXMgYWxvbmchIEknbSBlYWdlciB0byBzZWUgbW9yZSBo
ZWFwIHJlbGF0ZWQNCj4gd29yayBiZWluZyBkb25lIHVwc3RyZWFtLg0KPiANCj4gVGhlIG9ubHkg
dGhpbmcgdGhhdCBtYWtlcyBtZSBhIGJpdCBoZXNpdGFudCwgaXMgdGhlIGludHJvZHVjdGlvbiBv
Zg0KPiBhbGxvY2F0aW9uIGZsYWdzIChhcyBvcHBvc2VkIHRvIGEgdW5pcXVlbHkgc3BlY2lmaWVk
L25hbWVkICJlY2MiDQo+IGhlYXApLg0KPiANCj4gV2UgZGlkIHRhbGsgYWJvdXQgdGhpcyBlYXJs
aWVyLCBhbmQgbXkgZWFybGllciBwcmVzcyB0aGF0IG9ubHkgaWYgdGhlDQo+IEVDQyBmbGFnIHdh
cyBnZW5lcmFsIGVub3VnaCB0byBhcHBseSB0byB0aGUgbWFqb3JpdHkgb2YgaGVhcHMgdGhlbiBp
dA0KPiBtYWtlcyBzZW5zZSBhcyBhIGZsYWcsIGFuZCB5b3VyIHBhdGNoIGhlcmUgZG9lcyBhcHBs
eSBpdCB0byBhbGwgdGhlDQo+IGhlYXBzLiBTbyBJIGRvbid0IGhhdmUgYW4gb2JqZWN0aW9uLg0K
PiANCj4gQnV0IGl0IG1ha2VzIG1lIGEgbGl0dGxlIG5lcnZvdXMgdG8gYWRkIGEgbmV3IGdlbmVy
aWMgYWxsb2NhdGlvbiBmbGFnDQo+IGZvciBhIGZlYXR1cmUgbW9zdCBoYXJkd2FyZSBkb2Vzbid0
IHN1cHBvcnQgKHlldCwgYXQgbGVhc3QpLiBTbyBpdCdzDQo+IGhhcmQgdG8gd2VpZ2ggaG93IGNv
bW1vbiB0aGUgYWN0dWFsIHVzYWdlIHdpbGwgYmUgYWNyb3NzIGFsbCB0aGUNCj4gaGVhcHMuDQo+
IA0KPiBJIGFwb2xvZ2l6ZSBhcyBteSB3b3JyeSBpcyBtb3N0bHkgYm9ybiBvdXQgb2Ygc2VlaW5n
IHZlbmRvcnMgcmVhbGx5DQo+IHB1c2ggb3BhcXVlIGZlYXR1cmUgZmxhZ3MgaW4gdGhlaXIgb2xk
IGlvbiBoZWFwcywgc28gaW4gcHJvdmlkaW5nIGENCj4gZmxhZ3MgYXJndW1lbnQsIGl0IHdhcyBt
b3N0bHkgaW50ZW5kZWQgYXMgYW4gZXNjYXBlIGhhdGNoIGZvcg0KPiBvYnZpb3VzbHkgY29tbW9u
IGF0dHJpYnV0ZXMuIFNvIGhhdmluZyB0aGUgZmlyc3QgYmUgc29tZXRoaW5nIHRoYXQNCj4gc2Vl
bXMgcmVhc29uYWJsZSwgYnV0IGlzbid0IGFjdHVhbGx5IHRoYXQgY29tbW9uIG1ha2VzIG1lIGZy
ZXQgc29tZS4NCj4gDQo+IFNvIGFnYWluLCBub3QgYW4gb2JqZWN0aW9uLCBqdXN0IHNvbWV0aGlu
ZyBmb3IgZm9sa3MgdG8gc3RldyBvbiB0bw0KPiBtYWtlIHN1cmUgdGhpcyBpcyByZWFsbHkgdGhl
IHJpZ2h0IGFwcHJvYWNoLg0KDQpBbm90aGVyIGdvb2QgcmVhc29uIHRvIGdvIHdpdGggZnVsbCBo
ZWFwIG5hbWVzIGluc3RlYWQgb2Ygb3BhcXVlIGZsYWdzIG9uDQpleGlzdGluZyBoZWFwcyBpcyB0
aGF0IHdpdGggdGhlIGZvcm1lciB3ZSBjYW4gdXNlIHN5bWxpbmtzIGluIHN5c2ZzIHRvDQpzcGVj
aWZ5IGhlYXBzLCB3aXRoIHRoZSBsYXR0ZXIgd2UgbmVlZCBhIG5ldyBpZGVhLiBXZSBoYXZlbid0
IHlldCBnb3R0ZW4NCmFyb3VuZCB0byBpbXBsZW1lbnQgdGhpcyBhbnl3aGVyZSwgYnV0IGl0J3Mg
YmVlbiBpbiB0aGUgZG1hLWJ1Zi9oZWFwIHRvZG8NCnNpbmNlIGZvcmV2ZXIsIGFuZCBJIGxpa2Ug
aXQgYXMgYSBkZXNpZ24gYXBwcm9hY2guIFNvIHdvdWxkIGJlIGEgZ29vZCBpZGVhDQp0byBub3Qg
dG9zcyBpdC4gV2l0aCB0aGF0IGRpc3BsYXkgd291bGQgaGF2ZSBzeW1saW5rcyB0byBjbWEtZWNj
IGFuZCBjbWEsDQphbmQgcmVuZGVyaW5nIG1heWJlIGNtYS1lY2MsIHNobWVtLCBjbWEgaGVhcHMg
KGluIHByaW9yaXR5IG9yZGVyKSBmb3IgYQ0KU29DIHdoZXJlIHRoZSBkaXNwbGF5IG5lZWRzIGNv
bnRpZyBtZW1vcnkgZm9yIHNjYW5vdXQuDQoNCj4gQW5vdGhlciB0aGluZyB0byBkaXNjdXNzLCB0
aGF0IEkgZGlkbid0IHNlZSBpbiB5b3VyIG1haWw6IERvIHdlIGhhdmUNCj4gYW4gb3Blbi1zb3Vy
Y2UgdXNlciBvZiB0aGlzIG5ldyBmbGFnPw0KDQpJIHRoaW5rIG9uZSBvcHRpb24gbWlnaHQgYmUg
dG8ganVzdCBzdGFydCB1c2luZyB0aGVzZSBpbnRlcm5hbGx5LCBidXQgbm90DQpzdXJlIHRoZSBk
bWEtYXBpIHdvdWxkIHVuZGVyc3RhbmQgYSBmYWxsYmFjayBjYWRlbmNlIG9mIGFsbG9jYXRvcnMg
KGFmYWlrDQp5b3UgY2FuIHNwZWNpZnkgc3BlY2lmaWMgY21hIHJlZ2lvbnMgYWxyZWFkeSwgYnV0
IHRoYXQgZG9lc24ndCByZWFsbHkNCmNvdmVyZSB0aGUgY2FzZSB3aGVyZSB5b3UgY2FuIGZhbGwg
YmFjayB0byBwYWdlcyBhbmQgaW9tbXUgdG8gcmVtYXAgdG8NCmNvbnRpZyBkbWEgc3BhY2UpIC4u
LiBBbmQgSSBkb24ndCB0aGluayBhYmFuZG9uZGluZyB0aGUgZG1hLWFwaSBmb3INCmFsbG9jYXRp
bmcgY21hIGJ1ZmZlcnMgaXMgZ29pbmcgdG8gYmUgYSBwb3B1bGFyIHByb3Bvc2FsLg0KLVNpbWEN
Ci0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
DQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

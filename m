Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD7A8CCF8E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2024 11:45:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67A434009C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 May 2024 09:45:44 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 88C913F368
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2024 09:45:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b="Y/ic9PEA";
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.221.51) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-354f89a59b8so110699f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 May 2024 02:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1716457531; x=1717062331; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rua3OglaGtRzvLpfCStU07S245n5hB3FYrd8MuHxXyo=;
        b=Y/ic9PEAiKpXkhI6bN5LQ3n7pJZGviFxn74wV1w+tnhMrdYbrkX/UWCTa7F7BrTkVB
         7SzMfI6tBIxD4LgatPOM4Bfz0ZG6ZOqrf8u17vzKvrPo5NVOIAaqa1boO1RmxDE1QAv7
         VRLWP/9/H0zN8F5/I45ycbJrsXoeGFbY5sUOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716457531; x=1717062331;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rua3OglaGtRzvLpfCStU07S245n5hB3FYrd8MuHxXyo=;
        b=s9DhDP6tWuiiLZTAS4FMRw0rC6qurE4AgqCKswsS6pnksUV62gYo/Q0V4nEkksKt63
         GetTvRuZGelF4YnTUe/RD7tOm6qKZGFbeAACVQkDsqnQyS8tT7A88WOx5fCSCnwDXyzs
         jmPp6EBJU5So3DmnYbZMFVAu3BBFfv+0lTC2PNv9swtbl42fsBISfFy0/K8Anf9ss/36
         f3gmiJQALo2YJU56kFGv8eWYhSaSmQbk57te+0G6dfK0QWjP4bZA6GxJWuYXajzfw+3U
         ++fRtW2BApWdbxO+d7/DD7OgCtrX2pWUsLz7y0xUyxoNdQKpnocc2gDynXa14OisGiGT
         7BTg==
X-Forwarded-Encrypted: i=1; AJvYcCVs9EsTX9z047AOeehUWiDAYbgfdmFmeMpYMp5+FxVaoSKIRWZ0OcH518XhN3/a1CQD2MnZtLnjQCXKxZexI6VgMAeSUs1Hjz4cHOVcDzY=
X-Gm-Message-State: AOJu0YxA8TwJH1wSVw5eAmh/SMuWPcg39gu//W3vy73c9HIzpY9QqSCs
	MHUmRG2vOAWjbuX9ARDn1SMUF0Wc3qegpQBHGYYUgHSafLi9Mj56pp0izvOvXoE=
X-Google-Smtp-Source: AGHT+IG15s9jGPIJ1Tt73n14VxOUlfIOXJ5tvzDkW3ed8IqDv2vSAEij8VrZEa4QLVo3Rsx8X1k4gA==
X-Received: by 2002:a05:600c:511e:b0:41b:e58c:e007 with SMTP id 5b1f17b1804b1-420fd386158mr32798045e9.4.1716457531398;
        Thu, 23 May 2024 02:45:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f7b7f9sm20030635e9.27.2024.05.23.02.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:45:30 -0700 (PDT)
Date: Thu, 23 May 2024 11:45:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maxime Ripard <mripard@kernel.org>
Message-ID: <Zk8QOB6F4pd__WvA@phenom.ffwll.local>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
	John Stultz <jstultz@google.com>, Rob Herring <robh@kernel.org>,
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
 <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
 <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
 <ZkyOOwpM57HIiO3v@phenom.ffwll.local>
 <20240522-coral-fennec-from-uranus-fb7263@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240522-coral-fennec-from-uranus-fb7263@houat>
X-Operating-System: Linux phenom 6.8.9-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 88C913F368
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.51:from];
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
Message-ID-Hash: ZRJEVS4FZS2ZJ3SPJ73B2N3JIMRWCEAV
X-Message-ID-Hash: ZRJEVS4FZS2ZJ3SPJ73B2N3JIMRWCEAV
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: John Stultz <jstultz@google.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZRJEVS4FZS2ZJ3SPJ73B2N3JIMRWCEAV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMjIsIDIwMjQgYXQgMDM6MTg6MDJQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToNCj4gT24gVHVlLCBNYXkgMjEsIDIwMjQgYXQgMDI6MDY6MTlQTSBHTVQsIERhbmllbCBW
ZXR0ZXIgd3JvdGU6DQo+ID4gT24gVGh1LCBNYXkgMTYsIDIwMjQgYXQgMDk6NTE6MzVBTSAtMDcw
MCwgSm9obiBTdHVsdHogd3JvdGU6DQo+ID4gPiBPbiBUaHUsIE1heSAxNiwgMjAyNCBhdCAzOjU2
4oCvQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToNCj4gPiA+ID4gT24g
V2VkLCBNYXkgMTUsIDIwMjQgYXQgMTE6NDI6NThBTSAtMDcwMCwgSm9obiBTdHVsdHogd3JvdGU6
DQo+ID4gPiA+ID4gQnV0IGl0IG1ha2VzIG1lIGEgbGl0dGxlIG5lcnZvdXMgdG8gYWRkIGEgbmV3
IGdlbmVyaWMgYWxsb2NhdGlvbiBmbGFnDQo+ID4gPiA+ID4gZm9yIGEgZmVhdHVyZSBtb3N0IGhh
cmR3YXJlIGRvZXNuJ3Qgc3VwcG9ydCAoeWV0LCBhdCBsZWFzdCkuIFNvIGl0J3MNCj4gPiA+ID4g
PiBoYXJkIHRvIHdlaWdoIGhvdyBjb21tb24gdGhlIGFjdHVhbCB1c2FnZSB3aWxsIGJlIGFjcm9z
cyBhbGwgdGhlDQo+ID4gPiA+ID4gaGVhcHMuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJIGFwb2xv
Z2l6ZSBhcyBteSB3b3JyeSBpcyBtb3N0bHkgYm9ybiBvdXQgb2Ygc2VlaW5nIHZlbmRvcnMgcmVh
bGx5DQo+ID4gPiA+ID4gcHVzaCBvcGFxdWUgZmVhdHVyZSBmbGFncyBpbiB0aGVpciBvbGQgaW9u
IGhlYXBzLCBzbyBpbiBwcm92aWRpbmcgYQ0KPiA+ID4gPiA+IGZsYWdzIGFyZ3VtZW50LCBpdCB3
YXMgbW9zdGx5IGludGVuZGVkIGFzIGFuIGVzY2FwZSBoYXRjaCBmb3INCj4gPiA+ID4gPiBvYnZp
b3VzbHkgY29tbW9uIGF0dHJpYnV0ZXMuIFNvIGhhdmluZyB0aGUgZmlyc3QgYmUgc29tZXRoaW5n
IHRoYXQNCj4gPiA+ID4gPiBzZWVtcyByZWFzb25hYmxlLCBidXQgaXNuJ3QgYWN0dWFsbHkgdGhh
dCBjb21tb24gbWFrZXMgbWUgZnJldCBzb21lLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gU28gYWdh
aW4sIG5vdCBhbiBvYmplY3Rpb24sIGp1c3Qgc29tZXRoaW5nIGZvciBmb2xrcyB0byBzdGV3IG9u
IHRvDQo+ID4gPiA+ID4gbWFrZSBzdXJlIHRoaXMgaXMgcmVhbGx5IHRoZSByaWdodCBhcHByb2Fj
aC4NCj4gPiA+ID4NCj4gPiA+ID4gQW5vdGhlciBnb29kIHJlYXNvbiB0byBnbyB3aXRoIGZ1bGwg
aGVhcCBuYW1lcyBpbnN0ZWFkIG9mIG9wYXF1ZSBmbGFncyBvbg0KPiA+ID4gPiBleGlzdGluZyBo
ZWFwcyBpcyB0aGF0IHdpdGggdGhlIGZvcm1lciB3ZSBjYW4gdXNlIHN5bWxpbmtzIGluIHN5c2Zz
IHRvDQo+ID4gPiA+IHNwZWNpZnkgaGVhcHMsIHdpdGggdGhlIGxhdHRlciB3ZSBuZWVkIGEgbmV3
IGlkZWEuIFdlIGhhdmVuJ3QgeWV0IGdvdHRlbg0KPiA+ID4gPiBhcm91bmQgdG8gaW1wbGVtZW50
IHRoaXMgYW55d2hlcmUsIGJ1dCBpdCdzIGJlZW4gaW4gdGhlIGRtYS1idWYvaGVhcCB0b2RvDQo+
ID4gPiA+IHNpbmNlIGZvcmV2ZXIsIGFuZCBJIGxpa2UgaXQgYXMgYSBkZXNpZ24gYXBwcm9hY2gu
IFNvIHdvdWxkIGJlIGEgZ29vZCBpZGVhDQo+ID4gPiA+IHRvIG5vdCB0b3NzIGl0LiBXaXRoIHRo
YXQgZGlzcGxheSB3b3VsZCBoYXZlIHN5bWxpbmtzIHRvIGNtYS1lY2MgYW5kIGNtYSwNCj4gPiA+
ID4gYW5kIHJlbmRlcmluZyBtYXliZSBjbWEtZWNjLCBzaG1lbSwgY21hIGhlYXBzIChpbiBwcmlv
cml0eSBvcmRlcikgZm9yIGENCj4gPiA+ID4gU29DIHdoZXJlIHRoZSBkaXNwbGF5IG5lZWRzIGNv
bnRpZyBtZW1vcnkgZm9yIHNjYW5vdXQuDQo+ID4gPiANCj4gPiA+IFNvIGluZGVlZCB0aGF0IGlz
IGEgZ29vZCBwb2ludCB0byBrZWVwIGluIG1pbmQsIGJ1dCBJIGFsc28gdGhpbmsgaXQNCj4gPiA+
IG1pZ2h0IHJlLWluZm9yY2UgdGhlIGNob2ljZSBvZiBoYXZpbmcgRUNDIGFzIGEgZmxhZyBoZXJl
Lg0KPiA+ID4gDQo+ID4gPiBTaW5jZSBteSB1bmRlcnN0YW5kaW5nIG9mIHRoZSBzeXNmcyBzeW1s
aW5rcyB0byBoZWFwcyBpZGVhIGlzIGFib3V0DQo+ID4gPiBiZWluZyBhYmxlIHRvIGZpZ3VyZSBv
dXQgYSBjb21tb24gaGVhcCBmcm9tIGEgY29sbGVjdGlvbiBvZiBkZXZpY2VzLA0KPiA+ID4gaXQn
cyByZWFsbHkgYWJvdXQgdGhlIGFiaWxpdHkgZm9yIHRoZSBkcml2ZXIgdG8gYWNjZXNzIHRoZSB0
eXBlIG9mDQo+ID4gPiBtZW1vcnkuIElmIEVDQyBpcyBqdXN0IGFuIGF0dHJpYnV0ZSBvZiB0aGUg
dHlwZSBvZiBtZW1vcnkgKGFzIGluIHRoaXMNCj4gPiA+IHBhdGNoIHNlcmllcyksIGl0IGJlaW5n
IG9uIG9yIG9mZiB3b24ndCBuZWNlc3NhcmlseSBhZmZlY3QNCj4gPiA+IGNvbXBhdGliaWxpdHkg
b2YgdGhlIGJ1ZmZlciB3aXRoIHRoZSBkZXZpY2UuICBTaW1pbGFybHkgInVuY2FjaGVkIg0KPiA+
ID4gc2VlbXMgbW9yZSBvZiBhbiBhdHRyaWJ1dGUgb2YgbWVtb3J5IHR5cGUgYW5kIG5vdCBhIHR5
cGUgaXRzZWxmLg0KPiA+ID4gSGFyZHdhcmUgdGhhdCBjYW4gYWNjZXNzIG5vbi1jb250aWd1b3Vz
ICJzeXN0ZW0iIGJ1ZmZlcnMgY2FuIGFjY2Vzcw0KPiA+ID4gdW5jYWNoZWQgc3lzdGVtIGJ1ZmZl
cnMuDQo+ID4gDQo+ID4gWWVhaCwgYnV0IGluIGdyYXBoaWNzIHRoZXJlJ3MgYSB3aWRlIGJhbmQg
d2hlcmUgInNoaXQgcGVyZm9ybWFuY2UiIGlzDQo+ID4gZGVmYWN0byAibm90IHVzZWFibGUgKGFz
IGludGVuZGVkIGF0IGxlYXN0KSIuDQo+IA0KPiBSaWdodCwgYnV0ICJub3QgdXNlYWJsZSIgaXMg
c3RpbGwga2luZCBvZiB1c2FnZSBkZXBlbmRlbnQsIHdoaWNoDQo+IHJlaW5mb3JjZXMgdGhlIG5l
ZWQgZm9yIGZsYWdzIChhbmQgcG9zc2libHkgc29tZSB3YXkgdG8gZGlzY292ZXIgd2hhdA0KPiB0
aGUgaGVhcCBzdXBwb3J0cykuDQo+IA0KPiBMaWtlLCBpZiBJIGp1c3Qgd2FudCB0byBhbGxvY2F0
ZSBhIGJ1ZmZlciBmb3IgYSBzaW5nbGUgd3JpdGViYWNrIGZyYW1lLA0KPiB0aGVuIEkgcHJvYmFi
bHkgZG9uJ3QgaGF2ZSB0aGUgc2FtZSByZXF1aXJlbWVudHMgdGhhbiBhIGNvbXBvc2l0b3IgdGhh
dA0KPiBuZWVkcyB0byBvdXRwdXQgYSBmcmFtZSBhdCAxMjBIei4NCj4gDQo+IFRoZSBmb3JtZXIg
cHJvYmFibHkgZG9lc24ndCBjYXJlIGFib3V0IHRoZSBidWZmZXIgYXR0cmlidXRlcyBhc2lkZSB0
aGF0DQo+IGl0J3MgYWNjZXNzaWJsZSBieSB0aGUgZGV2aWNlLiBUaGUgbGF0dGVyIHByb2JhYmx5
IGNhbid0IG1ha2UgYW55IGtpbmQNCj4gb2YgY29tcHJvbWlzZSBvdmVyIHdoYXQga2luZCBvZiBt
ZW1vcnkgY2hhcmFjdGVyaXN0aWNzIGl0IHVzZXMuDQo+IA0KPiBJZiB3ZSBsb29rIGludG8gdGhl
IGN1cnJlbnQgZGlzY3Vzc2lvbnMgd2UgaGF2ZSwgYSBjb21wb3NpdG9yIHdvdWxkDQo+IHByb2Jh
Ymx5IG5lZWQgYSBidWZmZXIgd2l0aG91dCBFQ0MsIG5vbi1zZWN1cmUsIGFuZCBwcm9iYWJseSB3
b3VsZG4ndA0KPiBjYXJlIGFib3V0IGNhY2hpbmcgYW5kIGJlaW5nIHBoeXNpY2FsbHkgY29udGln
dW91cy4NCj4gDQo+IExpYmNhbWVyYSdzIFNvZnRJU1Agd291bGQgcHJvYmFibHkgcmVxdWlyZSB0
aGF0IHRoZSBidWZmZXIgaXMgY2FjaGVhYmxlLA0KPiBub24tc2VjdXJlLCB3aXRob3V0IEVDQyBh
bmQgbWlnaHQgYXNrIGZvciBwaHlzaWNhbGx5IGNvbnRpZ3VvdXMgYnVmZmVycy4NCj4gDQo+IEFz
IHdlIGFkZCBtb3JlIG1lbW9yeSB0eXBlcyAvIGF0dHJpYnV0ZXMsIEkgdGhpbmsgYmVpbmcgYWJs
ZSB0byBkaXNjb3Zlcg0KPiBhbmQgZW5mb3JjZSBhIHBhcnRpY3VsYXIgc2V0IG9mIGZsYWdzIHdp
bGwgYmUgbW9yZSBhbmQgbW9yZSBpbXBvcnRhbnQsDQo+IGV2ZW4gbW9yZSBzbyBpZiB3ZSB0aWUg
aGVhcHMgdG8gZGV2aWNlcywgYmVjYXVzZSBpdCBqdXN0IGdpdmVzIGEgaGludA0KPiBhYm91dCB0
aGUgbWVtb3J5IGJlaW5nIHJlYWNoYWJsZSBmcm9tIHRoZSBkZXZpY2UsIGJ1dCBhcyB5b3Ugc2Fp
ZCwgeW91DQo+IGNhbiBzdGlsbCBnZXQgYSBidWZmZXIgd2l0aCBzaGl0IHBlcmZvcm1hbmNlIHRo
YXQgd29uJ3QgYmUgd2hhdCB5b3UNCj4gd2FudC4NCj4gDQo+ID4gU28gaWYgd2UgbGltaXQgdGhl
IHN5bWxpbmsgaWRlYSB0byBqdXN0IG1ha2luZyBzdXJlIHplcm8tY29weSBhY2Nlc3MgaXMNCj4g
PiBwb3NzaWJsZSwgdGhlbiB3ZSBtaWdodCBub3QgYWN0dWFsbHkgc29sdmUgdGhlIHJlYWwgd29y
bGQgcHJvYmxlbSB3ZSBuZWVkDQo+ID4gdG8gc29sdmUuIEFuZCBzbyB0aGUgc3ltbGlua3MgYmVj
b21lIHNvbWV3aGF0IHVzZWxlc3MsIGFuZCB3ZSBuZWVkIHRvDQo+ID4gc29tZXdoZXJlIGVuY29k
ZSB3aGljaCBmbGFncyB5b3UgbmVlZCB0byB1c2Ugd2l0aCBlYWNoIHN5bWxpbmsuDQo+ID4gDQo+
ID4gQnV0IEkgYWxzbyBzZWUgdGhlIGFyZ3VtZW50IHRoYXQgdGhlcmUncyBhIGJpdCBhIGNvbWJp
bmF0b3JpYWwgZXhwbG9zaW9uDQo+ID4gcG9zc2libGUuIFNvIEkgZ3Vlc3MgdGhlIHF1ZXN0aW9u
IGlzIHdoZXJlIHdlIHdhbnQgdG8gaGFuZGxlIGl0IC4uLg0KPiA+IA0KPiA+IEFsc28gd29uZGVy
aW5nIHdoZXRoZXIgd2Ugc2hvdWxkIGdldCB0aGUgc3ltbGluay9hbGxvY2F0b3IgaWRlYSBvZmYg
dGhlDQo+ID4gZ3JvdW5kIGZpcnN0LCBidXQgZ2l2ZW4gdGhhdCB0aGF0IGhhc24ndCBtb3ZlZCBp
biBhIGRlY2FkZSBpdCBtaWdodCBiZSB0b28NCj4gPiBtdWNoLiBCdXQgdGhlbiB0aGUgcXVlc3Rp
b24gaXMsIHdoYXQgdXNlcnNwYWNlIGFyZSB3ZSBnb2luZyB0byB1c2UgZm9yIGFsbA0KPiA+IHRo
ZXNlIG5ldyBoZWFwcyAob3IgaGVhcHMgd2l0aCBuZXcgZmxhZ3MpPw0KPiANCj4gRm9yIEVDQyBo
ZXJlLCB0aGUgY29tcG9zaXRvcnMgYXJlIHRoZSBvYnZpb3VzIHRhcmdldC4gV2hpY2ggbG9vcHMg
YmFja3MNCj4gaW50byB0aGUgZGlzY3Vzc2lvbiB3aXRoIEpvaG4uIERvIHlvdSBjb25zaWRlciBk
bWEtYnVmIGNvZGUgaGF2ZSB0aGUNCj4gc2FtZSB1YXBpIHJlcXVpcmVtZW50cyBhcyBEUk0/DQoN
CkltbyB5ZXMsIG90aGVyd2lzZSB3ZSdsbCBnZXQgcmVhbGx5IGZ1bm55IHN0dWZmIGxpa2UgcGVv
cGxlIGJ5cGFzcyBkcm0ncw0KdXNlcnNwYWNlIHJlcXVpcmVtZW50IGZvciBlLmcuIGNvbnRlbnQg
cHJvdGVjdGVkIGJ1ZmZlcnMgYnkganVzdCBzaGlwcGluZw0KdGhlIGZlYXR1cmUgaW4gYSBkbWEt
YnVmIGhlYXAgLi4uIEJlZW4gdGhlcmUsIGRvbmUgdGhhdC4NCg0KQWxzbyBJIHRoaW5rIGVzcGVj
aWFsbHkgd2l0aCBpbnRlcm9wIGFjcm9zcyBjb21wb25lbnRzIHRoZXJlJ3MgYSBodWdlDQpkaWZm
ZXJlbmNlIGJldHdlZW4gYSBxdWljayB0ZXN0IHByb2dyYW0gdG95IGFuZCB0aGUgcmVhbCB0aGlu
Zy4gQW5kDQpkbWEtYnVmIGhlYXBzIGFyZSBraW5kYSBhbGwgYWJvdXQgY3Jvc3MgY29tcG9uZW50
IGludGVyb3AuDQotU2ltYQ0KLS0gDQpEYW5pZWwgVmV0dGVyDQpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24NCmh0dHA6Ly9ibG9nLmZmd2xsLmNoDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

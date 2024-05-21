Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2538CADDE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 14:06:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 316293F952
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 May 2024 12:06:37 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id 8271E3F441
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 May 2024 12:06:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=RWTHatQr;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.42) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-574fd0306d0so1340712a12.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 May 2024 05:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1716293184; x=1716897984; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mJYdzH0pAsynv7wKO0qk2byjZJ72J8K30m6YCIFuLT4=;
        b=RWTHatQrPJv/SBSpeVpxu0eOTw1+Bi1aeK9h0Cjd0+GP16r+7/VG3tPa4FAnDQHCRm
         js61VaGr273qfQmoCQWNnUoVJeJ86y9AK5iJRfBEid3yxxuKpVYcttWtvheJd79UY2+f
         3JBS759bPyjiBpnsoaQP7ZIEkzqnsTzaaUhDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716293184; x=1716897984;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mJYdzH0pAsynv7wKO0qk2byjZJ72J8K30m6YCIFuLT4=;
        b=jd02RVeC1Qj2uuUxZEQ6G3rVa8cAIMsSiILD+w72Wapf2uR+UDugLPajouIgq2YLiD
         2FSGNsTsabLLMRBOdMaPQSj0SFqsH2ghi54FqEqYNOmZEr/POkSojyAFi8x1DushP6Dk
         QL4Km6N+9eBBrI6MEcVlbQX7Q9emp6UlXcalNUidVD9LwxqEgieIh6JavIxsL77w0GIU
         5YH1d2ExRtTAC+53uFmf92E5Fy2bJfCPRRb2JhgrxFSQcuFjEQ+A9mXnHe6jjKe+Zgih
         CzjBzMn/44Ze7VNBHW2ZgQbu1yrTCma3COiDSSFMBrVXsdLR9c9D3CivZ/rRYuflSIwz
         Wl4g==
X-Forwarded-Encrypted: i=1; AJvYcCUgrSkd/x05yC64zkO250vicXivcaaVWwrKojv/JABQGu2Hq6WiocTogwvpR6AoLihe+8NuUO5hGj7MYwA+RwT5Vf74xkEFrgvwm5/ozHw=
X-Gm-Message-State: AOJu0YykWGRbxvWdENkXHko+NWdY3+s1MuLYGGW2NBAEApjwQY8c1htF
	Sz1GWCuMVmTLvOGcnSYh+Qw+3wgemIWNWixBCI+Si5QxQi+xWsMTbn9SZDBjxRY=
X-Google-Smtp-Source: AGHT+IGfWNF191WRUe0dOT+wxuFScDgLI5Opi7mIPWI0KL0XH3aj2MmoNzb6yDiPo3DHO/ZyoC6pQg==
X-Received: by 2002:a17:906:3553:b0:a5a:893a:ad3d with SMTP id a640c23a62f3a-a5a893aae74mr1306089766b.7.1716293184252;
        Tue, 21 May 2024 05:06:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7d14sm1605454566b.130.2024.05.21.05.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 05:06:21 -0700 (PDT)
Date: Tue, 21 May 2024 14:06:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: John Stultz <jstultz@google.com>
Message-ID: <ZkyOOwpM57HIiO3v@phenom.ffwll.local>
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
 <ZkXmWwmdPsqAo7VU@phenom.ffwll.local>
 <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANDhNCo5hSC-sLwdkBi3e-Ja-MzdqcGGbn-4G3XNYwCzZUwscw@mail.gmail.com>
X-Operating-System: Linux phenom 6.8.9-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8271E3F441
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
Message-ID-Hash: M4VY6ZGS3UGMOINDNNNIKOUNBWSIMSCR
X-Message-ID-Hash: M4VY6ZGS3UGMOINDNNNIKOUNBWSIMSCR
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Mattijs Korpershoek <mkorpershoek@baylibre.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/8] dma-buf: heaps: Support carved-out heaps and ECC related-flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M4VY6ZGS3UGMOINDNNNIKOUNBWSIMSCR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgMTYsIDIwMjQgYXQgMDk6NTE6MzVBTSAtMDcwMCwgSm9obiBTdHVsdHogd3Jv
dGU6DQo+IE9uIFRodSwgTWF5IDE2LCAyMDI0IGF0IDM6NTbigK9BTSBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+IHdyb3RlOg0KPiA+IE9uIFdlZCwgTWF5IDE1LCAyMDI0IGF0IDExOjQy
OjU4QU0gLTA3MDAsIEpvaG4gU3R1bHR6IHdyb3RlOg0KPiA+ID4gQnV0IGl0IG1ha2VzIG1lIGEg
bGl0dGxlIG5lcnZvdXMgdG8gYWRkIGEgbmV3IGdlbmVyaWMgYWxsb2NhdGlvbiBmbGFnDQo+ID4g
PiBmb3IgYSBmZWF0dXJlIG1vc3QgaGFyZHdhcmUgZG9lc24ndCBzdXBwb3J0ICh5ZXQsIGF0IGxl
YXN0KS4gU28gaXQncw0KPiA+ID4gaGFyZCB0byB3ZWlnaCBob3cgY29tbW9uIHRoZSBhY3R1YWwg
dXNhZ2Ugd2lsbCBiZSBhY3Jvc3MgYWxsIHRoZQ0KPiA+ID4gaGVhcHMuDQo+ID4gPg0KPiA+ID4g
SSBhcG9sb2dpemUgYXMgbXkgd29ycnkgaXMgbW9zdGx5IGJvcm4gb3V0IG9mIHNlZWluZyB2ZW5k
b3JzIHJlYWxseQ0KPiA+ID4gcHVzaCBvcGFxdWUgZmVhdHVyZSBmbGFncyBpbiB0aGVpciBvbGQg
aW9uIGhlYXBzLCBzbyBpbiBwcm92aWRpbmcgYQ0KPiA+ID4gZmxhZ3MgYXJndW1lbnQsIGl0IHdh
cyBtb3N0bHkgaW50ZW5kZWQgYXMgYW4gZXNjYXBlIGhhdGNoIGZvcg0KPiA+ID4gb2J2aW91c2x5
IGNvbW1vbiBhdHRyaWJ1dGVzLiBTbyBoYXZpbmcgdGhlIGZpcnN0IGJlIHNvbWV0aGluZyB0aGF0
DQo+ID4gPiBzZWVtcyByZWFzb25hYmxlLCBidXQgaXNuJ3QgYWN0dWFsbHkgdGhhdCBjb21tb24g
bWFrZXMgbWUgZnJldCBzb21lLg0KPiA+ID4NCj4gPiA+IFNvIGFnYWluLCBub3QgYW4gb2JqZWN0
aW9uLCBqdXN0IHNvbWV0aGluZyBmb3IgZm9sa3MgdG8gc3RldyBvbiB0bw0KPiA+ID4gbWFrZSBz
dXJlIHRoaXMgaXMgcmVhbGx5IHRoZSByaWdodCBhcHByb2FjaC4NCj4gPg0KPiA+IEFub3RoZXIg
Z29vZCByZWFzb24gdG8gZ28gd2l0aCBmdWxsIGhlYXAgbmFtZXMgaW5zdGVhZCBvZiBvcGFxdWUg
ZmxhZ3Mgb24NCj4gPiBleGlzdGluZyBoZWFwcyBpcyB0aGF0IHdpdGggdGhlIGZvcm1lciB3ZSBj
YW4gdXNlIHN5bWxpbmtzIGluIHN5c2ZzIHRvDQo+ID4gc3BlY2lmeSBoZWFwcywgd2l0aCB0aGUg
bGF0dGVyIHdlIG5lZWQgYSBuZXcgaWRlYS4gV2UgaGF2ZW4ndCB5ZXQgZ290dGVuDQo+ID4gYXJv
dW5kIHRvIGltcGxlbWVudCB0aGlzIGFueXdoZXJlLCBidXQgaXQncyBiZWVuIGluIHRoZSBkbWEt
YnVmL2hlYXAgdG9kbw0KPiA+IHNpbmNlIGZvcmV2ZXIsIGFuZCBJIGxpa2UgaXQgYXMgYSBkZXNp
Z24gYXBwcm9hY2guIFNvIHdvdWxkIGJlIGEgZ29vZCBpZGVhDQo+ID4gdG8gbm90IHRvc3MgaXQu
IFdpdGggdGhhdCBkaXNwbGF5IHdvdWxkIGhhdmUgc3ltbGlua3MgdG8gY21hLWVjYyBhbmQgY21h
LA0KPiA+IGFuZCByZW5kZXJpbmcgbWF5YmUgY21hLWVjYywgc2htZW0sIGNtYSBoZWFwcyAoaW4g
cHJpb3JpdHkgb3JkZXIpIGZvciBhDQo+ID4gU29DIHdoZXJlIHRoZSBkaXNwbGF5IG5lZWRzIGNv
bnRpZyBtZW1vcnkgZm9yIHNjYW5vdXQuDQo+IA0KPiBTbyBpbmRlZWQgdGhhdCBpcyBhIGdvb2Qg
cG9pbnQgdG8ga2VlcCBpbiBtaW5kLCBidXQgSSBhbHNvIHRoaW5rIGl0DQo+IG1pZ2h0IHJlLWlu
Zm9yY2UgdGhlIGNob2ljZSBvZiBoYXZpbmcgRUNDIGFzIGEgZmxhZyBoZXJlLg0KPiANCj4gU2lu
Y2UgbXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgc3lzZnMgc3ltbGlua3MgdG8gaGVhcHMgaWRlYSBp
cyBhYm91dA0KPiBiZWluZyBhYmxlIHRvIGZpZ3VyZSBvdXQgYSBjb21tb24gaGVhcCBmcm9tIGEg
Y29sbGVjdGlvbiBvZiBkZXZpY2VzLA0KPiBpdCdzIHJlYWxseSBhYm91dCB0aGUgYWJpbGl0eSBm
b3IgdGhlIGRyaXZlciB0byBhY2Nlc3MgdGhlIHR5cGUgb2YNCj4gbWVtb3J5LiBJZiBFQ0MgaXMg
anVzdCBhbiBhdHRyaWJ1dGUgb2YgdGhlIHR5cGUgb2YgbWVtb3J5IChhcyBpbiB0aGlzDQo+IHBh
dGNoIHNlcmllcyksIGl0IGJlaW5nIG9uIG9yIG9mZiB3b24ndCBuZWNlc3NhcmlseSBhZmZlY3QN
Cj4gY29tcGF0aWJpbGl0eSBvZiB0aGUgYnVmZmVyIHdpdGggdGhlIGRldmljZS4gIFNpbWlsYXJs
eSAidW5jYWNoZWQiDQo+IHNlZW1zIG1vcmUgb2YgYW4gYXR0cmlidXRlIG9mIG1lbW9yeSB0eXBl
IGFuZCBub3QgYSB0eXBlIGl0c2VsZi4NCj4gSGFyZHdhcmUgdGhhdCBjYW4gYWNjZXNzIG5vbi1j
b250aWd1b3VzICJzeXN0ZW0iIGJ1ZmZlcnMgY2FuIGFjY2Vzcw0KPiB1bmNhY2hlZCBzeXN0ZW0g
YnVmZmVycy4NCg0KWWVhaCwgYnV0IGluIGdyYXBoaWNzIHRoZXJlJ3MgYSB3aWRlIGJhbmQgd2hl
cmUgInNoaXQgcGVyZm9ybWFuY2UiIGlzDQpkZWZhY3RvICJub3QgdXNlYWJsZSAoYXMgaW50ZW5k
ZWQgYXQgbGVhc3QpIi4NCg0KU28gaWYgd2UgbGltaXQgdGhlIHN5bWxpbmsgaWRlYSB0byBqdXN0
IG1ha2luZyBzdXJlIHplcm8tY29weSBhY2Nlc3MgaXMNCnBvc3NpYmxlLCB0aGVuIHdlIG1pZ2h0
IG5vdCBhY3R1YWxseSBzb2x2ZSB0aGUgcmVhbCB3b3JsZCBwcm9ibGVtIHdlIG5lZWQNCnRvIHNv
bHZlLiBBbmQgc28gdGhlIHN5bWxpbmtzIGJlY29tZSBzb21ld2hhdCB1c2VsZXNzLCBhbmQgd2Ug
bmVlZCB0bw0Kc29tZXdoZXJlIGVuY29kZSB3aGljaCBmbGFncyB5b3UgbmVlZCB0byB1c2Ugd2l0
aCBlYWNoIHN5bWxpbmsuDQoNCkJ1dCBJIGFsc28gc2VlIHRoZSBhcmd1bWVudCB0aGF0IHRoZXJl
J3MgYSBiaXQgYSBjb21iaW5hdG9yaWFsIGV4cGxvc2lvbg0KcG9zc2libGUuIFNvIEkgZ3Vlc3Mg
dGhlIHF1ZXN0aW9uIGlzIHdoZXJlIHdlIHdhbnQgdG8gaGFuZGxlIGl0IC4uLg0KDQpBbHNvIHdv
bmRlcmluZyB3aGV0aGVyIHdlIHNob3VsZCBnZXQgdGhlIHN5bWxpbmsvYWxsb2NhdG9yIGlkZWEg
b2ZmIHRoZQ0KZ3JvdW5kIGZpcnN0LCBidXQgZ2l2ZW4gdGhhdCB0aGF0IGhhc24ndCBtb3ZlZCBp
biBhIGRlY2FkZSBpdCBtaWdodCBiZSB0b28NCm11Y2guIEJ1dCB0aGVuIHRoZSBxdWVzdGlvbiBp
cywgd2hhdCB1c2Vyc3BhY2UgYXJlIHdlIGdvaW5nIHRvIHVzZSBmb3IgYWxsDQp0aGVzZSBuZXcg
aGVhcHMgKG9yIGhlYXBzIHdpdGggbmV3IGZsYWdzKT8NCg0KQ2hlZXJzLCBTaW1hDQoNCi0tIA0K
RGFuaWVsIFZldHRlcg0KU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uDQpodHRw
Oi8vYmxvZy5mZndsbC5jaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 909D0A37B31
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2025 07:13:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53DD544973
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2025 06:13:10 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	by lists.linaro.org (Postfix) with ESMTPS id AC5E53F4DA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2025 06:13:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=W90hLdNS;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.222.53 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-86715793b1fso1130297241.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 16 Feb 2025 22:13:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739772786; x=1740377586; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MnZw/Q+2O7o0YRtcX5JOGAgQhTQPBSaQtuZqXRvPz8U=;
        b=W90hLdNSGhKqEhea3dWuq0gvrIgZVy3HGBD/pGVfT+V3GY7j6yoWodOWVdI3d/DRpp
         ShTRhF+O/TYogUJRwvhNQKfby4HUz/FCJohv6CZWbF96+KqVaHF1sGtq1WVI/8RvQCvC
         S3/nND4WdW870dPd4Q5gkuIe3cS+muWok6pFDMUPaciFhwU7PpTYowyGIK6fEzP/rLVr
         4S/9WiebI59vwwuZQ3GgvdlLO5cGyJ55sQXKnBiSdKCixOnTSHQ5Te6qP0vQEAtWKRr7
         DhXt3UVQtbL2+sjISvylNNPbLwGEjO8Slmk86KXiBT3Bsu5dP5kdJBswqKzSFAnEBu1v
         B/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739772786; x=1740377586;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MnZw/Q+2O7o0YRtcX5JOGAgQhTQPBSaQtuZqXRvPz8U=;
        b=jQb8zjdBlDJ8kpve6FGhPbDVT9TNBaQljrfLTjmr+X5JOv3Xkj678YpIZew/kz1Z+2
         yNaC3Js8VWUwP35LY5qCp02Kq4rjmNppkY4gke198V1T+ByxY0hVi/CfiLFaG6MeNl+6
         0mwc/eQqx5wr2vSvIt7h1NlcDHfJit+p5uoKI7ZfC3azkqNJytNxuv1fGZGeqTBBzlvf
         x+FR3qe5u+BNv21LVheYScaVJshxTOqfpHjh7pL78rOYUFBaJjvwOAjZUzZkF41qtmxO
         tglngnuZdP6pROKy2JacMKGhJuf7Tl1uZMG0jqSj2N5bgOQ+ZwGMdBj3tn1ESpuX7bBR
         Dzjw==
X-Forwarded-Encrypted: i=1; AJvYcCXvWmtsJTP8gW9ZxPJmHSA0WUeeedQF1EO0x7tj4Uazy3cpDT2RBEIy2OxYKNyJ6K0WElfNle1ZbuPPA/vF@lists.linaro.org
X-Gm-Message-State: AOJu0YwO9RHIE7sjrkgE/X97erFV9UOhe5K5GOwF66/5W3N72WHjufsw
	xGTeKvjrCw/XJja7p7lCNAP///sya/V+JuAVmIhsrLRCj8VEbUZpAwYgxNSa8sYeG2nwFtOhR+s
	YMZNrFRbVke45yBmr5TxJiHaIW8llG6kY6+Zi1GmM
X-Gm-Gg: ASbGnctVKBa35Z2ruFN1IIWSoxtTCihUTF+8GCBNV7wV7V8j9f/wFLGQR6g/HCKTe/5
	380JlCmR7seQc1Q182SmjhGkEGbi43dwJAz16GHB9eHJvjfgNUeQ+BSZ/4sbxy/6Wpf6WBvh42Q
	==
X-Google-Smtp-Source: AGHT+IHc7dJI6eafhkqnIan6daijofUVFUvH3V4pTfdEga1AHuyGIsGH9uwlauqjjjaAaHI1sy0aprZ+BW4OP8MJfMs=
X-Received: by 2002:a05:6102:c89:b0:4bb:eb4a:f9f2 with SMTP id
 ada2fe7eead31-4bd3fcc5af7mr3186375137.9.1739772786167; Sun, 16 Feb 2025
 22:13:06 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com> <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
 <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
 <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com>
 <CAHUa44Gs0D1fBD0=+EDgcQUMeDv4knci9trUkYEc1J98qFV7HQ@mail.gmail.com>
 <CAFA6WYOuTwRPEh3L7+hMyARB_E73xmp+OwhKyS-r4+ryS7=9sw@mail.gmail.com> <20250214164856.0d2ead8a@collabora.com>
In-Reply-To: <20250214164856.0d2ead8a@collabora.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 17 Feb 2025 11:42:55 +0530
X-Gm-Features: AWEUYZnqsQNR6HgNOQ-KCjeibuktCio21DDJEy1SbMXh6xWHOITZYYTdEw2pDRY
Message-ID: <CAFA6WYPc6EHQwcPuMZRm4C1P6SoDrCzEPUmju_meupB6NXQ1sg@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AC5E53F4DA
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.222.53:from];
	RCVD_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[];
	RBL_NIXSPAM_FAIL(0.00)[209.85.222.53:server fail];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,fooishbar.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: SQJL2X7GBQCTGNUTO5THA5NVYHW4JSJQ
X-Message-ID-Hash: SQJL2X7GBQCTGNUTO5THA5NVYHW4JSJQ
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, Daniel Stone <daniel@fooishbar.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SQJL2X7GBQCTGNUTO5THA5NVYHW4JSJQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAxNCBGZWIgMjAyNSBhdCAyMToxOSwgQm9yaXMgQnJlemlsbG9uDQo8Ym9yaXMuYnJl
emlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPg0KPiBPbiBGcmksIDE0IEZlYiAyMDI1IDE4
OjM3OjE0ICswNTMwDQo+IFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAbGluYXJvLm9yZz4gd3JvdGU6
DQo+DQo+ID4gT24gRnJpLCAxNCBGZWIgMjAyNSBhdCAxNTozNywgSmVucyBXaWtsYW5kZXIgPGpl
bnMud2lrbGFuZGVyQGxpbmFyby5vcmc+IHdyb3RlOg0KPiA+ID4NCj4gPiA+IEhpLA0KPiA+ID4N
Cj4gPiA+IE9uIFRodSwgRmViIDEzLCAyMDI1IGF0IDY6MznigK9QTSBEYW5pZWwgU3RvbmUgPGRh
bmllbEBmb29pc2hiYXIub3JnPiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4gSGksDQo+ID4gPiA+
DQo+ID4gPiA+IE9uIFRodSwgMTMgRmViIDIwMjUgYXQgMTU6NTcsIEplbnMgV2lrbGFuZGVyIDxq
ZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPiB3cm90ZToNCj4gPiA+ID4gPiBPbiBUaHUsIEZlYiAx
MywgMjAyNSBhdCAzOjA14oCvUE0gRGFuaWVsIFN0b25lIDxkYW5pZWxAZm9vaXNoYmFyLm9yZz4g
d3JvdGU6DQo+ID4gPiA+ID4gPiBCdXQganVzdCBiZWNhdXNlIFRFRSBpcyBvbmUgZ29vZCBiYWNr
ZW5kIGltcGxlbWVudGF0aW9uLCBkb2Vzbid0IG1lYW4NCj4gPiA+ID4gPiA+IGl0IHNob3VsZCBi
ZSB0aGUgdXNlcnNwYWNlIEFCSS4gV2h5IHNob3VsZCB1c2Vyc3BhY2UgY2FyZSB0aGF0IFRFRSBo
YXMNCj4gPiA+ID4gPiA+IG1lZGlhdGVkIHRoZSBhbGxvY2F0aW9uIGluc3RlYWQgb2YgaXQgYmVp
bmcgYSBwcmVkZWZpbmVkIHJhbmdlIHdpdGhpbg0KPiA+ID4gPiA+ID4gRFQ/DQo+ID4gPiA+ID4N
Cj4gPiA+ID4gPiBUaGUgVEVFIG1heSB2ZXJ5IHdlbGwgdXNlIGEgcHJlZGVmaW5lZCByYW5nZSB0
aGF0IHBhcnQgaXMgYWJzdHJhY3RlZA0KPiA+ID4gPiA+IHdpdGggdGhlIGludGVyZmFjZS4NCj4g
PiA+ID4NCj4gPiA+ID4gT2YgY291cnNlLiBCdXQgeW91IGNhbiBhbHNvIChhbmQgdGhpcyBoYXMg
YmVlbiBzaGlwcGVkIG9uIHJlYWwNCj4gPiA+ID4gZGV2aWNlcykgaGFuZGxlIHRoaXMgd2l0aG91
dCBhbnkgcGVyLWFsbG9jYXRpb24gVEVFIG5lZWRzIGJ5IHNpbXBseQ0KPiA+ID4gPiBhbGxvY2F0
aW5nIGZyb20gYSBtZW1vcnkgcmFuZ2Ugd2hpY2ggaXMgcHJlZGVmaW5lZCB3aXRoaW4gRFQuDQo+
ID4gPiA+DQo+ID4gPiA+IEZyb20gdGhlIHVzZXJzcGFjZSBwb2ludCBvZiB2aWV3LCB3aHkgc2hv
dWxkIHRoZXJlIGJlIG9uZSBBQkkgdG8NCj4gPiA+ID4gYWxsb2NhdGUgbWVtb3J5IGZyb20gYSBw
cmVkZWZpbmVkIHJhbmdlIHdoaWNoIGlzIGRlbGl2ZXJlZCBieSBEVCB0bw0KPiA+ID4gPiB0aGUg
a2VybmVsLCBhbmQgb25lIEFCSSB0byBhbGxvY2F0ZSBtZW1vcnkgZnJvbSBhIHByZWRlZmluZWQg
cmFuZ2UNCj4gPiA+ID4gd2hpY2ggaXMgbWVkaWF0ZWQgYnkgVEVFPw0KPiA+ID4NCj4gPiA+IFdl
IG5lZWQgc29tZSB3YXkgdG8gc3BlY2lmeSB0aGUgcHJvdGVjdGlvbiBwcm9maWxlIChvciB1c2Ug
Y2FzZSBhcw0KPiA+ID4gSSd2ZSBjYWxsZWQgaXQgaW4gdGhlIEFCSSkgcmVxdWlyZWQgZm9yIHRo
ZSBidWZmZXIuIFdoZXRoZXIgaXQncw0KPiA+ID4gZGVmaW5lZCBpbiBEVCBzZWVtcyBpcnJlbGV2
YW50Lg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gPiA+ICBXaGF0IGFkdmFudGFnZQ0KPiA+ID4g
PiA+ID4gZG9lcyB1c2Vyc3BhY2UgZ2V0IGZyb20gaGF2aW5nIHRvIGhhdmUgYSBkaWZmZXJlbnQg
Y29kZXBhdGggdG8gZ2V0IGENCj4gPiA+ID4gPiA+IGRpZmZlcmVudCBoYW5kbGUgdG8gbWVtb3J5
PyBXaGF0IGFib3V0IHg4Nj8NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBJIHRoaW5rIHRoaXMg
cHJvcG9zYWwgaXMgbG9va2luZyBhdCBpdCBmcm9tIHRoZSB3cm9uZyBkaXJlY3Rpb24uDQo+ID4g
PiA+ID4gPiBJbnN0ZWFkIG9mIHdvcmtpbmcgdXB3YXJkcyBmcm9tIHRoZSBpbXBsZW1lbnRhdGlv
biB0byB1c2Vyc3BhY2UsIHN0YXJ0DQo+ID4gPiA+ID4gPiB3aXRoIHVzZXJzcGFjZSBhbmQgd29y
ayBkb3dud2FyZHMuIFRoZSBpbnRlcmVzdGluZyBwcm9wZXJ0eSB0byBmb2N1cw0KPiA+ID4gPiA+
ID4gb24gaXMgYWxsb2NhdGluZyBtZW1vcnksIG5vdCB0aGF0IEVMMSBpcyBpbnZvbHZlZCBiZWhp
bmQgdGhlIHNjZW5lcy4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEZyb20gd2hhdCBJJ3ZlIGdhdGhl
cmVkIGZyb20gZWFybGllciBkaXNjdXNzaW9ucywgaXQgd2Fzbid0IG11Y2ggb2YgYQ0KPiA+ID4g
PiA+IHByb2JsZW0gZm9yIHVzZXJzcGFjZSB0byBoYW5kbGUgdGhpcy4gSWYgdGhlIGtlcm5lbCB3
ZXJlIHRvIHByb3ZpZGUgaXQNCj4gPiA+ID4gPiB2aWEgYSBkaWZmZXJlbnQgQUJJLCBob3cgd291
bGQgaXQgYmUgZWFzaWVyIHRvIGltcGxlbWVudCBpbiB0aGUNCj4gPiA+ID4gPiBrZXJuZWw/IEkg
dGhpbmsgd2UgbmVlZCBhbiBleGFtcGxlIHRvIHVuZGVyc3RhbmQgeW91ciBzdWdnZXN0aW9uLg0K
PiA+ID4gPg0KPiA+ID4gPiBJdCBpcyBhIHByb2JsZW0gZm9yIHVzZXJzcGFjZSwgYmVjYXVzZSB3
ZSBuZWVkIHRvIGV4cG9zZSBhY2NlcHRhYmxlDQo+ID4gPiA+IHBhcmFtZXRlcnMgZm9yIGFsbG9j
YXRpb24gdGhyb3VnaCB0aGUgZW50aXJlIHN0YWNrLiBJZiB5b3UgbG9vayBhdCB0aGUNCj4gPiA+
ID4gZG1hYnVmIGRvY3VtZW50YXRpb24gaW4gdGhlIGtlcm5lbCBmb3IgaG93IGJ1ZmZlcnMgc2hv
dWxkIGJlIGFsbG9jYXRlZA0KPiA+ID4gPiBhbmQgZXhjaGFuZ2VkLCB5b3UgY2FuIHNlZSB0aGUg
bmVnb3RpYXRpb24gZmxvdyBmb3IgbW9kaWZpZXJzLiBUaGlzDQo+ID4gPiA+IHBlcm1lYXRlcyB0
aHJvdWdoIEtNUywgRUdMLCBWdWxrYW4sIFdheWxhbmQsIEdTdHJlYW1lciwgYW5kIG1vcmUuDQo+
ID4gPg0KPiA+ID4gV2hhdCBkbWEtYnVmIHByb3BlcnRpZXMgYXJlIHlvdSByZWZlcnJpbmcgdG8/
DQo+ID4gPiBkbWFfaGVhcF9pb2N0bF9hbGxvY2F0ZSgpIGFjY2VwdHMgYSBmZXcgZmxhZ3MgZm9y
IHRoZSByZXN1bHRpbmcgZmlsZQ0KPiA+ID4gZGVzY3JpcHRvciBhbmQgbm8gZmxhZ3MgZm9yIHRo
ZSBoZWFwIGl0c2VsZi4NCj4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+IFN0YW5kYXJkaXNpbmcgb24g
aGVhcHMgYWxsb3dzIHVzIHRvIGFkZCB0aG9zZSBpbiBhIHNpbWlsYXIgd2F5Lg0KPiA+ID4NCj4g
PiA+IEhvdyB3b3VsZCB5b3Ugc29sdmUgdGhpcyB3aXRoIGhlYXBzPyBXb3VsZCB5b3UgdXNlIG9u
ZSBoZWFwIGZvciBlYWNoDQo+ID4gPiBwcm90ZWN0aW9uIHByb2ZpbGUgKHVzZSBjYXNlKSwgYWRk
IGhlYXBfZmxhZ3MsIG9yIGRvIGEgYml0IG9mIGJvdGg/DQo+DQo+IEkgd291bGQgc2F5IG9uZSBo
ZWFwIHBlci1wcm9maWxlLg0KPg0KDQpBbmQgdGhlbiBpdCB3b3VsZCBoYXZlIGEgcGVyIHZlbmRv
ciBtdWx0aXBsaWNhdGlvbiBmYWN0b3IgYXMgZWFjaA0KdmVuZG9yIGVuZm9yY2VzIG1lbW9yeSBy
ZXN0cmljdGlvbiBpbiBhIHBsYXRmb3JtIHNwZWNpZmljIG1hbm5lciB3aGljaA0Kd29uJ3Qgc2Nh
bGUuDQoNCj4gPg0KPiA+IENocmlzdGlhbiBnYXZlIGFuIGhpc3RvcmljYWwgYmFja2dyb3VuZCBo
ZXJlIFsxXSBhcyB0byB3aHkgdGhhdCBoYXNuJ3QNCj4gPiB3b3JrZWQgaW4gdGhlIHBhc3Qgd2l0
aCBETUEgaGVhcHMgZ2l2ZW4gdGhlIHNjYWxhYmlsaXR5IGlzc3Vlcy4NCj4gPg0KPiA+IFsxXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvZTk2N2UzODItNmNjYS00ZGVlLTgzMzMt
Mzk4OTJkNTMyZjcxQGdtYWlsLmNvbS8NCj4NCj4gSG0sIEkgZmFpbCB0byBzZWUgd2hlcmUgQ2hy
aXN0aWFuIGRpc21pc3MgdGhlIGRtYS1oZWFwcyBzb2x1dGlvbiBpbg0KPiB0aGlzIGVtYWlsLiBI
ZSBldmVuIHNheXM6DQo+DQo+ID4gSWYgdGhlIG1lbW9yeSBpcyBub3QgcGh5c2ljYWxseSBhdHRh
Y2hlZCB0byBhbnkgZGV2aWNlLCBidXQgcmF0aGVyIGp1c3QNCj4gbWVtb3J5IGF0dGFjaGVkIHRv
IHRoZSBDUFUgb3IgYSBzeXN0ZW0gd2lkZSBtZW1vcnkgY29udHJvbGxlciB0aGVuDQo+IGV4cG9z
ZSB0aGUgbWVtb3J5IGFzIERNQS1oZWFwIHdpdGggc3BlY2lmaWMgcmVxdWlyZW1lbnRzIChlLmcu
IGNlcnRhaW4NCj4gc2l6ZWQgcGFnZXMsIGNvbnRpZ3VvdXMsIHJlc3RyaWN0ZWQsIGVuY3J5cHRl
ZCwgLi4uKS4NCg0KSSBhbSBub3Qgc2F5aW5nIENocmlzdGlhbiBkaXNtaXNzZWQgRE1BIGhlYXBz
IGJ1dCByYXRoZXIgaG93DQpzY2FsYWJpbGl0eSBpcyBhbiBpc3N1ZS4gV2hhdCB3ZSBhcmUgcHJv
cG9zaW5nIGhlcmUgaXMgYSBnZW5lcmljDQppbnRlcmZhY2UgdmlhIFRFRSB0byB0aGUgZmlybXdh
cmUvVHJ1c3RlZCBPUyB3aGljaCBjYW4gcGVyZm9ybSBhbGwgdGhlDQpwbGF0Zm9ybSBzcGVjaWZp
YyBtZW1vcnkgcmVzdHJpY3Rpb25zLiBUaGlzIHNvbHV0aW9uIHdpbGwgc2NhbGUgYWNyb3NzDQp2
ZW5kb3JzLg0KDQo+DQo+ID4NCj4gPiA+DQo+ID4gPiA+IElmIHdlDQo+ID4gPiA+IGhhdmUgdG8g
YWRkIGRpZmZlcmVudCBhbGxvY2F0aW9uIG1lY2hhbmlzbXMsIHRoZW4gdGhlIGNvbXBsZXhpdHkN
Cj4gPiA+ID4gaW5jcmVhc2VzLCBwZXJtZWF0aW5nIG5vdCBvbmx5IGludG8gYWxsIHRoZSBkaWZm
ZXJlbnQgdXNlcnNwYWNlIEFQSXMsDQo+ID4gPiA+IGJ1dCBhbHNvIGludG8gdGhlIGRyaXZlcnMg
d2hpY2ggbmVlZCB0byBzdXBwb3J0IGV2ZXJ5IGRpZmZlcmVudA0KPiA+ID4gPiBhbGxvY2F0aW9u
IG1lY2hhbmlzbSBldmVuIGlmIHRoZXkgaGF2ZSBubyBvcGluaW9uIG9uIGl0IC0gZS5nLiBNYWxp
DQo+ID4gPiA+IGRvZXNuJ3QgY2FyZSBpbiBhbnkgd2F5IHdoZXRoZXIgdGhlIGFsbG9jYXRpb24g
Y29tZXMgZnJvbSBhIGhlYXAgb3INCj4gPiA+ID4gVEVFIG9yIEFDUEkgb3Igd2hhdGV2ZXIsIGl0
IGNhcmVzIG9ubHkgdGhhdCB0aGUgbWVtb3J5IGlzIHByb3RlY3RlZC4NCj4gPiA+ID4NCj4gPiA+
ID4gRG9lcyB0aGF0IGhlbHA/DQo+ID4gPg0KPiA+ID4gSSB0aGluayB5b3UncmUgbWlzc2luZyB0
aGUgc3RhZ2Ugd2hlcmUgYW4gdW5wcm90ZWN0ZWQgYnVmZmVyIGlzDQo+ID4gPiByZWNlaXZlZCBh
bmQgZGVjcnlwdGVkIGludG8gYSBwcm90ZWN0ZWQgYnVmZmVyLiBJZiB5b3UgdXNlIHRoZSBURUUg
Zm9yDQo+ID4gPiBkZWNyeXB0aW9uIG9yIHRvIGNvbmZpZ3VyZSB0aGUgaW52b2x2ZWQgZGV2aWNl
cyBmb3IgdGhlIHVzZSBjYXNlLCBpdA0KPiA+ID4gbWFrZXMgc2Vuc2UgdG8gbGV0IHRoZSBURUUg
YWxsb2NhdGUgdGhlIGJ1ZmZlcnMsIHRvby4gQSBURUUgZG9lc24ndA0KPiA+ID4gaGF2ZSB0byBi
ZSBhbiBPUyBpbiB0aGUgc2VjdXJlIHdvcmxkLCBpdCBjYW4gYmUgYW4gYWJzdHJhY3Rpb24gdG8N
Cj4gPiA+IHN1cHBvcnQgdGhlIHVzZSBjYXNlIGRlcGVuZGluZyBvbiB0aGUgZGVzaWduLiBTbyB0
aGUgcmVzdHJpY3RlZCBidWZmZXINCj4gPiA+IGlzIGFscmVhZHkgYWxsb2NhdGVkIGJlZm9yZSB3
ZSByZWFjaCBNYWxpIGluIHlvdXIgZXhhbXBsZS4NCj4gPiA+DQo+ID4gPiBBbGxvY2F0aW5nIHJl
c3RyaWN0ZWQgYnVmZmVycyBmcm9tIHRoZSBURUUgc3Vic3lzdGVtIHNhdmVzIHVzIGZyb20NCj4g
PiA+IG1haW50YWluaW5nIHByb3h5IGRtYS1idWYgaGVhcHMuDQo+DQo+IEhvbmVzdGx5LCB3aGVu
IEkgbG9vayBhdCBkbWEtaGVhcCBpbXBsZW1lbnRhdGlvbnMsIHRoZXkgc2VlbQ0KPiB0byBiZSB0
cml2aWFsIHNoZWxscyBhcm91bmQgZXhpc3RpbmcgKG1vcmUgY29tcGxleCkgYWxsb2NhdG9ycywg
YW5kIHRoZQ0KPiBib2lsZXIgcGxhdGUgWzFdIHRvIGV4cG9zZSBhIGRtYS1oZWFwIGlzIHJlbGF0
aXZlbHkgc21hbGwuIFRoZSBkbWEtYnVmDQo+IGltcGxlbWVudGF0aW9uLCB5b3UgYWxyZWFkeSBo
YXZlLCBzbyB3ZSdyZSB0YWxraW5nIGFib3V0IGEgaHVuZHJlZA0KPiBsaW5lcyBvZiBjb2RlIHRv
IG1haW50YWluLCB3aGljaCBzaG91bGRuJ3QgYmUgc2lnbmlmaWNhbnRseSBtb3JlIHRoYW4NCj4g
d2hhdCB5b3UgaGF2ZSBmb3IgdGhlIG5ldyBpb2N0bCgpIHRvIGJlIGhvbmVzdC4NCg0KSXQgd2ls
bCByYXRoZXIgYmUgcmVkdW5kYW50IHZlbmRvciBzcGVjaWZpYyBjb2RlIHVuZGVyIERNQSBoZWFw
cw0KY2FsbGluZyBpbnRvIGZpcm13YXJlL1RydXN0ZWQgT1MgdG8gZW5mb3JjZSBtZW1vcnkgcmVz
dHJpY3Rpb25zIGFzIHlvdQ0KY2FuIGxvb2sgaW50byBNZWRpYXRlayBleGFtcGxlIFsxXS4gV2l0
aCBURUUgc3Vic3lzdGVtIG1hbmFnaW5nIHRoYXQNCml0IHdvbid0IGJlIHRoZSBjYXNlIGFzIHdl
IHdpbGwgcHJvdmlkZSBhIGNvbW1vbiBhYnN0cmFjdGlvbiBmb3IgdGhlDQpjb21tdW5pY2F0aW9u
IHdpdGggdW5kZXJseWluZyBmaXJtd2FyZS9UcnVzdGVkIE9TLg0KDQpbMV0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8yMDI0MDUxNTExMjMwOC4xMDE3MS0xLXlvbmcu
d3VAbWVkaWF0ZWsuY29tLw0KDQo+IEFuZCBJJ2xsIGluc2lzdCBvbiB3aGF0DQo+IERhbmllbCBz
YWlkLCBpdCdzIGEgc21hbGwgcHJpY2UgdG8gcGF5IHRvIGhhdmUgYSBzdGFuZGFyZCBpbnRlcmZh
Y2UgdG8NCj4gZXhwb3NlIHRvIHVzZXJzcGFjZS4gSWYgZG1hLWhlYXBzIGFyZSBub3QgdXNlZCBm
b3IgdGhpcyBraW5kIHRoaW5ncywgSQ0KPiBob25lc3RseSB3b25kZXIgd2hhdCB0aGV5IHdpbGwg
YmUgdXNlZCBmb3IuLi4NCg0KTGV0J3MgdHJ5IG5vdCB0byBmb3JjZWZ1bGx5IGZpbmQgYSB1c2Ut
Y2FzZSBmb3IgRE1BIGhlYXBzIHdoZW4gdGhlcmUNCmlzIGEgYmV0dGVyIGFsdGVybmF0aXZlIGF2
YWlsYWJsZS4gSSBhbSBzdGlsbCBmYWlsaW5nIHRvIHNlZSB3aHkgeW91DQpkb24ndCBjb25zaWRl
ciBmb2xsb3dpbmcgYXMgYSBzdGFuZGFyZGlzZWQgdXNlci1zcGFjZSBpbnRlcmZhY2U6DQoNCiJX
aGVuIHVzZXItc3BhY2UgaGFzIHRvIHdvcmsgd2l0aCByZXN0cmljdGVkIG1lbW9yeSwgYXNrIFRF
RSBkZXZpY2UgdG8NCmFsbG9jYXRlIGl0Ig0KDQotU3VtaXQNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

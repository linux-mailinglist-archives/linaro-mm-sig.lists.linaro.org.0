Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A6047A35E5D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Feb 2025 14:07:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48AD744B0A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Feb 2025 13:07:43 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by lists.linaro.org (Postfix) with ESMTPS id 0552241260
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Feb 2025 13:07:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=JIixrskF;
	spf=pass (lists.linaro.org: domain of sumit.garg@linaro.org designates 209.85.219.50 as permitted sender) smtp.mailfrom=sumit.garg@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6e46f491275so33614826d6.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Feb 2025 05:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739538445; x=1740143245; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FNnj7+IGvRtmWRtdYlqf7RvYRLfXlCqJXD/wP+Mfkkw=;
        b=JIixrskFKvVYZNJnjoVGkqc/z9U7dbh1P+eOQ8cUjeblSK3cs+c1UumnafvrJIEpqV
         xEwDyZ68azzlecjPxwV37A99gW+296A+mu77SvdSp8GZrRGX1sUzuYo3Mxo6fJ/4/uGv
         QyZAIC76E7pSwgki/iB6QGBrUsmWhAiGPop2ENYjNRodFuaIGhqwbKeCfTmOMADGNpdz
         I2nZsAwizvAoxjmLXKY00a9K5WBo22+76dN2VeOuIg8EJJOaEa+MdUobFeL57husiGc7
         Jja94PAodHDpHiYo16JZlrWOHOne8oApDHz5+uKv1DD2J8CX507GgeDKTqPJN3gYCwV8
         tAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739538445; x=1740143245;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FNnj7+IGvRtmWRtdYlqf7RvYRLfXlCqJXD/wP+Mfkkw=;
        b=h9Gq2PraivolBu0KJHtvmhLUi29S2HfZ7tuVWOe4vAaTOCghYCERsgBQJku4jgeGhM
         S31Yxv7vx8SzrUiymCVIB4R56vj4KjXxQcGVYVvZ4tliaKn64qlVeHy4WDDM79zBrVbR
         yk0KqlcFWIUo6BXiWvHVi5ZnKzkreyajBVf/yr6SUdYbHG2YlSsI+3wMnVEx95p8Hq7q
         rYhRmnmLVY2BGDIIn2HZXvpM7kXNdsfTiqgir1lzXnX5d12O7kehMcChwIs+wLj38YKn
         1sFAJfqm2KOglFETuaa3o61gnjLbBKHhOjoTbCvye2/uSiYmjlQ/gEx5cy/6XCrE1zQM
         dnmA==
X-Forwarded-Encrypted: i=1; AJvYcCVScPWkHBGZ74RfNpC1DWc2wg2cdWpgUxw+p6nEfZzagI461yMpeIyAHH+lCa3GEJAGkYPhbvB1QJMFAuR8@lists.linaro.org
X-Gm-Message-State: AOJu0YytwgjkxKtMsG4UPkGgXcN8g3MBzx3hatMF//cYdzTsmDccg4td
	WhuBVLhMsus57mEKMgLCV3HgsS6hOULOabz6OxoXmPfUrNJJzsNVWevi/orJVUqVD64xYdT54jk
	fyR8vfNEmEK9oJYZBo3kXCq8NMkFn8n5uBu/iotkG
X-Gm-Gg: ASbGncumvyRSfvZGOwxGdxGSmHDxBdN2qRfr6pOn6mzWm4/D7wqXMgfM26cHOCjs5fW
	9tCC+gyBNeQoXGXAU/ruNrdW7G5g09JNQX7fIRP+wcwXmlzkSZ7oErEMJfPsRpZfY2Ib8RdggV1
	U=
X-Google-Smtp-Source: AGHT+IE3ByM7DSgjLBAaQUp9tqk81OqGvrRN0VTqQ2J9pH/WZcBHm5+t6oEWmrDoJ+W5s9rNaAD7/fQhaTsa/R2yq4c=
X-Received: by 2002:a05:6214:469c:b0:6e6:6225:a907 with SMTP id
 6a1803df08f44-6e66225a975mr79026126d6.31.1739538445485; Fri, 14 Feb 2025
 05:07:25 -0800 (PST)
MIME-Version: 1.0
References: <20241217100809.3962439-1-jens.wiklander@linaro.org>
 <20250212205613.4400a888@collabora.com> <CAFA6WYOaGEPj0xNEDBCoEmjJreEHChjQ2hyXRJ_CYoGhiBonfw@mail.gmail.com>
 <20250213093557.278f5d19@collabora.com> <CAFA6WYOJkSRsH-15QdqXNMd08Q=Dg4NkRd1Cr9LXA+5nozTF6g@mail.gmail.com>
 <20250213134008.4cbef142@collabora.com> <CAPj87rM5Y=-Jgf4mwukicF6Yb-vccn2fpG2X1jNq0upH2+cAEQ@mail.gmail.com>
 <CAHUa44G9hw-z6wzxg=HkVAxPKEW1yES5JTEqRWMvJUJAtcUDkQ@mail.gmail.com>
 <CAPj87rPHnME5Osgnf5-FSAu22mDpLj=dzvhi_NqEcOwr1ThgGw@mail.gmail.com> <CAHUa44Gs0D1fBD0=+EDgcQUMeDv4knci9trUkYEc1J98qFV7HQ@mail.gmail.com>
In-Reply-To: <CAHUa44Gs0D1fBD0=+EDgcQUMeDv4knci9trUkYEc1J98qFV7HQ@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Fri, 14 Feb 2025 18:37:14 +0530
X-Gm-Features: AWEUYZnJYqssuMMtIO5Ohg5UzNEocwYL0hODNzFGJUyN-biak0SnkML6hDkQjD8
Message-ID: <CAFA6WYOuTwRPEh3L7+hMyARB_E73xmp+OwhKyS-r4+ryS7=9sw@mail.gmail.com>
To: Jens Wiklander <jens.wiklander@linaro.org>, Daniel Stone <daniel@fooishbar.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0552241260
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.219.50:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	FREEMAIL_CC(0.00)[collabora.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,arm.com,google.com,amd.com,qti.qualcomm.com];
	R_DKIM_ALLOW(0.00)[linaro.org:s=google];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_NIXSPAM_FAIL(0.00)[209.85.219.50:query timed out];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.50:from];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: WBPW7MGR7OHLUTKQWPKMLITATXV6C5BS
X-Message-ID-Hash: WBPW7MGR7OHLUTKQWPKMLITATXV6C5BS
X-MailFrom: sumit.garg@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Florent Tomasin <florent.tomasin@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/6] TEE subsystem for restricted dma-buf allocations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WBPW7MGR7OHLUTKQWPKMLITATXV6C5BS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAxNCBGZWIgMjAyNSBhdCAxNTozNywgSmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFu
ZGVyQGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4gT24gVGh1LCBGZWIgMTMsIDIw
MjUgYXQgNjozOeKAr1BNIERhbmllbCBTdG9uZSA8ZGFuaWVsQGZvb2lzaGJhci5vcmc+IHdyb3Rl
Og0KPiA+DQo+ID4gSGksDQo+ID4NCj4gPiBPbiBUaHUsIDEzIEZlYiAyMDI1IGF0IDE1OjU3LCBK
ZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4gd3JvdGU6DQo+ID4gPiBP
biBUaHUsIEZlYiAxMywgMjAyNSBhdCAzOjA14oCvUE0gRGFuaWVsIFN0b25lIDxkYW5pZWxAZm9v
aXNoYmFyLm9yZz4gd3JvdGU6DQo+ID4gPiA+IEJ1dCBqdXN0IGJlY2F1c2UgVEVFIGlzIG9uZSBn
b29kIGJhY2tlbmQgaW1wbGVtZW50YXRpb24sIGRvZXNuJ3QgbWVhbg0KPiA+ID4gPiBpdCBzaG91
bGQgYmUgdGhlIHVzZXJzcGFjZSBBQkkuIFdoeSBzaG91bGQgdXNlcnNwYWNlIGNhcmUgdGhhdCBU
RUUgaGFzDQo+ID4gPiA+IG1lZGlhdGVkIHRoZSBhbGxvY2F0aW9uIGluc3RlYWQgb2YgaXQgYmVp
bmcgYSBwcmVkZWZpbmVkIHJhbmdlIHdpdGhpbg0KPiA+ID4gPiBEVD8NCj4gPiA+DQo+ID4gPiBU
aGUgVEVFIG1heSB2ZXJ5IHdlbGwgdXNlIGEgcHJlZGVmaW5lZCByYW5nZSB0aGF0IHBhcnQgaXMg
YWJzdHJhY3RlZA0KPiA+ID4gd2l0aCB0aGUgaW50ZXJmYWNlLg0KPiA+DQo+ID4gT2YgY291cnNl
LiBCdXQgeW91IGNhbiBhbHNvIChhbmQgdGhpcyBoYXMgYmVlbiBzaGlwcGVkIG9uIHJlYWwNCj4g
PiBkZXZpY2VzKSBoYW5kbGUgdGhpcyB3aXRob3V0IGFueSBwZXItYWxsb2NhdGlvbiBURUUgbmVl
ZHMgYnkgc2ltcGx5DQo+ID4gYWxsb2NhdGluZyBmcm9tIGEgbWVtb3J5IHJhbmdlIHdoaWNoIGlz
IHByZWRlZmluZWQgd2l0aGluIERULg0KPiA+DQo+ID4gRnJvbSB0aGUgdXNlcnNwYWNlIHBvaW50
IG9mIHZpZXcsIHdoeSBzaG91bGQgdGhlcmUgYmUgb25lIEFCSSB0bw0KPiA+IGFsbG9jYXRlIG1l
bW9yeSBmcm9tIGEgcHJlZGVmaW5lZCByYW5nZSB3aGljaCBpcyBkZWxpdmVyZWQgYnkgRFQgdG8N
Cj4gPiB0aGUga2VybmVsLCBhbmQgb25lIEFCSSB0byBhbGxvY2F0ZSBtZW1vcnkgZnJvbSBhIHBy
ZWRlZmluZWQgcmFuZ2UNCj4gPiB3aGljaCBpcyBtZWRpYXRlZCBieSBURUU/DQo+DQo+IFdlIG5l
ZWQgc29tZSB3YXkgdG8gc3BlY2lmeSB0aGUgcHJvdGVjdGlvbiBwcm9maWxlIChvciB1c2UgY2Fz
ZSBhcw0KPiBJJ3ZlIGNhbGxlZCBpdCBpbiB0aGUgQUJJKSByZXF1aXJlZCBmb3IgdGhlIGJ1ZmZl
ci4gV2hldGhlciBpdCdzDQo+IGRlZmluZWQgaW4gRFQgc2VlbXMgaXJyZWxldmFudC4NCj4NCj4g
Pg0KPiA+ID4gPiAgV2hhdCBhZHZhbnRhZ2UNCj4gPiA+ID4gZG9lcyB1c2Vyc3BhY2UgZ2V0IGZy
b20gaGF2aW5nIHRvIGhhdmUgYSBkaWZmZXJlbnQgY29kZXBhdGggdG8gZ2V0IGENCj4gPiA+ID4g
ZGlmZmVyZW50IGhhbmRsZSB0byBtZW1vcnk/IFdoYXQgYWJvdXQgeDg2Pw0KPiA+ID4gPg0KPiA+
ID4gPiBJIHRoaW5rIHRoaXMgcHJvcG9zYWwgaXMgbG9va2luZyBhdCBpdCBmcm9tIHRoZSB3cm9u
ZyBkaXJlY3Rpb24uDQo+ID4gPiA+IEluc3RlYWQgb2Ygd29ya2luZyB1cHdhcmRzIGZyb20gdGhl
IGltcGxlbWVudGF0aW9uIHRvIHVzZXJzcGFjZSwgc3RhcnQNCj4gPiA+ID4gd2l0aCB1c2Vyc3Bh
Y2UgYW5kIHdvcmsgZG93bndhcmRzLiBUaGUgaW50ZXJlc3RpbmcgcHJvcGVydHkgdG8gZm9jdXMN
Cj4gPiA+ID4gb24gaXMgYWxsb2NhdGluZyBtZW1vcnksIG5vdCB0aGF0IEVMMSBpcyBpbnZvbHZl
ZCBiZWhpbmQgdGhlIHNjZW5lcy4NCj4gPiA+DQo+ID4gPiBGcm9tIHdoYXQgSSd2ZSBnYXRoZXJl
ZCBmcm9tIGVhcmxpZXIgZGlzY3Vzc2lvbnMsIGl0IHdhc24ndCBtdWNoIG9mIGENCj4gPiA+IHBy
b2JsZW0gZm9yIHVzZXJzcGFjZSB0byBoYW5kbGUgdGhpcy4gSWYgdGhlIGtlcm5lbCB3ZXJlIHRv
IHByb3ZpZGUgaXQNCj4gPiA+IHZpYSBhIGRpZmZlcmVudCBBQkksIGhvdyB3b3VsZCBpdCBiZSBl
YXNpZXIgdG8gaW1wbGVtZW50IGluIHRoZQ0KPiA+ID4ga2VybmVsPyBJIHRoaW5rIHdlIG5lZWQg
YW4gZXhhbXBsZSB0byB1bmRlcnN0YW5kIHlvdXIgc3VnZ2VzdGlvbi4NCj4gPg0KPiA+IEl0IGlz
IGEgcHJvYmxlbSBmb3IgdXNlcnNwYWNlLCBiZWNhdXNlIHdlIG5lZWQgdG8gZXhwb3NlIGFjY2Vw
dGFibGUNCj4gPiBwYXJhbWV0ZXJzIGZvciBhbGxvY2F0aW9uIHRocm91Z2ggdGhlIGVudGlyZSBz
dGFjay4gSWYgeW91IGxvb2sgYXQgdGhlDQo+ID4gZG1hYnVmIGRvY3VtZW50YXRpb24gaW4gdGhl
IGtlcm5lbCBmb3IgaG93IGJ1ZmZlcnMgc2hvdWxkIGJlIGFsbG9jYXRlZA0KPiA+IGFuZCBleGNo
YW5nZWQsIHlvdSBjYW4gc2VlIHRoZSBuZWdvdGlhdGlvbiBmbG93IGZvciBtb2RpZmllcnMuIFRo
aXMNCj4gPiBwZXJtZWF0ZXMgdGhyb3VnaCBLTVMsIEVHTCwgVnVsa2FuLCBXYXlsYW5kLCBHU3Ry
ZWFtZXIsIGFuZCBtb3JlLg0KPg0KPiBXaGF0IGRtYS1idWYgcHJvcGVydGllcyBhcmUgeW91IHJl
ZmVycmluZyB0bz8NCj4gZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoKSBhY2NlcHRzIGEgZmV3IGZs
YWdzIGZvciB0aGUgcmVzdWx0aW5nIGZpbGUNCj4gZGVzY3JpcHRvciBhbmQgbm8gZmxhZ3MgZm9y
IHRoZSBoZWFwIGl0c2VsZi4NCj4NCj4gPg0KPiA+IFN0YW5kYXJkaXNpbmcgb24gaGVhcHMgYWxs
b3dzIHVzIHRvIGFkZCB0aG9zZSBpbiBhIHNpbWlsYXIgd2F5Lg0KPg0KPiBIb3cgd291bGQgeW91
IHNvbHZlIHRoaXMgd2l0aCBoZWFwcz8gV291bGQgeW91IHVzZSBvbmUgaGVhcCBmb3IgZWFjaA0K
PiBwcm90ZWN0aW9uIHByb2ZpbGUgKHVzZSBjYXNlKSwgYWRkIGhlYXBfZmxhZ3MsIG9yIGRvIGEg
Yml0IG9mIGJvdGg/DQoNCkNocmlzdGlhbiBnYXZlIGFuIGhpc3RvcmljYWwgYmFja2dyb3VuZCBo
ZXJlIFsxXSBhcyB0byB3aHkgdGhhdCBoYXNuJ3QNCndvcmtlZCBpbiB0aGUgcGFzdCB3aXRoIERN
QSBoZWFwcyBnaXZlbiB0aGUgc2NhbGFiaWxpdHkgaXNzdWVzLg0KDQpbMV0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvZHJpLWRldmVsL2U5NjdlMzgyLTZjY2EtNGRlZS04MzMzLTM5ODkyZDUzMmY3
MUBnbWFpbC5jb20vDQoNCj4NCj4gPiBJZiB3ZQ0KPiA+IGhhdmUgdG8gYWRkIGRpZmZlcmVudCBh
bGxvY2F0aW9uIG1lY2hhbmlzbXMsIHRoZW4gdGhlIGNvbXBsZXhpdHkNCj4gPiBpbmNyZWFzZXMs
IHBlcm1lYXRpbmcgbm90IG9ubHkgaW50byBhbGwgdGhlIGRpZmZlcmVudCB1c2Vyc3BhY2UgQVBJ
cywNCj4gPiBidXQgYWxzbyBpbnRvIHRoZSBkcml2ZXJzIHdoaWNoIG5lZWQgdG8gc3VwcG9ydCBl
dmVyeSBkaWZmZXJlbnQNCj4gPiBhbGxvY2F0aW9uIG1lY2hhbmlzbSBldmVuIGlmIHRoZXkgaGF2
ZSBubyBvcGluaW9uIG9uIGl0IC0gZS5nLiBNYWxpDQo+ID4gZG9lc24ndCBjYXJlIGluIGFueSB3
YXkgd2hldGhlciB0aGUgYWxsb2NhdGlvbiBjb21lcyBmcm9tIGEgaGVhcCBvcg0KPiA+IFRFRSBv
ciBBQ1BJIG9yIHdoYXRldmVyLCBpdCBjYXJlcyBvbmx5IHRoYXQgdGhlIG1lbW9yeSBpcyBwcm90
ZWN0ZWQuDQo+ID4NCj4gPiBEb2VzIHRoYXQgaGVscD8NCj4NCj4gSSB0aGluayB5b3UncmUgbWlz
c2luZyB0aGUgc3RhZ2Ugd2hlcmUgYW4gdW5wcm90ZWN0ZWQgYnVmZmVyIGlzDQo+IHJlY2VpdmVk
IGFuZCBkZWNyeXB0ZWQgaW50byBhIHByb3RlY3RlZCBidWZmZXIuIElmIHlvdSB1c2UgdGhlIFRF
RSBmb3INCj4gZGVjcnlwdGlvbiBvciB0byBjb25maWd1cmUgdGhlIGludm9sdmVkIGRldmljZXMg
Zm9yIHRoZSB1c2UgY2FzZSwgaXQNCj4gbWFrZXMgc2Vuc2UgdG8gbGV0IHRoZSBURUUgYWxsb2Nh
dGUgdGhlIGJ1ZmZlcnMsIHRvby4gQSBURUUgZG9lc24ndA0KPiBoYXZlIHRvIGJlIGFuIE9TIGlu
IHRoZSBzZWN1cmUgd29ybGQsIGl0IGNhbiBiZSBhbiBhYnN0cmFjdGlvbiB0bw0KPiBzdXBwb3J0
IHRoZSB1c2UgY2FzZSBkZXBlbmRpbmcgb24gdGhlIGRlc2lnbi4gU28gdGhlIHJlc3RyaWN0ZWQg
YnVmZmVyDQo+IGlzIGFscmVhZHkgYWxsb2NhdGVkIGJlZm9yZSB3ZSByZWFjaCBNYWxpIGluIHlv
dXIgZXhhbXBsZS4NCj4NCj4gQWxsb2NhdGluZyByZXN0cmljdGVkIGJ1ZmZlcnMgZnJvbSB0aGUg
VEVFIHN1YnN5c3RlbSBzYXZlcyB1cyBmcm9tDQo+IG1haW50YWluaW5nIHByb3h5IGRtYS1idWYg
aGVhcHMuDQoNCisxDQoNCi1TdW1pdA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

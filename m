Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6299B8BB808
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  4 May 2024 01:14:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66CED4478E
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:14:07 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by lists.linaro.org (Postfix) with ESMTPS id B110F3F06F
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 23:13:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="Ehi/WMuZ";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.169 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-de596c078c2so231674276.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 May 2024 16:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1714778037; x=1715382837; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bx7eA7+wetLZJ6nYBQUWynRRLR0EZ2R8LfNtwQgm3Q8=;
        b=Ehi/WMuZbdgK7fThoEg3YbdZLBAzV16MTTkL4oPaPEDePd3L/2f65gwGzKtTy4plH0
         Xybym52QMFKMxvlo/EbxfPumV18yJ+pZPfSfKd/KXaWzUMo6VFLwSqtBiPLIbY1cHL9R
         UuXa8kJ9bHIoqJq1LOnXSWNWXMQjc8cDlWcOk2AXYIOKWNpE/KZc+ix70mKmMpzy3/8+
         fBLUNgC/YfBQoAij8ySYcEgPxeDfGsfQHFLNgOyJQk/7ch8jj6CjvFZMCSzWoruyLgKn
         QBUC6EpEB8AXXz9c5/hEuayGGPCyJf/qW9VOe+uKEQLP8tUSvLTG/5ZhzVVYpxfdzWKt
         uxKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714778037; x=1715382837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bx7eA7+wetLZJ6nYBQUWynRRLR0EZ2R8LfNtwQgm3Q8=;
        b=MdrIzmIqviytIPaPLFLQ39Exj/IAqDYgnBtdFoO10m0WeesIVSnJ+DkR6UcMm4QSBi
         vEiCvU/pZrl4xYZipzYv0B4dr8MCHjqUxMfW1np+mDp55wUCOQFNPFvZtMTYPdSnon1Q
         5v6/1vIuoUS30nqKXLeg9nsipOEAw5r2JjJpKGbolP1wdaibzsxr0FKW+LuSY9w9HXf9
         bSYR8vQ+Klacfxv+59UY2vnA2mLtoKsV8A5fOzjYWrARLEJLgeFNp27YExf66DFpncKZ
         ygUidbJ1CvYOV3GD9IllBU6uAnXMGLpqObDBCl9/7alhGqFy77H0QvfpL2QntsCyKQ90
         AEDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRtMd6pi/a/DXDp7nDF5Yaw/U/mI70dxtWR00NG/aeXvxO5d2jX9R2mXHb5mZ6FVHie0mOsIoQxz/UeI9Vf03RRpFVqdOPuO2T0u2rT4c=
X-Gm-Message-State: AOJu0YxYIhIDO6T3OSR3Tho7vNzjvBkJMFMXij4fVZ83+L5v9rQDufgY
	XT3b+x7wfRj1U/v250kCSpnpGS07JmL4kQBYyWr08pPxUpn5F5QUT9lz8/2nePIIN6xo4RbPCXa
	W8fhoXNIty4GaonmkBxrnOHEshgUy7zeI/kHP
X-Google-Smtp-Source: AGHT+IEs7oOCdBwjSrckkdk5ke5Sbh3Li4ral7+Wxq1yd2IFmVkyGkWEZTAmKm+Qy4XRPd/wxXjPvJxVkWCooTOeuN0=
X-Received: by 2002:a05:6902:248a:b0:dd0:76e:d630 with SMTP id
 ds10-20020a056902248a00b00dd0076ed630mr5363668ybb.53.1714778036906; Fri, 03
 May 2024 16:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240327022903.776-1-justinjiang@vivo.com> <5cf29162-a29d-4af7-b68e-aac5c862d20e@amd.com>
 <cc7defae-60c1-4cc8-aee5-475d4460e574@vivo.com> <23375ba8-9558-4886-9c65-af9fe8e8e8b6@amd.com>
 <CABdmKX2Kf4ZmVzv3LGTz2GyP-9+rAtFY9hSAxdkrwK8mG0gDvQ@mail.gmail.com>
 <e55cad9b-a361-4d27-a351-f6a4f5b8b734@vivo.com> <40ac02bb-efe2-4f52-a4f2-7b56d9b93d2c@amd.com>
 <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com> <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com> <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
 <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
In-Reply-To: <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 3 May 2024 16:13:44 -0700
Message-ID: <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
To: Charan Teja Kalla <quic_charante@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B110F3F06F
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.169:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.219.169:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: UXYKE7FNJNZCWOL2ISUPY2BLAWMTMJNH
X-Message-ID-Hash: UXYKE7FNJNZCWOL2ISUPY2BLAWMTMJNH
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, opensource.kernel@vivo.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UXYKE7FNJNZCWOL2ISUPY2BLAWMTMJNH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBNYXkgMywgMjAyNCBhdCA2OjQw4oCvQU0gQ2hhcmFuIFRlamEgS2FsbGENCjxxdWlj
X2NoYXJhbnRlQHF1aWNpbmMuY29tPiB3cm90ZToNCj4NCj4gVGhhbmtzIENocmlzdGlhbi9USiBm
b3IgdGhlIGlucHV0cyEhDQo+DQo+IE9uIDQvMTgvMjAyNCAxMjoxNiBQTSwgQ2hyaXN0aWFuIEvD
tm5pZyB3cm90ZToNCj4gPiBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoZSBFUE9MTCBob2xkcyBhIHJl
ZmVyZW5jZSB0byB0aGUgZmlsZXMgaXQNCj4gPiBjb250YWlucy4gU28gaXQgaXMgcGVyZmVjdGx5
IHZhbGlkIHRvIGFkZCB0aGUgZmlsZSBkZXNjcmlwdG9yIHRvIEVQT0xMDQo+ID4gYW5kIHRoZW4g
Y2xvc2UgaXQuDQo+ID4NCj4gPiBJbiB0aGlzIGNhc2UgdGhlIGZpbGUgd29uJ3QgYmUgY2xvc2Vk
LCBidXQgYmUga2VwdCBhbGl2ZSBieSBpdCdzDQo+ID4gcmVmZXJlbmNlIGluIHRoZSBFUE9MTCBm
aWxlIGRlc2NyaXB0b3IuDQo+DQo+IEkgYW0gbm90IHNlZWluZyB0aGF0IGFkZGluZyBhICdmZCcg
aW50byB0aGUgZXBvbGwgbW9uaXRvcmluZyBsaXN0IHdpbGwNCj4gaW5jcmVhc2UgaXRzIHJlZmNv
dW50LiAgQ29uZmlybWVkIGJ5IHdyaXRpbmcgYSB0ZXN0Y2FzZSB0aGF0IGp1c3QgZG8NCj4gb3Bl
biArIEVQT0xMX0NUTF9BREQgYW5kIHNlZSB0aGUgL3Byb2MvLi4vZmRpbmZvIG9mIGVwb2xsIGZk
KEFkZGVkDQo+IGZpbGVfY291bnQoKSBpbmZvIHRvIHRoZSBvdXRwdXQpDQo+ICMgY2F0IC9wcm9j
LzEzNi9mZGluZm8vMw0KPiBwb3M6ICAgIDANCj4gZmxhZ3M6ICAwMg0KPiBtbnRfaWQ6IDE0DQo+
IGlubzogICAgMTA0MQ0KPiB0ZmQ6ICAgICAgICA0IGV2ZW50czogICAgICAgMTkgZGF0YTogICAg
ICAgICAgICAgICAgNCAgcG9zOjAgaW5vOjgxIHNkZXY6NQ0KPiByZWZjb3VudDogMTwtLSBUaGUg
ZmQgYWRkZWQgdG8gdGhlIGVwb2xsIG1vbml0b3JpbmcgaXMgc3RpbGwgMShzYW1lIGFzDQo+IG9w
ZW4gZmlsZSByZWZjb3VudCkNCj4NCj4gRnJvbSB0aGUgY29kZSB0b28sIEkgZG9uJ3Qgc2VlIGEg
ZmlsZSBhZGRlZCBpbiB0aGUgZXBvbGwgbW9uaXRvcmluZyBsaXN0DQo+IHdpbGwgaGF2ZSBhbiBl
eHRyYSByZWZjb3VudCBidXQgbW9tZW50YXJpbHkgKHdoZXJlIGl0IGluY3JlYXNlcyB0aGUNCj4g
cmVmY291bnQgb2YgdGFyZ2V0IGZpbGUsIGFkZCBpdCB0byB0aGUgcmJ0cmVlIG9mIHRoZSBlcG9s
bCBjb250ZXh0IGFuZA0KPiB0aGVuIGRlY3JlYXNpbmcgdGhlIGZpbGUgcmVmY291bnQpOg0KPiBk
b19lcG9sbF9jdGwoKToNCj4gICAgICAgICBmID0gZmRnZXQoZXBmZCk7DQo+ICAgICAgICAgdGYg
PSBmZGdldChmZCk7DQo+ICAgICAgICAgZXBvbGxfbXV0ZXhfbG9jaygmZXAtPm10eCkNCj4gICAg
ICAgICBFUE9MTF9DVExfQUREOg0KPiAgICAgICAgICAgICAgICAgZXBfaW5zZXJ0KGVwLCBlcGRz
LCB0Zi5maWxlLCBmZCwgZnVsbF9jaGVjayk7IC8vIEFkZGVkIHRvIHRoZSBlcG9sbA0KPiBtb25p
dG9yaW5nIHJiIHRyZWUgbGlzdCBhcyBlcGl0ZW0uDQo+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZl
cC0+bXR4KTsNCj4gICAgICAgICBmZHB1dCh0Zik7DQo+ICAgICAgICAgZmRwdXQoZik7DQo+DQo+
DQo+IE5vdCBzdXJlIElmIGkgYW0gY29tcGxldGVseSBtaXN0YWtlbiB3aGF0IHlvdSdyZSBzYXlp
bmcgaGVyZS4NCj4NCj4gPiBUaGUgZnMgbGF5ZXIgd2hpY2ggY2FsbHMgZG1hX2J1Zl9wb2xsKCkg
c2hvdWxkIG1ha2Ugc3VyZSB0aGF0IHRoZSBmaWxlDQo+ID4gY2FuJ3QgZ28gYXdheSB1bnRpbCB0
aGUgZnVuY3Rpb24gcmV0dXJucy4NCj4gPg0KPiA+IFRoZW4gaW5zaWRlIGRtYV9idWZfcG9sbCgp
IHdlIGFkZCBhbm90aGVyIHJlZmVyZW5jZSB0byB0aGUgZmlsZSB3aGlsZQ0KPiA+IGluc3RhbGxp
bmcgdGhlIGNhbGxiYWNrOg0KPiA+DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgLyogUGFp
cmVkIHdpdGggZnB1dCBpbiBkbWFfYnVmX3BvbGxfY2IgKi8NCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICBnZXRfZmlsZShkbWFidWYtPmZpbGUpOyBObywgZXhhY3RseSB0aGF0IGNhbid0DQo+
ID4gaGFwcGVuIGVpdGhlci4NCj4gPg0KPg0KPiBJIGFtIG5vdCBxdWl0ZSBjb21mb3J0YWJsZSB3
aXRoIGVwb2xsIGludGVybmFscyBidXQgSSB0aGluayBiZWxvdyByYWNlDQo+IGlzIHBvc3NpYmxl
IHdoZXJlICJUaGUgJ2ZpbGUnIHBhc3NlZCB0byBkbWFfYnVmX3BvbGwoKSBpcyBwcm9wZXIgYnV0
DQo+IC0+Zl9jb3VudCA9PSAwLCB3aGljaCBpcyBpbmRpY2F0aW5nIHRoYXQgYSBwYXJhbGxlbCBm
cmVlaW5nIGlzDQo+IGhhcHBlbmluZyIuIFNvLCB3ZSBzaG91bGQgY2hlY2sgdGhlIGZpbGUtPmZf
Y291bnQgdmFsdWUgYmVmb3JlIHRha2luZw0KPiB0aGUgcmVmY291bnQuDQo+DQo+IChBICdmZCcg
cmVnaXN0ZXJlZCBmb3IgdGhlIGVwb2xsIG1vbml0b3JpbmcgbGlzdCBpcyBtYWludGFpbmVkIGFz
DQo+ICdlcGl0ZW0oZXBpKScgaW4gdGhlIHJidHJlZSBvZiAnZXZlbnRwb2xsKGVwLCBjYWxsZWQg
YXMgZXBvbGwgY29udGV4dCkuDQo+DQo+IGVwb2xsX3dhaXQoKSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgX19mcHV0KCkoYXMgZmlsZS0+Zl9jb3VudD0wKQ0KPiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCj4gYSkgZXBfcG9sbF9jYWxsYmFjaygpOg0KPiAgICAgIElzIHRoZSB3YWl0cXVldWUgZnVu
Y3Rpb24NCj4gICAgY2FsbGVkIHdoZW4gc2lnbmFsZWQgb24gdGhlDQo+ICAgIHdhaXRfcXVldWVf
aGVhZF90IG9mIHRoZSByZWdpc3RlcmVkDQo+ICAgIHBvbGwoKSBmdW5jdGlvbi4NCj4NCj4gICAg
MSkgSXQgbGlua3MgdGhlICdlcGknIHRvIHRoZSByZWFkeSBsaXN0DQo+ICAgICAgIG9mICdlcCc6
DQo+ICAgICAgICBpZiAoIWVwX2lzX2xpbmtlZChlcGkpKQ0KPiAgICAgICAgICBsaXN0X2FkZF90
YWlsX2xvY2tsZXNzKCZlcGktPnJkbGxpbmssDQo+ICAgICAgICAgICAgICAgICAmZXAtPnJkbGxp
c3QpDQo+DQo+ICAgIDIpIHdha2VfdXAoJmVwLT53cSk7DQo+ICAgICAgICAgV2FrZSB1cCB0aGUg
cHJvY2VzcyB3YWl0aW5nDQo+ICAgICAgICAgb24gZXBvbGxfd2FpdCgpIHRoYXQgZW5kdXANCj4g
ICAgICAgICBpbiBlcF9wb2xsLg0KPg0KPg0KPiBiKSBlcF9wb2xsKCk6DQo+ICAgICAxKSB3aGls
ZSAoMSkgew0KPiAgICAgICAgIGVhdmFpbCA9IGVwX2V2ZW50c19hdmFpbGFibGUoZXApOw0KPiAg
ICAgICAgIChjaGVja3MgZXAtPnJkbGlzdCkNCj4gICAgICAgICBlcF9zZW5kX2V2ZW50cyhlcCk7
DQo+ICAgICAgICAgKG5vdGlmeSB0aGUgZXZlbnRzIHRvIHVzZXIpDQo+ICAgICB9DQo+ICAgICAo
ZXBvbGxfd2FpdCgpIGNhbGxpbmcgcHJvY2VzcyBnZXRzDQo+ICAgICAgd29rZW4gdXAgZnJvbSBh
LjIgYW5kIHByb2Nlc3MgdGhlDQo+ICAgICAgZXZlbnRzIHJhaXNlZCBhZGRlZCB0byByZGxpc3Qg
aW4gYS4xKQ0KPg0KPiAgICAyKSBlcF9zZW5kX2V2ZW50cygpOg0KPiAgICAgICAgIG11dGV4X2xv
Y2soJmVwLT5tdHgpOw0KPiAgICAgICAgICgqKiBUaGUgc3luYyBsb2NrIGlzIHRha2VuICoqKQ0K
PiAgICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShlcGksIHRtcCwNCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgJnR4bGlzdCwgcmRsbGluaykgew0KPiAgICAgICAgICAgICBsaXN0X2Rl
bF9pbml0KCZlcGktPnJkbGxpbmspOw0KPiAgICAgICAgICAgICByZXZlbnRzID0gZXBfaXRlbV9w
b2xsKGVwaSwgJnB0LCAxKQ0KPiAgICAgICAgICAgICAodmZzX3BvbGwoKS0tPi4uLmZfb3AtPnBv
bGwoPWRtYV9idWZfcG9sbCkNCj4gICAgICAgICB9DQo+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZl
cC0+bXR4KQ0KPiAgICAgICAgICgqKnJlbGVhc2UgdGhlIGxvY2suKiopDQo+DQo+ICAgICAgICAg
KEFzIHBhcnQgb2YgcHJvY2Vzc2lvbiBvZiBldmVudHMsDQo+ICAgICAgICAgIGVhY2ggZXBpdGVt
IGlzIHJlbW92ZWQgZnJvbSByZGxpc3QNCj4gICAgICAgICAgYW5kIGNhbGwgdGhlIGZfb3AtPnBv
bGwoKSBvZiBhIGZpbGUNCj4gICAgICAgICAgd2hpY2ggd2lsbCBlbmR1cCBpbiBkbWFfYnVmX3Bv
bGwoKSkNCj4NCj4gICAgMykgZG1hX2J1Zl9wb2xsKCk6DQo+ICAgICAgICAgZ2V0X2ZpbGUoZG1h
YnVmLT5maWxlKTsNCj4gICAgICAgICAoKiogZl9jb3VudCBjaGFuZ2VkIGZyb20gMC0+MSAqKikN
Cj4gICAgICAgICBkbWFfYnVmX3BvbGxfYWRkX2NiKHJlc3YsIHRydWUsIGRjYik6DQo+ICAgICAg
ICAgKHJlZ2lzdGVycyBkbWFfYnVmX3BvbGxfY2IoKSBhZ2FpbnN0IGZlbmNlKQ0KPg0KPg0KPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGMpIGV2ZW50cG9sbF9yZWxlYXNlX2ZpbGUo
KToNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtdXRleF9sb2NrKCZlcC0+
bXR4KTsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfX2VwX3JlbW92ZShl
cCwgZXBpLCB0cnVlKToNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtdXRl
eF91bmxvY2soJmVwLT5tdHgpOw0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
KF9fZXBfcmVtb3ZlKCkgd2lsbCByZW1vdmUgdGhlDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJ2VwaScgZnJvbSByYnRyZWUgYW5kIGlmIHByZXNlbnQNCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBmcm9tIHJkbGlzdCBhcyB3ZWxsKQ0KPg0KPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGQpIGZpbGVfZnJlZShmaWxlKSwgZnJlZSB0aGUg
J2ZpbGUnLg0KPg0KPiBlKSBkbWFfYnVmX3BvbGxfY2I6DQo+ICAvKiBQYWlyZWQgd2l0aCBnZXRf
ZmlsZSBpbiBkbWFfYnVmX3BvbGwgKi8NCj4gIGZwdXQoZG1hYnVmLT5maWxlKTsNCj4gIChmX2Nv
dW50IGNoYW5nZWQgZnJvbSAxLT4wLCB3aGVyZQ0KPiAgIHdlIHRyeSB0byBmcmVlIHRoZSAnZmls
ZScgYWdhaW4NCj4gICB3aGljaCBpcyBVQUYvZG91YmxlIGZyZWUpLg0KPg0KPg0KPg0KPiBJbiB0
aGUgYWJvdmUgcmFjZSwgSWYgYykgZ2V0cyBjYWxsZWQgZmlyc3QsIHRoZW4gdGhlICdlcGknIGlz
IHJlbW92ZWQNCj4gZnJvbSBib3RoIHJidHJlZSBhbmQgJ3JkbGluaycgdW5kZXIgZXAtPm10eCBs
b2NrIHRodXMgYi4yIGRvbid0IGVuZCB1cA0KPiBpbiBjYWxsaW5nIHRoZSAtPnBvbGwoKSBhcyBp
dCBkb24ndCBzZWUgdGhpcyBldmVudCBpbiB0aGUgcmRsaXN0Lg0KPg0KPiBSYWNlIG9ubHkgZXhp
c3QgSWYgYi4yIGV4ZWN1dGVzIGZpcnN0LCB3aGVyZSBpdCB3aWxsIGNhbGwgZG1hX2J1Zl9wb2xs
DQo+IHdpdGggX192YWxpZCAnc3RydWN0IGZpbGUnIHVuZGVyIGVwLT5tdHggYnV0IGl0cyByZWZj
b3VudCBpcyBhbHJlYWR5DQo+IGNvdWxkIGhhdmUgYmVlbiB6ZXJvX18uIExhdGVyIFdoZW4gZSkg
aXMgZXhlY3V0ZWQsIGl0IHR1cm5zIGludG8gZG91YmxlDQo+IGZyZWUgb2YgdGhlICdmaWxlJyBz
dHJ1Y3R1cmUuDQo+DQo+IElmIHlvdSdyZSBjb252aW5jZWQgd2l0aCB0aGUgYWJvdmUgcmFjZSwg
c2hvdWxkIHRoZSBmaXggaGVyZSB3aWxsIGJlDQo+IHRoaXMgc2ltcGxlIGNoZWNrOg0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCj4gaW5kZXggOGZlNWFhNjdiMTY3Li5lNDY5ZGQ5Mjg4Y2MNCj4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+
IEBAIC0yNDAsNiArMjQwLDEwIEBAIHN0YXRpYyBfX3BvbGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0
IGZpbGUgKmZpbGUsDQo+IHBvbGxfdGFibGUgKnBvbGwpDQo+ICAgICAgICAgc3RydWN0IGRtYV9y
ZXN2ICpyZXN2Ow0KPiAgICAgICAgIF9fcG9sbF90IGV2ZW50czsNCj4NCj4gKyAgICAgICAvKiBD
aGVjayBwYXJhbGxlbCBmcmVlaW5nIG9mIGZpbGUgKi8NCj4gKyAgICAgICBpZiAoIWZpbGVfY291
bnQoZmlsZSkpDQo+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsNCj4gKw0KPg0KPiBUaGFua3Ms
DQo+IENoYXJhbg0KDQpIaSBDaGFyYW4sDQoNCkl0IGxvb2tzIGxpa2UgYSBzaW1pbGFyIGNvbmNs
dXNpb24gYWJvdXQgZXBvbGwgd2FzIHJlYWNoZWQgYXQ6DQpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvYTg3ZDdlZjgtMmM1OS00ZGM1LWJhMGEtYjgyMWQxZWZmYzcyQGFtZC5jb20vDQoNCkkg
YWdyZWUgd2l0aCBDaHJpc3RpYW4gdGhhdCBpdCBzaG91bGQgbm90IGJlIHBvc3NpYmxlIGZvciB0
aGUgZmlsZSB0bw0KYmUgZnJlZWQgd2hpbGUgaW5zaWRlIGRtYV9idWZfcG9sbC4gQXNpZGUgZnJv
bSBjYXVzaW5nIHByb2JsZW1zIGluDQpkbWFfYnVmX3BvbGwsIGVwX2l0ZW1fcG9sbCBpdHNlbGYg
d291bGQgaGF2ZSBpc3N1ZXMgZGVyZWZlcmVuY2luZyB0aGUNCmZyZWVkIGZpbGUgcG9pbnRlci4N
Cg0KQ2hyaXN0aWFuJ3MgcGF0Y2ggdGhlcmUgbWFrZXMgbWUgd29uZGVyIGFib3V0IHdoYXQgdGhl
IGVwb2xsIG1hbiBwYWdlDQpzYXlzIGFib3V0IGNsb3NpbmcgZmlsZXMuDQoiV2lsbCBjbG9zaW5n
IGEgZmlsZSBkZXNjcmlwdG9yIGNhdXNlIGl0IHRvIGJlIHJlbW92ZWQgZnJvbSBhbGwgZXBvbGwN
CmludGVyZXN0IGxpc3RzPyIgQW5zd2VyOiBZZXMNCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L3RyZWUvbWFuL21hbjcvZXBvbGwuNyNu
NDQyDQoNCkl0IGxvb2tzIGxpa2UgZXZlbnRwb2xsX3JlbGVhc2VfZmlsZSBpcyByZXNwb25zaWJs
ZSBmb3IgdGhhdCwgYnV0IGlmDQp0aGUgZXBpdGVtIGlzIGNoYW5nZWQgdG8gaG9sZCBhIHJlZmVy
ZW5jZSB0aGVuIHRoYXQgY2FuJ3QgYmUgdHJ1ZQ0KYW55bW9yZSBiZWNhdXNlIF9fZnB1dCB3aWxs
IG5ldmVyIGNhbGwgZXZlbnRwb2xsX3JlbGVhc2VfZmlsZSAodW50aWwNCkVQT0xMX0NUTF9ERUwp
LiBCdXQgaG93IGRvIHlvdSBjYWxsIEVQT0xMX0NUTF9ERUwgaWYgeW91J3ZlIGNsb3NlZCBhbGwN
CnlvdXIgcmVmZXJlbmNlcyB0byB0aGUgZmlsZSBpbiB1c2Vyc3BhY2U/IFNvIEkgdGhpbmsgZXBv
bGwgbmVlZHMgYQ0Kc2xpZ2h0bHkgbW9yZSBjb21wbGljYXRlZCBmaXguDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

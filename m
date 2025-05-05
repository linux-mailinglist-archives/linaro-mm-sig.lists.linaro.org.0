Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3432DAA907D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 12:00:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3094344B35
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 10:00:40 +0000 (UTC)
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	by lists.linaro.org (Postfix) with ESMTPS id 72A593E93A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 10:00:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=AMtIKBWN;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.42 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-606330df903so1115446eaf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 May 2025 03:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746439226; x=1747044026; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qUO+n2qCCkVBKkF0xc34yA7zFKP1PRXVjAuF6gNjM7w=;
        b=AMtIKBWNBCcnuc/XZy8ooV2/1B0PHy6d6L32sf/RT5FvR9X16HRPz17n6M4HMIHMRu
         VXCLVd1SLELYkkgVCE+Gz4LWfJm2kEd4STes8Nbta1mWInKwoSB0QEJLo7CDs0NhdOU6
         gcq2xihM1oS/tFOEMayfBRppCAdDsvX5S5fsL9a/2h4IPQ//6AzVT6cnhK+3O/CJjCFz
         CJQhdzTgWpVcC41wny1oKgLEZqJ1yWJtWrTuQep3AmJnaDRFoePWbeygj4dM9aou9eGQ
         bYPiHE7Hkv9dp8GdayPdowR8J54zp/tLNQ702fCMY6MDNuT0cmxqwvtSNRE58FCqhBY4
         1fHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746439226; x=1747044026;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qUO+n2qCCkVBKkF0xc34yA7zFKP1PRXVjAuF6gNjM7w=;
        b=FuGMdrG1sty2sb3n1kh6cXEQNHyi3WVEwuNcd54N6JJS7MpdE+qzHRetx99f6AxSAN
         PEJWANG/PQT1cM0hOUoj1iaUb3lp1zlXDC77Fbfkg+bKN0ASNOhR8WvsTPlVgP5wHVIz
         pHBrnSeFmFiwJa9HYLG4fz4sB2GY5yxTMTftK4HdLLXF11fXchoBaMkfQ2rrfb/zUnXx
         r+cyNs5Fw2rXn5PyXmHuli5fy+75i/vrr+b9rTZpPrNZmIg8qwsGteRDN8WlwK6bXn1p
         7fyIUG17faYY/YqTRY7f56uUQxqVxmuiKidBR0XPE2bVOr8Bm82J7KXjOXsuF5wD6BbH
         ltwA==
X-Forwarded-Encrypted: i=1; AJvYcCUkN6Z2/kUaU/Ua+Fi+IUg3R1gGYJvQKhbAArIfjZZ5UZX3r5gPwTLnanunrstzvx55QvhnELb7N37Xjm2F@lists.linaro.org
X-Gm-Message-State: AOJu0YxdaPD8f5kevXmfwjl5xprfzCmEWW64FUZ5Tlxg+BO0VhwvcphZ
	23aiQxhnnR8l9tBtnnr8arMJcsFamFlN3NFesvDlBGxXptyYEAlajMNHPaLs5mhJketjMtN5FIJ
	XPIrNQbsbwVSxXsTimwUZn7ZHACv58VXcsNxLv8bV
X-Gm-Gg: ASbGncsQ7KBdgFRwVjN5s7wcVQnFRMe2kvidNdiKHooE07IvtXvGOwMDXANx6vdEQEf
	yVY7hlHi3fBtAjPl8WvdgBwck17+ClQaurPnxLjy8lYE1qMvtCQF90r+TfInampGmZ5lr3or4JK
	vpa6p12ZZZ8soG5DdHVV5zvWA=
X-Google-Smtp-Source: AGHT+IEfTkbjK5JWEDIXSUVf0w92h26obU5oYSgxTn7TbvfY+I0Zkozng+KfK0iBSmGp52i/r+Q8MQct9dxWARB5Up4=
X-Received: by 2002:a05:6870:972c:b0:2d5:230f:b34d with SMTP id
 586e51a60fabf-2dae82cc070mr3868126fac.1.1746439225695; Mon, 05 May 2025
 03:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20250502100049.1746335-1-jens.wiklander@linaro.org>
 <20250502100049.1746335-11-jens.wiklander@linaro.org> <43e85d6a-ef99-4d61-910e-1d62814fd9ed@arm.com>
In-Reply-To: <43e85d6a-ef99-4d61-910e-1d62814fd9ed@arm.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Mon, 5 May 2025 12:00:12 +0200
X-Gm-Features: ATxdqUFPin2MFa6t0S3tPjOQfIF3WcjTWu_QNb2z1h_FFrZyFMNu2bu0GEdtH9Y
Message-ID: <CAHUa44GC-HRUNGkta-EfMD00VzPBvqcVqU4Zj7kvW8CPnahdMg@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 72A593E93A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.42:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,samsung.com,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 4545CBF3LNKIS4PTNG2P4BBIMREZXA2H
X-Message-ID-Hash: 4545CBF3LNKIS4PTNG2P4BBIMREZXA2H
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 10/14] dma-contiguous: export dma_contiguous_default_area
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4545CBF3LNKIS4PTNG2P4BBIMREZXA2H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgMzoxMeKAr1BNIFJvYmluIE11cnBoeSA8cm9i
aW4ubXVycGh5QGFybS5jb20+IHdyb3RlOg0KPg0KPiBPbiAwMi8wNS8yMDI1IDEwOjU5IGFtLCBK
ZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBFeHBvcnQgdGhlIGdsb2JhbCB2YXJpYWJsZSBkbWFf
Y29udGlndW91c19kZWZhdWx0X2FyZWEgc28NCj4gPiBkZXZfZ2V0X2NtYV9hcmVhKCkgY2FuIGJl
IGNhbGxlZCBhIG1vZHVsZS4NCj4NCj4gV2hhdCBkbWFfbWFwX29wcyBpbXBsZW1lbnRhdGlvbiBp
cyBpbiBhIG1vZHVsZT8gV2l0aG91dCBhbnkgb3RoZXINCj4gY29udGV4dCwgSSBjYW4ndCBoZWxw
IHRoaW5raW5nIHRoaXMgc21lbGxzIG9mIHNvbWV0aGluZyBza2V0Y2h5Lg0KDQpJIHNlZSB0aGF0
IHlvdSBmb3VuZCB0aGUgcmVzdCBvZiB0aGUgcGF0Y2ggc2V0DQpodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzIwMjUwNTAyMTAwMDQ5LjE3NDYzMzUtMS1qZW5zLndpa2xhbmRlckBsaW5hcm8u
b3JnLw0KDQpUaGFua3MsDQpKZW5zDQoNCg0KPg0KPiBUaGFua3MsDQo+IFJvYmluLg0KPg0KPiA+
IENjOiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+DQo+ID4gQ2M6
IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+DQo+ID4gQ2M6IGlvbW11QGxpc3Rz
LmxpbnV4LmRldg0KPiA+IFNpZ25lZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xh
bmRlckBsaW5hcm8ub3JnPg0KPiA+IC0tLQ0KPiA+ICAga2VybmVsL2RtYS9jb250aWd1b3VzLmMg
fCAxICsNCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2tlcm5lbC9kbWEvY29udGlndW91cy5jIGIva2VybmVsL2RtYS9jb250aWd1b3Vz
LmMNCj4gPiBpbmRleCA4ZGYwZGZhYWNhMTguLmViMzYxNzk0YTljNSAxMDA2NDQNCj4gPiAtLS0g
YS9rZXJuZWwvZG1hL2NvbnRpZ3VvdXMuYw0KPiA+ICsrKyBiL2tlcm5lbC9kbWEvY29udGlndW91
cy5jDQo+ID4gQEAgLTUzLDYgKzUzLDcgQEANCj4gPiAgICNlbmRpZg0KPiA+DQo+ID4gICBzdHJ1
Y3QgY21hICpkbWFfY29udGlndW91c19kZWZhdWx0X2FyZWE7DQo+ID4gK0VYUE9SVF9TWU1CT0wo
ZG1hX2NvbnRpZ3VvdXNfZGVmYXVsdF9hcmVhKTsNCj4gPg0KPiA+ICAgLyoNCj4gPiAgICAqIERl
ZmF1bHQgZ2xvYmFsIENNQSBhcmVhIHNpemUgY2FuIGJlIGRlZmluZWQgaW4ga2VybmVsJ3MgLmNv
bmZpZy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=

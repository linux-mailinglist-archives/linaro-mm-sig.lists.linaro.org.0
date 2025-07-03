Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4725AF6B2E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 09:13:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 05E5442540
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Jul 2025 07:13:53 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by lists.linaro.org (Postfix) with ESMTPS id 2E8BE413D9
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Jul 2025 07:13:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=Qxc8auJJ;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.50 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-610d87553b6so3089143eaf.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 03 Jul 2025 00:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751526820; x=1752131620; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3dr0G0HPuVKXln/Mnb/5UY0SQE5MginO3Nb336jQ6YM=;
        b=Qxc8auJJjwm5S5XwBaGFkpfkrjm5AFdbVsLAW3Q/iz8p5jbS3oBJS1JymTSQgF0uE3
         UQbP6Zr/UOczs+BW5JJN5Sa4dENZduD1AMfptO5IRA5lRVrGAiaimJ1itbSdvZ5tSVZK
         KOzGwZp/D2ia43+dAN66eag1j0F/XW+T97vmp1pm1oh5pzhtePOqOU7/uzuDc8AYnC7R
         pMKUHufznqkM2iD6mY1BsAtZ37kZHf99YdUQ81ZgSEu8AHXNM7bSYvQLEEbGjLJFCJJw
         NaVaUt3bhhQfJG9uV4AQ4PThDlK5FabAug1UpdWd0t8L+MypgCV1N/pSzfdX4jABCGV7
         rqQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751526820; x=1752131620;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3dr0G0HPuVKXln/Mnb/5UY0SQE5MginO3Nb336jQ6YM=;
        b=A4Aj9S/SD2L6dp58kI20ImtJqSju9hy8nPR4hN3xz9zEagCAUjQFnzvaY1hBFgXQXC
         Q0HEBa53xUt4ILqjkRC2DV9BdueGU9uGui2EJmlyOW8KZcLpSFktKVcDsCqe4ligBuRi
         JoU4KyvbA/+WGZl9bSWmnembxmfsT10DGYv9Cf4w8GUEIDB4HZaicZtJzeVGiJYirQhs
         BnyWhJwOD7PUqNnxpEhAUP8nvVfbVPRNlIu37ya0X4FkxfzDUIG4NqlrAfWx/wggelBC
         9AzgmkwB8LPi0Mo3uqqjOS5GLbenMY/1F7KvrQEgCSAXFEMUjgFqvl/3NKoMoughCfcz
         OfYg==
X-Forwarded-Encrypted: i=1; AJvYcCVK6VuBj73U/uc9nD1KA5Q39zmhwbr1LmZ8hje+U3s+7hxdBwvWIyCqDI99X3oZauX/C5mvhlseS9780wtM@lists.linaro.org
X-Gm-Message-State: AOJu0Yy8ZmbVb4vEGRvASNvJ1dmC3v3nuwTpso1iWVWYV9Jo+zPLxQ3g
	6L6+Q1Dt4d6jQt9gN6lAxu/pyx0j98dbAA845M/VsvUDQauI3hc/FQCupZ51a6kB5DaPGe8aFmc
	cUoHq520xBPxHpI+rTb6ktk0AvniY9pC39k3MAiDtQvJ1
X-Gm-Gg: ASbGncui6ts0Eq7w5ZYy1FefaCzv3CKVy2lZuRZ4IWQKV3FhOQr7J19k2Rgqna1cnhR
	9M3kIt/aeYRFgd6U+KHsQF/VtEnFrfvnQU5TP1vMWWdzR0sfizgVWZoyqRDgyIimR/HHvFsst5V
	jFmK0PctXPT1EkHpQSg3Qiow4T48908VVwAwuAJqDL3A3V
X-Google-Smtp-Source: AGHT+IGzumX+zMN3Zsc0frMnoZjTbrKq52LE81xJcdL6f0gu7EmyIA9p7bwSTX/LNs7SEM2NnBBBJP0kpnIk//vZz6Q=
X-Received: by 2002:a05:6820:198d:b0:611:e30a:fa1c with SMTP id
 006d021491bc7-61200f7034bmr3538676eaf.1.1751526820429; Thu, 03 Jul 2025
 00:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <20250610131600.2972232-1-jens.wiklander@linaro.org>
 <20250610131600.2972232-7-jens.wiklander@linaro.org> <aFFSWDiVsxA1CbCX@sumit-X1>
 <CAHUa44HP5EbURyLCmawMLc0d5jz1oTQZ53V1w2h0-ngUC2hbEw@mail.gmail.com> <aGYi8QkgI3WyeN59@sumit-X1>
In-Reply-To: <aGYi8QkgI3WyeN59@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 3 Jul 2025 09:13:28 +0200
X-Gm-Features: Ac12FXzyoTs9Jn3XWoE-_WRgcRKkI1fV8anRZvH7Atzw9NHwCMp1fhg-J6G_50I
Message-ID: <CAHUa44EMtaSw9uMz5WNSMXSfYXwQ-1TwFjd=R1ZfCo02ir2cjw@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E8BE413D9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.50:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,mail-oo1-f50.google.com:rdns,mail-oo1-f50.google.com:helo,linaro.org:dkim,linaro.org:email];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: DQCVYGCJAV4U2W2FLZAJCN7BN7QF6A37
X-Message-ID-Hash: DQCVYGCJAV4U2W2FLZAJCN7BN7QF6A37
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 6/9] tee: add tee_shm_alloc_dma_mem()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DQCVYGCJAV4U2W2FLZAJCN7BN7QF6A37/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKdWwgMywgMjAyNSBhdCA4OjI44oCvQU0gU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Br
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gT24gV2VkLCBKdW4gMTgsIDIwMjUgYXQgMDk6MDM6MDBB
TSArMDIwMCwgSmVucyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gT24gVHVlLCBKdW4gMTcsIDIwMjUg
YXQgMTozMuKAr1BNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9yZz4gd3JvdGU6DQo+
ID4gPg0KPiA+ID4gT24gVHVlLCBKdW4gMTAsIDIwMjUgYXQgMDM6MTM6NTBQTSArMDIwMCwgSmVu
cyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gPiA+IEFkZCB0ZWVfc2htX2FsbG9jX2RtYV9tZW0oKSB0
byBhbGxvY2F0ZSBETUEgbWVtb3J5LiBUaGUgbWVtb3J5IGlzDQo+ID4gPiA+IHJlcHJlc2VudGVk
IGJ5IGEgdGVlX3NobSBvYmplY3QgdXNpbmcgdGhlIG5ldyBmbGFnIFRFRV9TSE1fRE1BX01FTSB0
bw0KPiA+ID4gPiBpZGVudGlmeSBpdCBhcyBETUEgbWVtb3J5LiBUaGUgYWxsb2NhdGVkIG1lbW9y
eSB3aWxsIGxhdGVyIGJlIGxlbnQgdG8NCj4gPiA+ID4gdGhlIFRFRSB0byBiZSB1c2VkIGFzIHBy
b3RlY3RlZCBtZW1vcnkuDQo+ID4gPiA+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEplbnMgV2lr
bGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4g
IGRyaXZlcnMvdGVlL3RlZV9zaG0uYyAgICB8IDg1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKy0NCj4gPiA+ID4gIGluY2x1ZGUvbGludXgvdGVlX2NvcmUuaCB8ICA1ICsr
Kw0KPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA4OCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiA+ID4gPg0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90ZWUvdGVlX3NobS5j
IGIvZHJpdmVycy90ZWUvdGVlX3NobS5jDQo+ID4gPiA+IGluZGV4IGU2MzA5NWU4NDY0NC4uNjBi
MGYzOTMyY2VlIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3RlZS90ZWVfc2htLmMNCj4g
PiA+ID4gKysrIGIvZHJpdmVycy90ZWUvdGVlX3NobS5jDQo+ID4gPiA+IEBAIC01LDYgKzUsOCBA
QA0KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2Fub25faW5vZGVzLmg+DQo+ID4gPiA+ICAjaW5j
bHVkZSA8bGludXgvZGV2aWNlLmg+DQo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgvZG1hLWJ1Zi5o
Pg0KPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXBwaW5nLmg+DQo+ID4gPiA+ICsjaW5j
bHVkZSA8bGludXgvaGlnaG1lbS5oPg0KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2lkci5oPg0K
PiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+DQo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgv
bW0uaD4NCj4gPiA+ID4gQEAgLTEzLDkgKzE1LDE0IEBADQo+ID4gPiA+ICAjaW5jbHVkZSA8bGlu
dXgvdGVlX2NvcmUuaD4NCj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC91YWNjZXNzLmg+DQo+ID4g
PiA+ICAjaW5jbHVkZSA8bGludXgvdWlvLmg+DQo+ID4gPiA+IC0jaW5jbHVkZSA8bGludXgvaGln
aG1lbS5oPg0KPiA+ID4gPiAgI2luY2x1ZGUgInRlZV9wcml2YXRlLmgiDQo+ID4gPiA+DQo+ID4g
PiA+ICtzdHJ1Y3QgdGVlX3NobV9kbWFfbWVtIHsNCj4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9z
aG0gc2htOw0KPiA+ID4gPiArICAgICBkbWFfYWRkcl90IGRtYV9hZGRyOw0KPiA+ID4gPiArICAg
ICBzdHJ1Y3QgcGFnZSAqcGFnZTsNCj4gPiA+ID4gK307DQo+ID4gPiA+ICsNCj4gPiA+ID4gIHN0
YXRpYyB2b2lkIHNobV9wdXRfa2VybmVsX3BhZ2VzKHN0cnVjdCBwYWdlICoqcGFnZXMsIHNpemVf
dCBwYWdlX2NvdW50KQ0KPiA+ID4gPiAgew0KPiA+ID4gPiAgICAgICBzaXplX3QgbjsNCj4gPiA+
ID4gQEAgLTQ4LDcgKzU1LDE2IEBAIHN0YXRpYyB2b2lkIHRlZV9zaG1fcmVsZWFzZShzdHJ1Y3Qg
dGVlX2RldmljZSAqdGVlZGV2LCBzdHJ1Y3QgdGVlX3NobSAqc2htKQ0KPiA+ID4gPiAgew0KPiA+
ID4gPiAgICAgICB2b2lkICpwID0gc2htOw0KPiA+ID4gPg0KPiA+ID4gPiAtICAgICBpZiAoc2ht
LT5mbGFncyAmIFRFRV9TSE1fRE1BX0JVRikgew0KPiA+ID4gPiArICAgICBpZiAoc2htLT5mbGFn
cyAmIFRFRV9TSE1fRE1BX01FTSkgew0KPiA+ID4gPiArI2lmIElTX0VOQUJMRUQoQ09ORklHX1RF
RV9ETUFCVUZfSEVBUFMpDQo+ID4gPg0KPiA+ID4gbml0OiB0aGlzIGNvbmZpZyBjaGVjayBjYW4g
YmUgbWVyZ2VkIGludG8gdGhlIGFib3ZlIGlmIGNoZWNrLg0KPiA+DQo+ID4gTm8sIGJlY2F1c2Ug
ZG1hX2ZyZWVfcGFnZXMoKSBpcyBvbmx5IGRlZmluZWQgaWYNCj4gPiBDT05GSUdfVEVFX0RNQUJV
Rl9IRUFQUyBpcyBlbmFibGVkLg0KPg0KPiBJdCBsb29rcyBsaWtlIHlvdSBtaXN1bmRlcnN0b29k
IG15IGFib3ZlIGNvbW1lbnQsIEkgcmF0aGVyIG1lYW50Og0KPg0KPiAgICAgICAgIGlmIChJU19F
TkFCTEVEKENPTkZJR19URUVfRE1BQlVGX0hFQVBTKSAmJg0KPiAgICAgICAgICAgICAoc2htLT5m
bGFncyAmIFRFRV9TSE1fRE1BX01FTSkpDQoNClRoYXQgZGVwZW5kcyBvbiB0aGUgY29tcGlsZXIg
b3B0aW1pemluZyBhd2F5IHRoZSBjYWxsIHRvDQpkbWFfZnJlZV9wYWdlcygpIGlmIENPTkZJR19U
RUVfRE1BQlVGX0hFQVBTIGlzbid0IGRlZmluZWQuIFRoaXMgaXMNCm5vcm1hbGx5IHRoZSBjYXNl
LCBidXQgaWYgeW91IGNvbXBpbGUgZm9yIGRlYnVnZ2luZywgeW91IG1heSBnZXQNCnVucmVzb2x2
ZWQgc3ltYm9scy4NCg0KQ2hlZXJzLA0KSmVucw0KDQo+DQo+IC1TdW1pdA0KPg0KPiA+DQo+ID4g
Pg0KPiA+ID4gPiArICAgICAgICAgICAgIHN0cnVjdCB0ZWVfc2htX2RtYV9tZW0gKmRtYV9tZW07
DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyAgICAgICAgICAgICBkbWFfbWVtID0gY29udGFpbmVyX29m
KHNobSwgc3RydWN0IHRlZV9zaG1fZG1hX21lbSwgc2htKTsNCj4gPiA+ID4gKyAgICAgICAgICAg
ICBwID0gZG1hX21lbTsNCj4gPiA+ID4gKyAgICAgICAgICAgICBkbWFfZnJlZV9wYWdlcygmdGVl
ZGV2LT5kZXYsIHNobS0+c2l6ZSwgZG1hX21lbS0+cGFnZSwNCj4gPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkbWFfbWVtLT5kbWFfYWRkciwgRE1BX0JJRElSRUNUSU9OQUwpOw0K
PiA+ID4gPiArI2VuZGlmDQo+ID4gPiA+ICsgICAgIH0gZWxzZSBpZiAoc2htLT5mbGFncyAmIFRF
RV9TSE1fRE1BX0JVRikgew0KPiA+ID4NCj4gPiA+IERvIHdlIG5lZWQgYSBzaW1pbGFyIGNvbmZp
ZyBjaGVjayBmb3IgdGhpcyBmbGFnIHRvbz8NCj4gPg0KPiA+IE5vLCBiZWNhdXNlIERNQV9TSEFS
RURfQlVGRkVSIGlzIHNlbGVjdGVkLCBzbyB0aGUgZG1hX2J1ZiBmdW5jdGlvbnMgYXJlIGRlZmlu
ZWQuDQo+ID4NCj4gPiBDaGVlcnMsDQo+ID4gSmVucw0KPiA+DQo+ID4NCj4gPiA+DQo+ID4gPiBX
aXRoIHRoZXNlIGFkZHJlc3NlZCwgZmVlbCBmcmVlIHRvIGFkZDoNCj4gPiA+DQo+ID4gPiBSZXZp
ZXdlZC1ieTogU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Bvc3MucXVhbGNvbW0uY29tPg0KPiA+ID4N
Cj4gPiA+IC1TdW1pdA0KPiA+ID4NCj4gPiA+ID4gICAgICAgICAgICAgICBzdHJ1Y3QgdGVlX3No
bV9kbWFidWZfcmVmICpyZWY7DQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgICAgICAgICAgcmVmID0g
Y29udGFpbmVyX29mKHNobSwgc3RydWN0IHRlZV9zaG1fZG1hYnVmX3JlZiwgc2htKTsNCj4gPiA+
ID4gQEAgLTMwMyw2ICszMTksNzEgQEAgc3RydWN0IHRlZV9zaG0gKnRlZV9zaG1fYWxsb2NfcHJp
dl9idWYoc3RydWN0IHRlZV9jb250ZXh0ICpjdHgsIHNpemVfdCBzaXplKQ0KPiA+ID4gPiAgfQ0K
PiA+ID4gPiAgRVhQT1JUX1NZTUJPTF9HUEwodGVlX3NobV9hbGxvY19wcml2X2J1Zik7DQo+ID4g
PiA+DQo+ID4gPiA+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfVEVFX0RNQUJVRl9IRUFQUykNCj4g
PiA+ID4gKy8qKg0KPiA+ID4gPiArICogdGVlX3NobV9hbGxvY19kbWFfbWVtKCkgLSBBbGxvY2F0
ZSBETUEgbWVtb3J5IGFzIHNoYXJlZCBtZW1vcnkgb2JqZWN0DQo+ID4gPiA+ICsgKiBAY3R4OiAg
ICAgQ29udGV4dCB0aGF0IGFsbG9jYXRlcyB0aGUgc2hhcmVkIG1lbW9yeQ0KPiA+ID4gPiArICog
QHBhZ2VfY291bnQ6ICAgICAgTnVtYmVyIG9mIHBhZ2VzDQo+ID4gPiA+ICsgKg0KPiA+ID4gPiAr
ICogVGhlIGFsbG9jYXRlZCBtZW1vcnkgaXMgZXhwZWN0ZWQgdG8gYmUgbGVudCAobWFkZSBpbmFj
Y2Vzc2libGUgdG8gdGhlDQo+ID4gPiA+ICsgKiBrZXJuZWwpIHRvIHRoZSBURUUgd2hpbGUgaXQn
cyB1c2VkIGFuZCByZXR1cm5lZCAoYWNjZXNzaWJsZSB0byB0aGUNCj4gPiA+ID4gKyAqIGtlcm5l
bCBhZ2FpbikgYmVmb3JlIGl0J3MgZnJlZWQuDQo+ID4gPiA+ICsgKg0KPiA+ID4gPiArICogVGhp
cyBmdW5jdGlvbiBzaG91bGQgbm9ybWFsbHkgb25seSBiZSB1c2VkIGludGVybmFsbHkgaW4gdGhl
IFRFRQ0KPiA+ID4gPiArICogZHJpdmVycy4NCj4gPiA+ID4gKyAqDQo+ID4gPiA+ICsgKiBAcmV0
dXJucyBhIHBvaW50ZXIgdG8gJ3N0cnVjdCB0ZWVfc2htJw0KPiA+ID4gPiArICovDQo+ID4gPiA+
ICtzdHJ1Y3QgdGVlX3NobSAqdGVlX3NobV9hbGxvY19kbWFfbWVtKHN0cnVjdCB0ZWVfY29udGV4
dCAqY3R4LA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXpl
X3QgcGFnZV9jb3VudCkNCj4gPiA+ID4gK3sNCj4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9kZXZp
Y2UgKnRlZWRldiA9IGN0eC0+dGVlZGV2Ow0KPiA+ID4gPiArICAgICBzdHJ1Y3QgdGVlX3NobV9k
bWFfbWVtICpkbWFfbWVtOw0KPiA+ID4gPiArICAgICBkbWFfYWRkcl90IGRtYV9hZGRyOw0KPiA+
ID4gPiArICAgICBzdHJ1Y3QgcGFnZSAqcGFnZTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICBp
ZiAoIXRlZV9kZXZpY2VfZ2V0KHRlZWRldikpDQo+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyAgICAgcGFnZSA9IGRtYV9h
bGxvY19wYWdlcygmdGVlZGV2LT5kZXYsIHBhZ2VfY291bnQgKiBQQUdFX1NJWkUsDQo+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmRtYV9hZGRyLCBETUFfQklESVJFQ1RJT05B
TCwgR0ZQX0tFUk5FTCk7DQo+ID4gPiA+ICsgICAgIGlmICghcGFnZSkNCj4gPiA+ID4gKyAgICAg
ICAgICAgICBnb3RvIGVycl9wdXRfdGVlZGV2Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICsgICAgIGRt
YV9tZW0gPSBremFsbG9jKHNpemVvZigqZG1hX21lbSksIEdGUF9LRVJORUwpOw0KPiA+ID4gPiAr
ICAgICBpZiAoIWRtYV9tZW0pDQo+ID4gPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfZnJlZV9w
YWdlczsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICByZWZjb3VudF9zZXQoJmRtYV9tZW0tPnNo
bS5yZWZjb3VudCwgMSk7DQo+ID4gPiA+ICsgICAgIGRtYV9tZW0tPnNobS5jdHggPSBjdHg7DQo+
ID4gPiA+ICsgICAgIGRtYV9tZW0tPnNobS5wYWRkciA9IHBhZ2VfdG9fcGh5cyhwYWdlKTsNCj4g
PiA+ID4gKyAgICAgZG1hX21lbS0+ZG1hX2FkZHIgPSBkbWFfYWRkcjsNCj4gPiA+ID4gKyAgICAg
ZG1hX21lbS0+cGFnZSA9IHBhZ2U7DQo+ID4gPiA+ICsgICAgIGRtYV9tZW0tPnNobS5zaXplID0g
cGFnZV9jb3VudCAqIFBBR0VfU0laRTsNCj4gPiA+ID4gKyAgICAgZG1hX21lbS0+c2htLmZsYWdz
ID0gVEVFX1NITV9ETUFfTUVNOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsgICAgIHRlZWRldl9jdHhf
Z2V0KGN0eCk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyAgICAgcmV0dXJuICZkbWFfbWVtLT5zaG07
DQo+ID4gPiA+ICsNCj4gPiA+ID4gK2Vycl9mcmVlX3BhZ2VzOg0KPiA+ID4gPiArICAgICBkbWFf
ZnJlZV9wYWdlcygmdGVlZGV2LT5kZXYsIHBhZ2VfY291bnQgKiBQQUdFX1NJWkUsIHBhZ2UsIGRt
YV9hZGRyLA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICBETUFfQklESVJFQ1RJT05BTCk7
DQo+ID4gPiA+ICtlcnJfcHV0X3RlZWRldjoNCj4gPiA+ID4gKyAgICAgdGVlX2RldmljZV9wdXQo
dGVlZGV2KTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVN
KTsNCj4gPiA+ID4gK30NCj4gPiA+ID4gK0VYUE9SVF9TWU1CT0xfR1BMKHRlZV9zaG1fYWxsb2Nf
ZG1hX21lbSk7DQo+ID4gPiA+ICsjZWxzZQ0KPiA+ID4gPiArc3RydWN0IHRlZV9zaG0gKnRlZV9z
aG1fYWxsb2NfZG1hX21lbShzdHJ1Y3QgdGVlX2NvbnRleHQgKmN0eCwNCj4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IHBhZ2VfY291bnQpDQo+ID4gPiA+
ICt7DQo+ID4gPiA+ICsgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiA+ID4gPiArfQ0K
PiA+ID4gPiArRVhQT1JUX1NZTUJPTF9HUEwodGVlX3NobV9hbGxvY19kbWFfbWVtKTsNCj4gPiA+
ID4gKyNlbmRpZg0KPiA+ID4gPiArDQo+ID4gPiA+ICBpbnQgdGVlX2R5bl9zaG1fYWxsb2NfaGVs
cGVyKHN0cnVjdCB0ZWVfc2htICpzaG0sIHNpemVfdCBzaXplLCBzaXplX3QgYWxpZ24sDQo+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCAoKnNobV9yZWdpc3Rlcikoc3RydWN0
IHRlZV9jb250ZXh0ICpjdHgsDQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IHRlZV9zaG0gKnNobSwNCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvdGVlX2NvcmUuaCBiL2luY2x1ZGUvbGludXgvdGVlX2NvcmUuaA0K
PiA+ID4gPiBpbmRleCBmMTc3MTAxOTZjNGMuLmU0NmE1M2U3NTNhZiAxMDA2NDQNCj4gPiA+ID4g
LS0tIGEvaW5jbHVkZS9saW51eC90ZWVfY29yZS5oDQo+ID4gPiA+ICsrKyBiL2luY2x1ZGUvbGlu
dXgvdGVlX2NvcmUuaA0KPiA+ID4gPiBAQCAtMjksNiArMjksOCBAQA0KPiA+ID4gPiAgI2RlZmlu
ZSBURUVfU0hNX1BPT0wgICAgICAgICBCSVQoMikgIC8qIE1lbW9yeSBhbGxvY2F0ZWQgZnJvbSBw
b29sICovDQo+ID4gPiA+ICAjZGVmaW5lIFRFRV9TSE1fUFJJViAgICAgICAgIEJJVCgzKSAgLyog
TWVtb3J5IHByaXZhdGUgdG8gVEVFIGRyaXZlciAqLw0KPiA+ID4gPiAgI2RlZmluZSBURUVfU0hN
X0RNQV9CVUYgICAgICAgICAgICAgIEJJVCg0KSAgLyogTWVtb3J5IHdpdGggZG1hLWJ1ZiBoYW5k
bGUgKi8NCj4gPiA+ID4gKyNkZWZpbmUgVEVFX1NITV9ETUFfTUVNICAgICAgICAgICAgICBCSVQo
NSkgIC8qIE1lbW9yeSBhbGxvY2F0ZWQgd2l0aCAqLw0KPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC8qIGRtYV9hbGxvY19wYWdlcygpICovDQo+ID4gPiA+DQo+
ID4gPiA+ICAjZGVmaW5lIFRFRV9ERVZJQ0VfRkxBR19SRUdJU1RFUkVEICAgMHgxDQo+ID4gPiA+
ICAjZGVmaW5lIFRFRV9NQVhfREVWX05BTUVfTEVOICAgICAgICAgMzINCj4gPiA+ID4gQEAgLTMx
MCw2ICszMTIsOSBAQCB2b2lkICp0ZWVfZ2V0X2RydmRhdGEoc3RydWN0IHRlZV9kZXZpY2UgKnRl
ZWRldik7DQo+ID4gPiA+ICAgKi8NCj4gPiA+ID4gIHN0cnVjdCB0ZWVfc2htICp0ZWVfc2htX2Fs
bG9jX3ByaXZfYnVmKHN0cnVjdCB0ZWVfY29udGV4dCAqY3R4LCBzaXplX3Qgc2l6ZSk7DQo+ID4g
PiA+DQo+ID4gPiA+ICtzdHJ1Y3QgdGVlX3NobSAqdGVlX3NobV9hbGxvY19kbWFfbWVtKHN0cnVj
dCB0ZWVfY29udGV4dCAqY3R4LA0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzaXplX3QgcGFnZV9jb3VudCk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gIGludCB0ZWVf
ZHluX3NobV9hbGxvY19oZWxwZXIoc3RydWN0IHRlZV9zaG0gKnNobSwgc2l6ZV90IHNpemUsIHNp
emVfdCBhbGlnbiwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ICgqc2ht
X3JlZ2lzdGVyKShzdHJ1Y3QgdGVlX2NvbnRleHQgKmN0eCwNCj4gPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgdGVlX3NobSAqc2htLA0K
PiA+ID4gPiAtLQ0KPiA+ID4gPiAyLjQzLjANCj4gPiA+ID4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0t
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

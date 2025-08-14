Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E011B27303
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 Aug 2025 01:30:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7F8745D27
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 Aug 2025 23:30:54 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	by lists.linaro.org (Postfix) with ESMTPS id 5E97743C14
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Aug 2025 23:30:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=G7cciMO3;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.52 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-459fbca0c95so29625e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 Aug 2025 16:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1755214242; x=1755819042; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0JmiFdlp9ZkN1fxeZfgjKK4+EMYxMKsgyQh0URM5ec=;
        b=G7cciMO3td88SWtty0XT5lDx5QpL7nyjoRyJor/gY/Mv8ilwO2vrWuQ7QYA9aNxhgH
         LJWZp7mUHF7lUZ6qN4GpZ/NcMluwzILhOc3yB5lBEXaDT2ni/aaJKc4S/q3Q4ZiypIPO
         gQSfEuGoshnURJclwr5BuDQv/rb27rNFm1HtfCGuO0VzCmgBT4HbeER/A4i4Ng2N8Uv7
         bVo8Ev6Mw0mOxqN9iHaEz/z1jD1c7nvh9eZirhFPa4vMTogOBQS3bqDw7I+5AXb1/w7Y
         y3QJ6FKZpQ+mO5xwsnR8H8DBLX3hCh2X5osMDKkphqhgeR3l3YwZKIkYLDotX0oOlay4
         N6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755214242; x=1755819042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a0JmiFdlp9ZkN1fxeZfgjKK4+EMYxMKsgyQh0URM5ec=;
        b=CaqLn2PZczDDxR6O6uCW6n1vXLA/iRwYwpyidBaqqFoqUz8Qi5S0bcpKj73ZS1Ejai
         thIxpRQk+qs3JV7sMKCrKzHuCfxbEinRQ/g9pbjWox26pqOIU8Xwb9Mcx0IeEKZNQePb
         x+LdiY2zfURS+veAn3cGH5o94zMVWrKGPHVbdPD/NkayzLRvbwugXnSGCIKLAx9CsFI7
         se9PCddWW7CvB+g8Lk8wmtqySlrmt0U+wCe4+BTZ4pu6UC6FGtioMhoqG8RlcdSrkUJh
         wo8x9d8mN3QterTcLJ0W1ghJpDJLu181mPg8lm3/tyFxSX5Efb81GXSWCtgIJLuK2LfE
         UVwA==
X-Forwarded-Encrypted: i=1; AJvYcCUzz5GRwOb5mJXO0UQZH/AOUZGn5Jupa5GLDRMN5WgLV+KsEZdy8oLirHwE5qwSALMuDhdC2GRmSX1pqjDK@lists.linaro.org
X-Gm-Message-State: AOJu0Yy7CvzlL/m0bfhTwR0Y8bh1MLKeyKVivNPHWPymWKKDnDNsExSu
	jyNJAOzfAYzJLVb2i6OeAVvXoc+6ZoGuOskfymVPiu/sqgKblAyyeX9AzhFFTGddAZlRxGhnt9R
	KyacvPJ/qtQnzm1uupYK8Kvp/pxuyCKcAq71YvYTA
X-Gm-Gg: ASbGncubukLNYjwtzpFtIIthtFI1Jx6zzWUflIJoiPf+E5peph+/8CrHvoEj8VrZO5A
	rEVzu+feMvdcJqKa8U9CyG5rl1mQR4ORUl8t7/PMorseBztrreyWw5MOJlml1nmiVjEKqZNilnd
	fQmzsAWljCdXnXwvflONxOTc9bKVdCOGcE1z7KInpoT+pGX5dSL+OsDhaKGXIRIWiCz/syXjtBr
	h6Hz3htC6oCIfiOkwLczdJ9eKbJAXTJ60nf7fhPq0A=
X-Google-Smtp-Source: AGHT+IEEw+uzXS2i8WjnVSg7+M8YgE/PH0qtNvR3RZRshlFOrW4DkRzKM58Y1imbSzgGPptKIKq3mUjkWcuT38ZrZFk=
X-Received: by 2002:a05:600c:8909:b0:453:5ffb:e007 with SMTP id
 5b1f17b1804b1-45a20af818amr346105e9.4.1755214242237; Thu, 14 Aug 2025
 16:30:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250813060339.2977604-1-jens.wiklander@linaro.org>
 <20250813060339.2977604-3-jens.wiklander@linaro.org> <aJ1-YpgvGt4_6CFU@sumit-X1>
In-Reply-To: <aJ1-YpgvGt4_6CFU@sumit-X1>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 14 Aug 2025 16:30:30 -0700
X-Gm-Features: Ac12FXzYk8vQFwHlmYOx6GVXgELj4N91iOPnVrtkJq0EeS5aTQuf7I4LnzwBN-c
Message-ID: <CABdmKX2FPg+hO55qWndMajuWP0kZH=OWEh9v-d8aO6HQWyxJtQ@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.52:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5E97743C14
X-Spamd-Bar: --
Message-ID-Hash: ON5OTTKGYJZVP5FFLC4ZUBCRWBQBKBOX
X-Message-ID-Hash: ON5OTTKGYJZVP5FFLC4ZUBCRWBQBKBOX
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v11 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ON5OTTKGYJZVP5FFLC4ZUBCRWBQBKBOX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBdWcgMTMsIDIwMjUgYXQgMTE6MTPigK9QTSBTdW1pdCBHYXJnIDxzdW1pdC5nYXJn
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIEF1ZyAxMywgMjAyNSBhdCAwODowMjo1
MUFNICswMjAwLCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBFeHBvcnQgdGhlIGRtYS1idWYg
aGVhcCBmdW5jdGlvbnMgdG8gYWxsb3cgdGhlbSB0byBiZSB1c2VkIGJ5IHRoZSBPUC1URUUNCj4g
PiBkcml2ZXIuIFRoZSBPUC1URUUgZHJpdmVyIHdhbnRzIHRvIHJlZ2lzdGVyIGFuZCBtYW5hZ2Ug
c3BlY2lmaWMgc2VjdXJlDQo+ID4gRE1BIGhlYXBzIHdpdGggaXQuDQo+ID4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKZW5zIFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4NCj4gPiBS
ZXZpZXdlZC1ieTogU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0Bvc3MucXVhbGNvbW0uY29tPg0KPiA+
IC0tLQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyB8IDMgKysrDQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPg0KPg0KPiBDYW4gd2UgZ2V0IGFuIGFjayBm
cm9tIERNQWJ1ZiBtYWludGFpbmVycyBoZXJlPyBXaXRoIHRoYXQgd2Ugc2hvdWxkIGJlDQo+IGFi
bGUgdG8gcXVldWUgdGhpcyBwYXRjaC1zZXQgZm9yIGxpbnV4LW5leHQgdGFyZ2V0dGluZyB0aGUg
Ni4xOCBtZXJnZQ0KPiB3aW5kb3cuDQo+DQo+IC1TdW1pdA0KDQpSZXZpZXdlZC1ieTogVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCg0KU29ycnkgSSBoYXZlbid0IGJlZW4gYWJs
ZSB0byBwYXJ0aWNpcGF0ZSBtdWNoIHVwc3RyZWFtIGxhdGVseS4NCj4NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAu
Yw0KPiA+IGluZGV4IDNjYmU4N2Q0YTQ2NC4uY2RkZGYwZTI0ZGNlIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMNCj4gPiBAQCAtMjAyLDYgKzIwMiw3IEBAIHZvaWQgKmRtYV9oZWFwX2dldF9kcnZk
YXRhKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCj4gPiAgew0KPiA+ICAgICAgIHJldHVybiBoZWFw
LT5wcml2Ow0KPiA+ICB9DQo+ID4gK0VYUE9SVF9TWU1CT0woZG1hX2hlYXBfZ2V0X2RydmRhdGEp
Ow0KPiA+DQo+ID4gIC8qKg0KPiA+ICAgKiBkbWFfaGVhcF9nZXRfbmFtZSAtIGdldCBoZWFwIG5h
bWUNCj4gPiBAQCAtMjE0LDYgKzIxNSw3IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1l
KHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCj4gPiAgew0KPiA+ICAgICAgIHJldHVybiBoZWFwLT5u
YW1lOw0KPiA+ICB9DQo+ID4gK0VYUE9SVF9TWU1CT0woZG1hX2hlYXBfZ2V0X25hbWUpOw0KPiA+
DQo+ID4gIC8qKg0KPiA+ICAgKiBkbWFfaGVhcF9hZGQgLSBhZGRzIGEgaGVhcCB0byBkbWFidWYg
aGVhcHMNCj4gPiBAQCAtMzAzLDYgKzMwNSw3IEBAIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBf
YWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ID4gICAg
ICAga2ZyZWUoaGVhcCk7DQo+ID4gICAgICAgcmV0dXJuIGVycl9yZXQ7DQo+ID4gIH0NCj4gPiAr
RVhQT1JUX1NZTUJPTChkbWFfaGVhcF9hZGQpOw0KPiA+DQo+ID4gIHN0YXRpYyBjaGFyICpkbWFf
aGVhcF9kZXZub2RlKGNvbnN0IHN0cnVjdCBkZXZpY2UgKmRldiwgdW1vZGVfdCAqbW9kZSkNCj4g
PiAgew0KPiA+IC0tDQo+ID4gMi40My4wDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
